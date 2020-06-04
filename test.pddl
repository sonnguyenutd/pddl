(define (problem p5)
  (:domain rescue)

(:objects 
 Truck-11 Truck-12 Truck-13 Truck-14 - truck
 Robot-11 Robot-12 Robot-13 Robot-14 - robot
 Ambulance-11 Ambulance-12 Ambulance-13 Ambulance-14 - ambulance
)
(:init 
(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 4)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.1)
(= (transport-consumption-rate Truck-11) 2.3)
(= (fuel Truck-11) 46170)
(= (speed Truck-11) 20)

(= (loaded-seats Truck-12) 0)
(= (seats Truck-12) 3)
(is-at Truck-12 TRU)
(= (move-consumption-rate Truck-12) 1.7)
(= (transport-consumption-rate Truck-12) 2.0)
(= (fuel Truck-12) 48806)
(= (speed Truck-12) 10)

(= (loaded-seats Truck-13) 0)
(= (seats Truck-13) 4)
(is-at Truck-13 TRU)
(= (move-consumption-rate Truck-13) 1.1)
(= (transport-consumption-rate Truck-13) 1.9)
(= (fuel Truck-13) 37123)
(= (speed Truck-13) 12)

(= (loaded-seats Truck-14) 0)
(= (seats Truck-14) 2)
(is-at Truck-14 TRU)
(= (move-consumption-rate Truck-14) 1.1)
(= (transport-consumption-rate Truck-14) 2.4)
(= (fuel Truck-14) 48483)
(= (speed Truck-14) 18)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 607)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 620)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 511)
(is-available Robot-13)

(is-at Robot-14 ROB)
(= (fuel Robot-14) 795)
(is-available Robot-14)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 1)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.3)
(= (transport-consumption-rate Ambulance-11) 2.0)
(= (fuel Ambulance-11) 35841)
(= (speed Ambulance-11) 26)

(= (loaded-seats Ambulance-12) 0)
(= (seats Ambulance-12) 3)
(is-at Ambulance-12 HOS)
(= (move-consumption-rate Ambulance-12) 1.2)
(= (transport-consumption-rate Ambulance-12) 1.6)
(= (fuel Ambulance-12) 42053)
(= (speed Ambulance-12) 24)

(= (loaded-seats Ambulance-13) 0)
(= (seats Ambulance-13) 4)
(is-at Ambulance-13 HOS)
(= (move-consumption-rate Ambulance-13) 1.3)
(= (transport-consumption-rate Ambulance-13) 1.7)
(= (fuel Ambulance-13) 31773)
(= (speed Ambulance-13) 18)

(= (loaded-seats Ambulance-14) 0)
(= (seats Ambulance-14) 2)
(is-at Ambulance-14 HOS)
(= (move-consumption-rate Ambulance-14) 1.5)
(= (transport-consumption-rate Ambulance-14) 2.0)
(= (fuel Ambulance-14) 48302)
(= (speed Ambulance-14) 17)



    


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
