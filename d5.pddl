(define (domain rescue)
    (:requirements :typing :durative-actions :fluents :adl :timed-initial-literals)

    (:types location physthing - object
			staticthing machine - physthing
			vehicle robot - machine
			truck ambulance - vehicle
			debris victim - staticthing)
	
	
	(:predicates
	    (is-at ?x - physthing ?l - location)
        (is-reported ?v - victim)
        (is-on-vehicle ?x - physthing ?v - vehicle)
        (is-available ?m - machine)
	)
    
    (:functions
        (loaded-seats ?v - vehicle)
        (seats ?v - vehicle)
        (distance ?o1 - object ?o2 - object)
        (fuel ?m - machine)
        (speed ?m - machine)
        (consumption-rate ?m - machine)
        (size ?d - debris)
        (cleaning-p ?r - robot)
   		(total-fuel-used)
    )

	(:durative-action move
        :parameters 
            (?v - vehicle
             ?from ?to - location)
        
        :duration (= ?duration (/ (distance ?from ?to) (speed ?v)))
        
        :condition
	        (and 
                (at start (is-available ?v)) 
				(at start (is-at ?v ?from))
	        	(at start (< (loaded-seats ?v) 1)) 
				(over all (< (loaded-seats ?v) 1)) 
	        )
	            
        :effect
	        (and 
                (at start (not (is-available ?v)))
				(at start (not (is-at ?v ?from)))
	            (at end (is-at ?v ?to))
				(at start (decrease (fuel ?v) 
							(* (distance ?from ?to) (consumption-rate ?v))))
				(at end (increase (total-fuel-used) 
							(* (distance ?from ?to) (consumption-rate ?v))))

                (at end (is-available ?v))
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
                (at start (is-available ?truck))
                (at start (is-available ?robot))

	            (at start (is-at ?robot ?region))
	            (at start (is-at ?truck ?region)) 
	            (over all (is-at ?truck ?region))
	            (at start (> (seats ?truck) (loaded-seats ?truck)))
	        )
	            
        :effect
	        (and 
                (at start (not (is-available ?truck)))
                (at start (not (is-available ?robot)))

				(at start (increase (loaded-seats ?truck) 1))
	            (at start (is-on-vehicle ?robot ?truck))
                (at end (not (is-at ?robot ?region)))
	            (at start (decrease (fuel ?truck) 5))
	            (at end (increase (total-fuel-used) 5))

                (at end (is-available ?truck))
	        )
	)

	(:durative-action unload-robot
        :parameters 
            (
                ?truck - truck
                ?region - location
                ?robot - robot
            )
        
        :duration (= ?duration 3)
        
        :condition
	        (and 
                (at start (is-available ?truck))
	        	(at start (is-on-vehicle ?robot ?truck))
				(at start (> (loaded-seats ?truck) 0)) 
	            (at start (is-at ?truck ?region)) 
	        )
	            
        :effect
	        (and 
                (at start (not (is-available ?truck)))

	            (at start (decrease (loaded-seats ?truck) 1))
				(at start (not (is-on-vehicle ?robot ?truck)))
				
				(at end (is-at ?robot ?region))
				(at start (decrease (fuel ?truck) 10))
				(at end (increase (total-fuel-used) 10))

                (at end (is-available ?truck))
                (at end (is-available ?robot))
	        )
    )

	(:durative-action unload-victim
        :parameters 
            (
                ?ambulance - ambulance
             	?region - location
				?x - victim
            )
		:duration (= ?duration 15)
        :condition
	        (and 
                (at start (is-available ?ambulance))
	        	(at start (is-on-vehicle ?x ?ambulance))
	            (at start (is-at ?ambulance ?region))
	        )
	            
        :effect
	        (and 
                (at start (not (is-available ?ambulance)))

				(at start (decrease (loaded-seats ?ambulance) 1))
				(at start (not (is-on-vehicle ?x ?ambulance)))
	            (at end (is-at ?x ?region))
				
				(at start (decrease (fuel ?ambulance) 20))
				(at end (increase (total-fuel-used) 20))

                (at end (is-available ?ambulance))
	        )
    )

    (:durative-action transport
        :parameters 
            (?v - vehicle
             ?from ?to - location)
        
        :duration (= ?duration (/ (distance ?from ?to) (speed ?v)))
        
        :condition
	        (and 
                (at start (is-available ?v))
	        	(at start (> (loaded-seats ?v) 0))
				(over all (> (loaded-seats ?v) 0))
	            (at start (is-at ?v ?from)) 
	        )
	            
        :effect
	        (and 
                (at start (not (is-available ?v)))

	        	(at start (not (is-at ?v ?from)))
	            (at end (is-at ?v ?to))
				(at start (decrease (fuel ?v) 
							(* (distance ?from ?to) (consumption-rate ?v ))))
				(at end (increase (total-fuel-used) 
					(* (distance ?from ?to) (consumption-rate ?v))))

                (at end (is-available ?v))
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
                (at start (is-available ?ambulance))
				(at start (is-reported ?x))

                (at start (is-at ?x ?region))
	            (at start (is-at ?ambulance ?region)) 
	            (over all (is-at ?ambulance ?region))
				(at start (> (seats ?ambulance) (loaded-seats ?ambulance)))

	            (at start (> (fuel ?ambulance) 10))
	        )
	            
        :effect
	        (and 
                (at start (not (is-available ?ambulance)))
				(at start (increase (loaded-seats ?ambulance) 1))
				
                (at end (is-on-vehicle ?x ?ambulance))
				(at end (not (is-at ?x ?region)))
	            (at start (decrease (fuel ?ambulance) 10))
	            (at end (increase (total-fuel-used) 10))
                (at end (is-available ?ambulance))
	        )
	)

	(:durative-action remove-debris-step
        :parameters 
            (?d - debris
            ?robot - robot
            ?region - location)
        
        :duration (= ?duration (/ (size ?d) (cleaning-p ?robot)))
        
        :condition
	        (and
                (at start (is-available ?robot))
	        	(at start (is-at ?robot ?region))
                (at start (is-at ?d ?region))
                ;(at start (> (size ?d) 0))
                (over all (is-at ?robot ?region))
	            (at start (> (fuel ?robot) 5))
	        )
	            
        :effect
	        (and 
                (at start (not (is-available ?robot)))
	        	;(at start (decrease (size ?d) (cleaning-p ?robot)))  
                (assign (size ?d) 0)

	            (at start (decrease (fuel ?robot) (* (size ?d) (consumption-rate ?robot))))
	            (at end (increase (total-fuel-used) (* (size ?d) (consumption-rate ?robot))))

                (at end (is-available ?robot))
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
                (at start (not (is-reported ?v))) 
				(at start 
					(forall (?d - debris)
						(<= (size ?d) 0)
					)
				)
	        )
	            
        :effect
	        (and 
	            (at end (is-reported ?v))
	        )
	)
)
