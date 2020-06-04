(define (problem p5)
  (:domain rescue)


(:objects 
 Truck-11 Truck-12 Truck-13 Truck-14 - truck
 Robot-11 Robot-12 Robot-13 Robot-14 - robot
 Ambulance-11 Ambulance-12 Ambulance-13 Ambulance-14 - ambulance
)
(:init 
(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 3)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.4)
(= (transport-consumption-rate Truck-11) 2.3)
(= (fuel Truck-11) 48761)
(= (speed Truck-11) 54)

(= (loaded-seats Truck-12) 0)
(= (seats Truck-12) 2)
(is-at Truck-12 TRU)
(= (move-consumption-rate Truck-12) 1.2)
(= (transport-consumption-rate Truck-12) 2.3)
(= (fuel Truck-12) 40088)
(= (speed Truck-12) 52)

(= (loaded-seats Truck-13) 0)
(= (seats Truck-13) 3)
(is-at Truck-13 TRU)
(= (move-consumption-rate Truck-13) 1.7)
(= (transport-consumption-rate Truck-13) 2.0)
(= (fuel Truck-13) 44290)
(= (speed Truck-13) 51)

(= (loaded-seats Truck-14) 0)
(= (seats Truck-14) 4)
(is-at Truck-14 TRU)
(= (move-consumption-rate Truck-14) 1.4)
(= (transport-consumption-rate Truck-14) 1.8)
(= (fuel Truck-14) 41413)
(= (speed Truck-14) 45)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 883)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 996)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 693)
(is-available Robot-13)

(is-at Robot-14 ROB)
(= (fuel Robot-14) 995)
(is-available Robot-14)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 1)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.4)
(= (transport-consumption-rate Ambulance-11) 1.8)
(= (fuel Ambulance-11) 48620)
(= (speed Ambulance-11) 32)

(= (loaded-seats Ambulance-12) 0)
(= (seats Ambulance-12) 3)
(is-at Ambulance-12 HOS)
(= (move-consumption-rate Ambulance-12) 1.2)
(= (transport-consumption-rate Ambulance-12) 1.8)
(= (fuel Ambulance-12) 49291)
(= (speed Ambulance-12) 39)

(= (loaded-seats Ambulance-13) 0)
(= (seats Ambulance-13) 2)
(is-at Ambulance-13 HOS)
(= (move-consumption-rate Ambulance-13) 1.3)
(= (transport-consumption-rate Ambulance-13) 1.9)
(= (fuel Ambulance-13) 44434)
(= (speed Ambulance-13) 50)

(= (loaded-seats Ambulance-14) 0)
(= (seats Ambulance-14) 3)
(is-at Ambulance-14 HOS)
(= (move-consumption-rate Ambulance-14) 1.4)
(= (transport-consumption-rate Ambulance-14) 1.9)
(= (fuel Ambulance-14) 48282)
(= (speed Ambulance-14) 49)







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
        minimize (total-fuel-used)
        ;minimize (total-time)
  )
)
