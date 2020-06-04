(define (problem p5)
  (:domain rescue)
 (:objects 
 Truck-1 - truck
 Robot-1 Robot-2 - robot
 Ambulance-1 - ambulance
)
(:init 
(= (loaded-seats Truck-1) 0)
(= (seats Truck-1) 4)
(is-at Truck-1 TRU)
(= (move-consumption-rate Truck-1) 1.0)
(= (transport-consumption-rate Truck-1) 2.3)
(= (fuel Truck-1) 10000)
(= (speed Truck-1) 51)

(is-at Robot-1 ROB)
(= (fuel Robot-1) 542)
(is-available Robot-1)

(is-at Robot-2 ROB)
(= (fuel Robot-2) 694)
(is-available Robot-2)


(= (loaded-seats Ambulance-1) 0)
(= (seats Ambulance-1) 3)
(is-at Ambulance-1 HOS)
(= (move-consumption-rate Ambulance-1) 1.4)
(= (transport-consumption-rate Ambulance-1) 1.7)
(= (fuel Ambulance-1) 10000)
(= (speed Ambulance-1) 56)



    


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
