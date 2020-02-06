(define (domain rescue)
    (:requirements :typing :fluents)

    (:types location physthing - object
			staticthing machine - physthing
			vehicle robot - machine
			truck ambulance - vehicle
			debris victim - staticthing)
	
	
	(:predicates
	    (is-at ?x - physthing ?l - location)
        (is-reported ?v - victim)
        (is-on-vehicle ?x - physthing ?v - vehicle)
	)
    
    (:functions
        (loaded-seats ?v - vehicle)
        (seats ?v - vehicle)
        (distance ?o1 - object ?o2 - object)
        (moved-distance ?v - vehicle)
        (size ?d - debris)
        (cleaning-performance ?r - robot)
		(total-moved)
    )

	(:action move
        :parameters 
            (
                ?v - vehicle
                ?from ?to - location
            )
        
        :precondition
	        (and 
				(is-at ?v ?from)
	        	(< (loaded-seats ?v) 1) 
	        )
	            
        :effect
	        (and 
				(not (is-at ?v ?from))
	            (is-at ?v ?to)
				(increase (moved-distance ?v) (distance ?from ?to))
				(increase (total-moved) (distance ?from ?to))
	        )
	)
	     
    (:action load-robot
        :parameters 
            (?robot - robot
             ?truck - truck
             ?region - location)
        
        :precondition
	        (and 
	            (is-at ?robot ?region)
	            (is-at ?truck ?region)
	            (> (seats ?truck) (loaded-seats ?truck))
	        )
	            
        :effect
	        (and 
				(increase (loaded-seats ?truck) 1)
	            (is-on-vehicle ?robot ?truck)
                (not (is-at ?robot ?region))
	        )
	)

	(:action unload-robot
        :parameters 
            (
                ?truck - truck
                ?region - location
                ?robot - robot
            )
        
        :precondition
	        (and 
	        	(is-on-vehicle ?robot ?truck)
				(> (loaded-seats ?truck) 0)
	            (is-at ?truck ?region)
	        )
	            
        :effect
	        (and 
	            (decrease (loaded-seats ?truck) 1)
				(not (is-on-vehicle ?robot ?truck))
				(is-at ?robot ?region)
	        )
    )

	(:action unload-victim
        :parameters 
            (
                ?ambulance - ambulance
             	?region - location
				?x - victim
            )
        :precondition
	        (and 
	        	(is-on-vehicle ?x ?ambulance)
	            (is-at ?ambulance ?region)
	        )
	            
        :effect
	        (and 
				(decrease (loaded-seats ?ambulance) 1)
				(not (is-on-vehicle ?x ?ambulance))
	            (is-at ?x ?region)
	        )
    )

    (:action transport
        :parameters 
            (?v - vehicle
             ?from ?to - location)
        
        :precondition
	        (and 
	        	(> (loaded-seats ?v) 0)
	            (is-at ?v ?from) 
	        )
	            
        :effect
	        (and 
	        	(not (is-at ?v ?from))
	            (is-at ?v ?to)
				(increase (total-moved) (distance ?from ?to))
	        )
	)

	(:action load-victim
        :parameters 
            (
				?ambulance - ambulance
             	?region - location
				?x - victim
			)
        
        :precondition
	        (and
				(is-reported ?x)

                (is-at ?x ?region)
	            (is-at ?ambulance ?region)
	            (is-at ?ambulance ?region)
				(> (seats ?ambulance) (loaded-seats ?ambulance))
	        )
	            
        :effect
	        (and 
				(increase (loaded-seats ?ambulance) 1)
                (is-on-vehicle ?x ?ambulance)
				(not (is-at ?x ?region))
	        )
	)

	(:action remove-debris-step
        :parameters 
            (?d - debris
            ?robot - robot
            ?region - location)
        
        :precondition
	        (and
	        	(is-at ?robot ?region)
                (is-at ?d ?region)
                ;(at start (> (size ?d) 0))
	        )
	            
        :effect
	        (and 
	        	(decrease (size ?d) (cleaning-performance ?robot))
                (is-at ?robot ?region)
	        )
	)

	(:action report-victim
        :parameters 
            (?v - victim
            ?robot - robot
            ?region - location)
        
        :precondition (and
                (is-at ?robot ?region)
                (is-at ?v ?region)
                (not (is-reported ?v))
				
				
				(forall (?d - debris)
					(<= (size ?d) 0)
				)
			
	        )
	            
        :effect
	        (and 
	            (is-reported ?v)
	        )
	)
)
