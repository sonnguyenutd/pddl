(define (problem p5)
  (:domain rescue)


(:objects 
 Truck-11 Truck-12 Truck-13 Truck-14 Truck-15 Truck-16 Truck-17 Truck-18 - truck
 Robot-11 Robot-12 Robot-13 Robot-14 Robot-15 Robot-16 Robot-17 Robot-18 - robot
 Ambulance-11 Ambulance-12 Ambulance-13 Ambulance-14 Ambulance-15 Ambulance-16 Ambulance-17 Ambulance-18 - ambulance
)
(:init 
(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 2)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.1)
(= (transport-consumption-rate Truck-11) 1.8)
(= (fuel Truck-11) 49828)
(= (speed Truck-11) 41)

(= (loaded-seats Truck-12) 0)
(= (seats Truck-12) 2)
(is-at Truck-12 TRU)
(= (move-consumption-rate Truck-12) 1.4)
(= (transport-consumption-rate Truck-12) 2.4)
(= (fuel Truck-12) 43953)
(= (speed Truck-12) 52)

(= (loaded-seats Truck-13) 0)
(= (seats Truck-13) 2)
(is-at Truck-13 TRU)
(= (move-consumption-rate Truck-13) 1.1)
(= (transport-consumption-rate Truck-13) 2.5)
(= (fuel Truck-13) 34189)
(= (speed Truck-13) 43)

(= (loaded-seats Truck-14) 0)
(= (seats Truck-14) 5)
(is-at Truck-14 TRU)
(= (move-consumption-rate Truck-14) 1.8)
(= (transport-consumption-rate Truck-14) 2.1)
(= (fuel Truck-14) 43124)
(= (speed Truck-14) 45)

(= (loaded-seats Truck-15) 0)
(= (seats Truck-15) 2)
(is-at Truck-15 TRU)
(= (move-consumption-rate Truck-15) 1.5)
(= (transport-consumption-rate Truck-15) 1.8)
(= (fuel Truck-15) 41050)
(= (speed Truck-15) 45)

(= (loaded-seats Truck-16) 0)
(= (seats Truck-16) 4)
(is-at Truck-16 TRU)
(= (move-consumption-rate Truck-16) 1.3)
(= (transport-consumption-rate Truck-16) 2.2)
(= (fuel Truck-16) 35629)
(= (speed Truck-16) 47)

(= (loaded-seats Truck-17) 0)
(= (seats Truck-17) 4)
(is-at Truck-17 TRU)
(= (move-consumption-rate Truck-17) 1.4)
(= (transport-consumption-rate Truck-17) 2.3)
(= (fuel Truck-17) 36593)
(= (speed Truck-17) 60)

(= (loaded-seats Truck-18) 0)
(= (seats Truck-18) 2)
(is-at Truck-18 TRU)
(= (move-consumption-rate Truck-18) 1.5)
(= (transport-consumption-rate Truck-18) 2.0)
(= (fuel Truck-18) 39902)
(= (speed Truck-18) 45)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 778)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 847)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 761)
(is-available Robot-13)

(is-at Robot-14 ROB)
(= (fuel Robot-14) 900)
(is-available Robot-14)

(is-at Robot-15 ROB)
(= (fuel Robot-15) 505)
(is-available Robot-15)

(is-at Robot-16 ROB)
(= (fuel Robot-16) 682)
(is-available Robot-16)

(is-at Robot-17 ROB)
(= (fuel Robot-17) 932)
(is-available Robot-17)

(is-at Robot-18 ROB)
(= (fuel Robot-18) 795)
(is-available Robot-18)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 3)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.1)
(= (transport-consumption-rate Ambulance-11) 1.6)
(= (fuel Ambulance-11) 39749)
(= (speed Ambulance-11) 47)

(= (loaded-seats Ambulance-12) 0)
(= (seats Ambulance-12) 2)
(is-at Ambulance-12 HOS)
(= (move-consumption-rate Ambulance-12) 1.0)
(= (transport-consumption-rate Ambulance-12) 1.5)
(= (fuel Ambulance-12) 32776)
(= (speed Ambulance-12) 31)

(= (loaded-seats Ambulance-13) 0)
(= (seats Ambulance-13) 3)
(is-at Ambulance-13 HOS)
(= (move-consumption-rate Ambulance-13) 1.0)
(= (transport-consumption-rate Ambulance-13) 1.6)
(= (fuel Ambulance-13) 37771)
(= (speed Ambulance-13) 31)

(= (loaded-seats Ambulance-14) 0)
(= (seats Ambulance-14) 2)
(is-at Ambulance-14 HOS)
(= (move-consumption-rate Ambulance-14) 1.2)
(= (transport-consumption-rate Ambulance-14) 1.9)
(= (fuel Ambulance-14) 49687)
(= (speed Ambulance-14) 57)

(= (loaded-seats Ambulance-15) 0)
(= (seats Ambulance-15) 3)
(is-at Ambulance-15 HOS)
(= (move-consumption-rate Ambulance-15) 1.1)
(= (transport-consumption-rate Ambulance-15) 1.9)
(= (fuel Ambulance-15) 49379)
(= (speed Ambulance-15) 48)

(= (loaded-seats Ambulance-16) 0)
(= (seats Ambulance-16) 4)
(is-at Ambulance-16 HOS)
(= (move-consumption-rate Ambulance-16) 1.4)
(= (transport-consumption-rate Ambulance-16) 1.7)
(= (fuel Ambulance-16) 45375)
(= (speed Ambulance-16) 52)

(= (loaded-seats Ambulance-17) 0)
(= (seats Ambulance-17) 1)
(is-at Ambulance-17 HOS)
(= (move-consumption-rate Ambulance-17) 1.4)
(= (transport-consumption-rate Ambulance-17) 1.8)
(= (fuel Ambulance-17) 36877)
(= (speed Ambulance-17) 36)

(= (loaded-seats Ambulance-18) 0)
(= (seats Ambulance-18) 2)
(is-at Ambulance-18 HOS)
(= (move-consumption-rate Ambulance-18) 1.4)
(= (transport-consumption-rate Ambulance-18) 1.9)
(= (fuel Ambulance-18) 31650)
(= (speed Ambulance-18) 47)







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
