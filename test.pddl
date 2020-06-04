(define (problem p5)
  (:domain rescue)



(:objects 
 Truck-1 - truck
 Robot-1 Robot-2 Robot-3 - robot
 Ambulance-1 Ambulance-2 Ambulance-5 - ambulance
)
(:init 
(= (loaded-seats Truck-1) 0)
(= (seats Truck-1) 5)
(is-at Truck-1 TRU)
(= (move-consumption-rate Truck-1) 1.3)
(= (transport-consumption-rate Truck-1) 2.3)
(= (fuel Truck-1) 100000)
(= (speed Truck-1) 60)



(is-at Robot-1 ROB)
(= (fuel Robot-1) 773)
(is-available Robot-1)

(is-at Robot-2 ROB)
(= (fuel Robot-2) 752)
(is-available Robot-2)

(= (loaded-seats Ambulance-1) 0)
(= (seats Ambulance-1) 4)
(is-at Ambulance-1 HOS)
(= (move-consumption-rate Ambulance-1) 1.1)
(= (transport-consumption-rate Ambulance-1) 1.8)
(= (fuel Ambulance-1) 100000)
(= (speed Ambulance-1) 43)


(= (loaded-seats Ambulance-2) 0)
(= (seats Ambulance-2) 1)
(is-at Ambulance-2 HOS)
(= (move-consumption-rate Ambulance-2) 1.4)
(= (transport-consumption-rate Ambulance-2) 1.9)
(= (fuel Ambulance-2) 9200)
(= (speed Ambulance-2) 45)

(= (loaded-seats Ambulance-5) 0)
(= (seats Ambulance-5) 3)
(is-at Ambulance-5 HOS)
(= (move-consumption-rate Ambulance-5) 1.2)
(= (transport-consumption-rate Ambulance-5) 1.6)
(= (fuel Ambulance-5) 100000)
(= (speed Ambulance-5) 51)


    


    ;----------------------------------
    ;Map
    (= (distance TRU ROB) 100)
    (= (distance ROB TRU) 100)

    (= (distance ROB DR) 250)
    (= (distance DR ROB) 250)

    (= (distance DR HOS) 150)
    (= (distance HOS DR) 150)

    (= (distance TRU DR) 200)
    (= (distance DR TRU) 200)


    ;Victims
    (is-at v1 DR)
    (is-at v2 DR)
    (is-diff v1 v2)
    (is-diff v2 v1)
    
    ;Global metric
    (= (total-fuel-used) 0)
  )

  (:goal
    (and
      (forall (?v - victim) (is-at ?v HOS))
    )
  )
  
  (:metric 
        ;minimize (total-fuel-used)
        minimize (total-time)
  )
)
