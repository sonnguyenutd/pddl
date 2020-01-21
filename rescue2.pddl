(define (domain rescue)
    (:requirements :typing :durative-actions :fluents :adl :timed-initial-literals)

    (:types location physthing - object
			staticthing machine - physthing
			vehicle robot - machine
			truck ambulance - vehicle
			debris victim - staticthing)
	
	
	(:predicates
	    (is-at ?x - physthing ?l - location)
	    (is-available ?m - machine)
        (is-visible ?s - staticthing)                       
        (is-covered-by ?s1 - staticthing ?s2 - staticthing)
        (is-reported ?v - victim)
        (is-removed ?d - debris)
        (is-loaded ?v - vehicle)
        (is-on-vehicle ?x - physthing ?v - vehicle)
	)
    
    (:functions
        (loaded-seats ?v - vehicle)
        (seats ?v - vehicle)
		(num-cover ?x - staticthing)
        (distance ?o1 - object ?o2 - object)
        (fuel ?m - machine)
        (speed ?m - machine)
        (transport-consumption-rate ?v - vehicle)
        (moving-consumption-rate ?m - machine)
        (size ?d - debris)
        (cleaning-performance ?r - robot)
   		(total-fuel-used)
    )
	     
    (:durative-action load-robot
        :parameters 
            (?truck - truck
             ?region - location)
        :duration 
            (= ?duration 5)
        
        :condition
	        (and 
                (at start (not (is-loaded ?truck)))
                (at start (forall (?x - robot)
					(and (is-at ?x ?region))
                )
	            (at start (is-at ?truck ?region)) 
	            (over all (is-at ?truck ?region))
	            (at start (> (fuel ?truck) 5))
	        )
	            
        :effect
	        (and 
                (at start (is-loaded ?truck))
                (at end (forall (?x - robot)
					(and (is-on-vehicle ?x ?truck))
                )
	            (at start (decrease (fuel ?truck) 5))
	            (at end (increase (total-fuel-used) 5))
	        )
	)


    (:durative-action move
        :parameters 
            (?v - vehicle
             ?from ?to - location)
        
        :duration (= ?duration (/ (distance ?from ?to) (speed ?v)))
        
        :condition
	        (and 
	        	(at start (not (is-loaded ?v))) 
	            (at start (is-at ?v ?from)) 
	            (over all (not (is-loaded ?v))) 
	            ;; (at start (> (fuel ?v) (* #t (moving-consumption-rate ?v))))
	            ;; (at start (> (fuel ?v) (* (moving-consumption-rate ?v) (distance ?from ?to))))
	        )
	            
        :effect
	        (and 
                (at end (not (is-loaded ?v)))
				(at start (not (is-at ?v ?from)))
	            (at end (is-at ?v ?to))
				(at start (decrease (fuel ?v) 10))
				(at end (increase (total-fuel-used) 10))
	        )
	)


	(:durative-action transport-robot
        :parameters 
            (?v - vehicle
             ?from ?to - location)
        
        :duration (= ?duration (/ (distance ?from ?to) (speed ?v)))
        
        :condition
	        (and 
	        	(at start (is-loaded ?v))
	            (at start (is-at ?v ?from)) 
	            (over all (is-loaded ?v))
                (at start (forall (?x - robot)
					(and (is-on-vehicle ?x ?v))
                )
	        )
	            
        :effect
	        (and 
                (at end (is-loaded ?v))
	        	(at start (not (is-at ?v ?from)))
	            (at end (is-at ?v ?to))
				(at start (decrease (fuel ?v) 20))
				(at end (increase (total-fuel-used) 20))
	            (at end (forall (?x - robot)
					    (and (is-at ?x ?to) (not (is-at ?x ?from)))
				    )
                )

	        )
	)

    (:durative-action transport-victim
        :parameters 
            (?v - vehicle
             ?from ?to - location)
        
        :duration (= ?duration (/ (distance ?from ?to) (speed ?v)))
        
        :condition
	        (and 
	        	(at start (is-loaded ?v))
	            (at start (is-at ?v ?from)) 
	            (over all (is-loaded ?v))
                (at start (forall (?x - victim)
					(and (is-on-vehicle ?x ?v))
                )
	        )
	            
        :effect
	        (and 
                (at end (is-loaded ?v))
	        	(at start (not (is-at ?v ?from)))
	            (at end (is-at ?v ?to))
				(at start (decrease (fuel ?v) 50))
				(at end (increase (total-fuel-used) 50))
	            (at end (forall (?x - victim)
					    (and (is-at ?x ?to) (not (is-at ?x ?from)))
				    )
                )

	        )
	)



	(:durative-action load-victim
        :parameters 
            (?ambulance - ambulance
             ?region - location)
        
        :duration 
            (= ?duration 15)
        
        :condition
	        (and
	        	(at start (not (is-loaded ?ambulance)))
                (at start (forall (?x - victim)
					(and (is-at ?x ?region) (is-reported ?x))
                )
	            (at start (is-at ?ambulance ?region)) 
	            (over all (is-at ?ambulance ?region))
	            (at start (> (fuel ?ambulance) 10))
	        )
	            
        :effect
	        (and 
	            (at start (is-loaded ?ambulance))
                (at end (forall (?x - victim)
					(and (is-on-vehicle ?x ?ambulance))
                )
	            (at start (decrease (fuel ?ambulance) 10))
	            (at end (increase (total-fuel-used) 10))
	        )
	)


	(:durative-action remove-debris-step
        :parameters 
            (?d - debris
            ?robot - robot
            ?region - location)
        
        :duration 
            (= ?duration 10)
        
        :condition
	        (and
	        	(at start (is-at ?robot ?region))
                (at start (is-at ?d ?region))
                (at start (> (size ?d) 0))
				(over all (is-at ?robot ?region))
	            (at start (> (fuel ?robot) 5))
	        )
	            
        :effect
	        (and 
	        	(at start (decrease (size ?d) (cleaning-performance ?robot)))  
                (at end (is-at ?robot ?region))
	            (at start (decrease (fuel ?robot) 5))
	            (at end (increase (total-fuel-used) 5))
	        )
	)

	(:durative-action report-victim
        :parameters 
            (?v - victim
            ?robot - robot
            ?d - debris
            ?region - location)
        
        :duration 
            (= ?duration 2)
        
        :condition
	        (and
                (at start (is-at ?robot ?region))
                (at start (is-at ?d ?region))
                (at start (is-at ?v ?region))
                (at start (not (is-reported ?v))) 
                (at start (< (size ?d) 1))
	        )
	            
        :effect
	        (and 
	            (at end (is-reported ?v))
	        )
	)
)