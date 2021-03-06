(define (domain rescue)
    (:requirements :typing :durative-actions :fluents :adl :timed-initial-literals)

    (:types location physthing - object
			victim staticthing machine - physthing
			vehicle robot - machine
			truck ambulance - vehicle
            helicopter - ambulance
	)
	
	(:predicates
	    (is-at ?x - physthing ?l - location)
        (is-reported ?v - victim)
        (is-on-vehicle ?x - physthing ?v - vehicle)
	)
    
    (:functions
        (loaded-seats ?v - vehicle)
        (seats ?v - vehicle)
        (distance ?o1 - location ?o2 - location)
        (fuel ?m - machine)
        (weight ?v - physthing)
        (speed ?m - machine)
        (consumption-rate ?m - machine)
   		(total-fuel-used)
    )

	(:durative-action move
        :parameters 
            (?v - vehicle
             ?from ?to - location)
        :duration (= ?duration (/ (distance ?from ?to) (speed ?v)))
        :condition
	        (and 
				(at start (is-at ?v ?from))
	        	(at start (< (loaded-seats ?v) 1)) 
				(over all (< (loaded-seats ?v) 1))

                (at start (> (fuel ?v) 
							(*  (distance ?from ?to) 
                                (consumption-rate ?v))))
	        )
	            
        :effect
	        (and 
				(at start (not (is-at ?v ?from)))
	            (at end (is-at ?v ?to))
				(at start (decrease (fuel ?v) 
							(*  (distance ?from ?to) 
                                (consumption-rate ?v))))
				(at end (increase (total-fuel-used) 
							(*  (distance ?from ?to) 
                                (consumption-rate ?v))))
	        )
	)
	     
    (:durative-action load-robot
        :parameters 
            (?robot - robot
             ?truck - truck
             ?region - location)
        
        :duration 
            (= ?duration 5)
        
        :condition
	        (and 
	            (at start (is-at ?robot ?region))
	            (at start (is-at ?truck ?region)) 
	            (over all (is-at ?truck ?region))
	            (at start (> (seats ?truck) (loaded-seats ?truck)))

                (at start (> (fuel ?truck) 5))
	        )
	            
        :effect
	        (and 
				(at start (increase (loaded-seats ?truck) 1))
	            (at end (is-on-vehicle ?robot ?truck))
                (at start (not (is-at ?robot ?region)))

                (at start (decrease (fuel ?truck) 5))
	            (at end (increase (total-fuel-used) 5))
	        )
	)

    (:durative-action load-victim
        :parameters 
            (
				?ambulance - ambulance
             	?region - location
				?x - victim
			)
        
        :duration 
            (= ?duration 20)
        
        :condition
	        (and
				(at start (is-reported ?x))
                (at start (is-at ?x ?region))
	            (at start (is-at ?ambulance ?region))
	            (over all (is-at ?ambulance ?region))

				(at start (> (seats ?ambulance) (loaded-seats ?ambulance)))
	            (at start (> (fuel ?ambulance) 20))
	        )
	            
        :effect
	        (and 
				(at start (increase (loaded-seats ?ambulance) 1))
                (at end (is-on-vehicle ?x ?ambulance))
				(at start (not (is-at ?x ?region)))

	            (at start (decrease (fuel ?ambulance) 20))
	            (at end (increase (total-fuel-used) 20))
	        )
	)

	(:durative-action unload-robot
        :parameters 
            (
                ?truck - truck
                ?region - location
                ?robot - robot
            )
        
        :duration (= ?duration 10)
        
        :condition
	        (and 
				(at start (> (loaded-seats ?truck) 0)) 
                
                (at start (is-on-vehicle ?robot ?truck))
	            (at start (is-at ?truck ?region)) 
                (over all (is-at ?truck ?region)) 
                
                (at start (> (fuel ?truck) 10))
	        )
	            
        :effect
	        (and 
                (at end (decrease (loaded-seats ?truck) 1))
				
                (at start (not (is-on-vehicle ?robot ?truck)))
				(at end (is-at ?robot ?region))

				(at start (decrease (fuel ?truck) 10))
				(at end (increase (total-fuel-used) 10))
	        )
    )

	(:durative-action unload-victim
        :parameters 
            (
                ?ambulance - ambulance
             	?region - location
				?x - victim
            )
		:duration (= ?duration 30)
        :condition
	        (and 
                (at start (> (loaded-seats ?ambulance) 0)) 
                
	        	(at start (is-on-vehicle ?x ?ambulance))
	            (at start (is-at ?ambulance ?region))
                (over all (is-at ?ambulance ?region)) 

                (at start (> (fuel ?ambulance) 30))
	        )
	            
        :effect
	        (and 
				(at end (decrease (loaded-seats ?ambulance) 1))

				(at start (not (is-on-vehicle ?x ?ambulance)))
	            (at end (is-at ?x ?region))
				
				(at start (decrease (fuel ?ambulance) 30))
				(at end (increase (total-fuel-used) 30))
	        )
    )

    (:durative-action transport
        :parameters 
            (?v - vehicle
             ?from ?to - location)
        
        :duration (= ?duration (/ (distance ?from ?to) (speed ?v)))
        
        :condition
	        (and 
                (at start (is-at ?v ?from))
	        	(at start (> (loaded-seats ?v) 0)) 
				(over all (> (loaded-seats ?v) 0))

                (at start   (> (fuel ?v) 
							    (*  (*  (distance ?from ?to) 
                                        (consumption-rate ?v)
                                    ) 
                                    (+ 1 (/ (loaded-seats ?v) (seats ?v)))
                                )
                            )
                )
	        )
	            
        :effect
	        (and 
	        	(at start (not (is-at ?v ?from)))
	            (at end (is-at ?v ?to))


                (at start   (decrease (fuel ?v) 
							    (*  (*  (distance ?from ?to) 
                                        (consumption-rate ?v)
                                    ) 
                                    (+ 1 (/ (loaded-seats ?v) (seats ?v)))
                                )
                            )
                )

                (at end     (increase (total-fuel-used) 
							    (*  (*  (distance ?from ?to) 
                                        (consumption-rate ?v)
                                    ) 
                                    (+ 1 (/ (loaded-seats ?v) (seats ?v)))
                                )
                            )
                )
	        )
	)

	(:durative-action report-victim
        :parameters 
            (?v - victim
            ?robot - robot
            ?region - location)
        
        :duration 
            (= ?duration 2)
        
        :condition (and
                (at start (is-at ?robot ?region))
                (at start (is-at ?v ?region))
	        )
	            
        :effect
	        (and 
	            (at end (is-reported ?v))
	        )
	)
)