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
        ;; (is-visible ?s - staticthing)                       
        (is-covered-by ?s1 - staticthing ?s2 - staticthing)
        (is-reported ?v - victim)
        (is-closed-to ?r - robot ?d - debris)
        (is-removed ?d - debris)
        (is-in-vehicle ?x - physthing ?v - vehicle)
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
   		(total-fuel-used)
		
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
	            (at start (is-available ?truck)) 
	            (over all (is-at ?truck ?region))
	            (over all (not (is-available ?truck))) 
	            ;; (at start (> (fuel ?truck) 5))
	            (at start (> (seats ?truck) (loaded-seats ?truck)))
	        )
	            
        :effect
	        (and 
	            (at end (is-in-vehicle ?robot ?truck))
	            (at end (is-available ?truck)) 
	            (at start (decrease (fuel ?truck) 5))
	            (at start (increase (loaded-seats ?truck) 1))
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
	        	(at start (is-available ?v)) 
	            (at start (is-at ?v ?from)) 
	            (over all (not (is-available ?v))) 
	            ;; (at start (> (fuel ?v) (* #t (moving-consumption-rate ?v))))
	            ;; (at start (> (fuel ?v) (* (moving-consumption-rate ?v) (distance ?from ?to))))
	        )
	            
        :effect
	        (and 
	        	(at end (is-available ?v)) 
	            (at end (is-at ?v ?to))
	            ;; (at start (decrease (fuel ?v) (* #t (moving-consumption-rate ?v))))
	            ;; (at end (increase (total-fuel-used) (* #t (moving-consumption-rate ?v))))
				(at start (decrease (fuel ?v) 10))
				(at end (increase (total-fuel-used) 10))
	            ;; (at start (decrease (fuel ?v) (* (moving-consumption-rate ?v) (distance ?from ?to))))
	            ;; (increase (total-fuel-used) (* (moving-consumption-rate ?v) (distance ?from ?to)))
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
	            (at start (is-at ?v ?from)) 
	            (over all (not (is-available ?v)))
	            ;; (at start (> (fuel ?v) (* #t (transport-consumption-rate ?v))))
	            ;; (at start (> (fuel ?v) (* (transport-consumption-rate ?v) (distance ?from ?to))))
	        )
	            
        :effect
	        (and 
	        	(at end (is-available ?v)) 
	        	(at start (not (is-at ?v ?from)))
	            (at end (is-at ?v ?to))
	            
				;; (at start (decrease (fuel ?v) (* #t (transport-consumption-rate ?v))))
	            ;; (increase (total-fuel-used) (* #t (transport-consumption-rate ?v)))
	            
				(at start (decrease (fuel ?v) 20))
				(at end (increase (total-fuel-used) 20))
				
	            ;; (at start (decrease (fuel ?v) (* (transport-consumption-rate ?v) (distance ?from ?to))))
	            ;; (increase (total-fuel-used) (* (transport-consumption-rate ?v) (distance ?from ?to)))
	            
	            (at start (forall (?x - physthing)
					(when (and (is-in-vehicle ?x ?v))
						(and (not (is-at ?x ?from))))
				))
				
				;; (at end (forall (?x - object)
				;;	(when (and (is-in-vehicle ?x ?v))
				;;		(and (is-at ?x ?to)))
				;; ))

	        )
	)



	(:durative-action load-victim
        :parameters 
            (?victim - victim
             ?ambulance - ambulance
             ?region - location)
        
        :duration 
            (= ?duration 5)
        
        :condition
	        (and
	        	(at start (is-available ?ambulance))  
	        	(at start (is-reported ?victim))  
	            (at start (is-at ?victim ?region)) 
	            (at start (is-at ?ambulance ?region)) 
	            (over all (is-at ?ambulance ?region)) 
	            (over all (not (is-available ?ambulance)))
	            ;; (at start (> (fuel ?ambulance) 5))
	            (at start (> (seats ?ambulance) (loaded-seats ?ambulance)))
	        )
	            
        :effect
	        (and 
	        	(at end (is-available ?ambulance)) 
	            (at end (is-in-vehicle ?victim ?ambulance))
	            (at start (decrease (fuel ?ambulance) 5))
	            (at end (increase (total-fuel-used) 5))
	            (at start (increase (loaded-seats ?ambulance) 1))
	        )
	)


	(:durative-action remove-debris
        :parameters 
            (?d - debris
             ?robot - robot)
        
        :duration 
            (= ?duration 3)
        
        :condition
	        (and
	        	(at start (is-available ?robot))
	        	(at start (not (is-removed ?d))) 
	        	;; (at start (is-visible ?d))  
				(at start (< (num-cover ?d) 1)) 
	            (at start (is-closed-to ?robot ?d)) 
	            (over all (not (is-available ?robot)))
	            (at start (> (fuel ?robot) 3))
	        )
	            
        :effect
	        (and 
	        	(at end (is-available ?robot)) 
	        	(at start (is-removed ?d))  
	            (at start (decrease (fuel ?robot) 3))
	            (at end (increase (total-fuel-used) 3))

	            (at end (forall (?x - staticthing)
					(when (and (is-covered-by ?d ?x))
						(and (not (is-covered-by ?d ?x)) (decrease (num-cover ?x) 1)))
				))
	        )
	)


	(:durative-action move-to
        :parameters 
            (?d - debris
             ?robot - robot)
        
        :duration (= ?duration (/ (distance ?robot ?d) (speed ?robot)))
        
        :condition
	        (and 
	        	(at start (< (num-cover ?d) 1))  
	        	(at start (is-available ?robot)) 
	            (over all (not (is-available ?robot))) 
	            ;; (at start (> (fuel ?robot) (* #t (moving-consumption-rate ?robot))))
	        )
	            
        :effect
	        (and 
	        	(at end (is-available ?robot)) 
	            (at end (is-closed-to ?robot ?d))
	            ;;(at start (decrease (fuel ?robot) (* #t (moving-consumption-rate ?robot))))
	            ;;(increase (total-fuel-used) (* #t (moving-consumption-rate ?robot)))
				(at start (decrease (fuel ?robot) 5))
				(at end (increase (total-fuel-used) 5))
	            (at end (forall (?x - staticthing)
					 (and (assign (distance ?robot ?x) (distance ?d ?x)))
				))
	        )
	)

	

)