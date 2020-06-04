(define (problem p5)
  (:domain rescue)


(:objects 
 Truck-11 Truck-12 Truck-13 Truck-14 Truck-15 Truck-16 - truck
 Robot-11 Robot-12 Robot-13 Robot-14 Robot-15 Robot-16 - robot
 Ambulance-11 Ambulance-12 Ambulance-13 Ambulance-14 Ambulance-15 Ambulance-16 - ambulance
)
(:init 
(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 4)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.4)
(= (transport-consumption-rate Truck-11) 2.0)
(= (fuel Truck-11) 32962)
(= (speed Truck-11) 48)

(= (loaded-seats Truck-12) 0)
(= (seats Truck-12) 5)
(is-at Truck-12 TRU)
(= (move-consumption-rate Truck-12) 1.0)
(= (transport-consumption-rate Truck-12) 2.0)
(= (fuel Truck-12) 41308)
(= (speed Truck-12) 48)

(= (loaded-seats Truck-13) 0)
(= (seats Truck-13) 4)
(is-at Truck-13 TRU)
(= (move-consumption-rate Truck-13) 1.2)
(= (transport-consumption-rate Truck-13) 2.4)
(= (fuel Truck-13) 43990)
(= (speed Truck-13) 50)

(= (loaded-seats Truck-14) 0)
(= (seats Truck-14) 4)
(is-at Truck-14 TRU)
(= (move-consumption-rate Truck-14) 1.5)
(= (transport-consumption-rate Truck-14) 2.3)
(= (fuel Truck-14) 30186)
(= (speed Truck-14) 44)

(= (loaded-seats Truck-15) 0)
(= (seats Truck-15) 3)
(is-at Truck-15 TRU)
(= (move-consumption-rate Truck-15) 1.3)
(= (transport-consumption-rate Truck-15) 2.0)
(= (fuel Truck-15) 35301)
(= (speed Truck-15) 56)

(= (loaded-seats Truck-16) 0)
(= (seats Truck-16) 4)
(is-at Truck-16 TRU)
(= (move-consumption-rate Truck-16) 1.2)
(= (transport-consumption-rate Truck-16) 2.0)
(= (fuel Truck-16) 48335)
(= (speed Truck-16) 46)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 927)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 805)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 644)
(is-available Robot-13)

(is-at Robot-14 ROB)
(= (fuel Robot-14) 669)
(is-available Robot-14)

(is-at Robot-15 ROB)
(= (fuel Robot-15) 947)
(is-available Robot-15)

(is-at Robot-16 ROB)
(= (fuel Robot-16) 870)
(is-available Robot-16)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 1)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.2)
(= (transport-consumption-rate Ambulance-11) 1.8)
(= (fuel Ambulance-11) 35292)
(= (speed Ambulance-11) 58)

(= (loaded-seats Ambulance-12) 0)
(= (seats Ambulance-12) 3)
(is-at Ambulance-12 HOS)
(= (move-consumption-rate Ambulance-12) 1.3)
(= (transport-consumption-rate Ambulance-12) 1.8)
(= (fuel Ambulance-12) 36716)
(= (speed Ambulance-12) 55)

(= (loaded-seats Ambulance-13) 0)
(= (seats Ambulance-13) 2)
(is-at Ambulance-13 HOS)
(= (move-consumption-rate Ambulance-13) 1.3)
(= (transport-consumption-rate Ambulance-13) 1.8)
(= (fuel Ambulance-13) 33312)
(= (speed Ambulance-13) 42)

(= (loaded-seats Ambulance-14) 0)
(= (seats Ambulance-14) 1)
(is-at Ambulance-14 HOS)
(= (move-consumption-rate Ambulance-14) 1.0)
(= (transport-consumption-rate Ambulance-14) 1.8)
(= (fuel Ambulance-14) 33232)
(= (speed Ambulance-14) 60)

(= (loaded-seats Ambulance-15) 0)
(= (seats Ambulance-15) 4)
(is-at Ambulance-15 HOS)
(= (move-consumption-rate Ambulance-15) 1.0)
(= (transport-consumption-rate Ambulance-15) 1.8)
(= (fuel Ambulance-15) 35279)
(= (speed Ambulance-15) 58)

(= (loaded-seats Ambulance-16) 0)
(= (seats Ambulance-16) 1)
(is-at Ambulance-16 HOS)
(= (move-consumption-rate Ambulance-16) 1.1)
(= (transport-consumption-rate Ambulance-16) 1.6)
(= (fuel Ambulance-16) 49349)
(= (speed Ambulance-16) 49)







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
