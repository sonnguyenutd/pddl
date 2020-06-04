(define (problem p5)
  (:domain rescue)
  (:objects 
 Truck-1 Truck-2 Truck-3 Truck-4 Truck-5 Truck-6 - truck
 Helicopter-1 Helicopter-2 Helicopter-3 Helicopter-4 Helicopter-5 Helicopter-6 - helicopter
 Robot-1 Robot-2 Robot-3 Robot-4 Robot-5 Robot-6 - robot
 Ambulance-1 Ambulance-2 Ambulance-3 Ambulance-4 Ambulance-5 Ambulance-6 Ambulance-7 - ambulance
)
(:init 
(= (loaded-seats Truck-1) 0)
(= (seats Truck-1) 2)
(is-at Truck-1 TRU)
(= (move-consumption-rate Truck-1) 1.19)
(= (transport-consumption-rate Truck-1) 2.35)
(= (fuel Truck-1) 935)
(= (speed Truck-1) 40)

(= (loaded-seats Truck-2) 0)
(= (seats Truck-2) 4)
(is-at Truck-2 TRU)
(= (move-consumption-rate Truck-2) 1.45)
(= (transport-consumption-rate Truck-2) 2.07)
(= (fuel Truck-2) 962)
(= (speed Truck-2) 47)

(= (loaded-seats Truck-3) 0)
(= (seats Truck-3) 3)
(is-at Truck-3 TRU)
(= (move-consumption-rate Truck-3) 1.6)
(= (transport-consumption-rate Truck-3) 2.2)
(= (fuel Truck-3) 881)
(= (speed Truck-3) 45)

(= (loaded-seats Truck-4) 0)
(= (seats Truck-4) 2)
(is-at Truck-4 TRU)
(= (move-consumption-rate Truck-4) 1.19)
(= (transport-consumption-rate Truck-4) 2.42)
(= (fuel Truck-4) 685)
(= (speed Truck-4) 59)

(= (loaded-seats Truck-5) 0)
(= (seats Truck-5) 3)
(is-at Truck-5 DR)
(= (move-consumption-rate Truck-5) 1.58)
(= (transport-consumption-rate Truck-5) 1.88)
(= (fuel Truck-5) 781)
(= (speed Truck-5) 60)

(= (loaded-seats Truck-6) 0)
(= (seats Truck-6) 3)
(is-at Truck-6 DR)
(= (move-consumption-rate Truck-6) 1.18)
(= (transport-consumption-rate Truck-6) 2.03)
(= (fuel Truck-6) 997)
(= (speed Truck-6) 45)

(= (loaded-seats Helicopter-1) 0)
(= (seats Helicopter-1) 1)
(is-at Helicopter-1 ROB)
(= (move-consumption-rate Helicopter-1) 3.28)
(= (transport-consumption-rate Helicopter-1) 4.43)
(= (fuel Helicopter-1) 688)
(= (speed Helicopter-1) 30)

(= (loaded-seats Helicopter-2) 0)
(= (seats Helicopter-2) 1)
(is-at Helicopter-2 ROB)
(= (move-consumption-rate Helicopter-2) 3.46)
(= (transport-consumption-rate Helicopter-2) 4.72)
(= (fuel Helicopter-2) 671)
(= (speed Helicopter-2) 49)

(= (loaded-seats Helicopter-3) 0)
(= (seats Helicopter-3) 1)
(is-at Helicopter-3 DR)
(= (move-consumption-rate Helicopter-3) 3.18)
(= (transport-consumption-rate Helicopter-3) 3.66)
(= (fuel Helicopter-3) 989)
(= (speed Helicopter-3) 54)

(= (loaded-seats Helicopter-4) 0)
(= (seats Helicopter-4) 4)
(is-at Helicopter-4 HOS)
(= (move-consumption-rate Helicopter-4) 3.2)
(= (transport-consumption-rate Helicopter-4) 4.96)
(= (fuel Helicopter-4) 770)
(= (speed Helicopter-4) 49)

(= (loaded-seats Helicopter-5) 0)
(= (seats Helicopter-5) 3)
(is-at Helicopter-5 ROB)
(= (move-consumption-rate Helicopter-5) 3.26)
(= (transport-consumption-rate Helicopter-5) 3.51)
(= (fuel Helicopter-5) 955)
(= (speed Helicopter-5) 48)

(= (loaded-seats Helicopter-6) 0)
(= (seats Helicopter-6) 4)
(is-at Helicopter-6 HOS)
(= (move-consumption-rate Helicopter-6) 3.37)
(= (transport-consumption-rate Helicopter-6) 4.99)
(= (fuel Helicopter-6) 903)
(= (speed Helicopter-6) 39)

(is-at Robot-1 ROB)
(= (fuel Robot-1) 561)

(is-at Robot-2 ROB)
(= (fuel Robot-2) 719)

(is-at Robot-3 ROB)
(= (fuel Robot-3) 847)

(is-at Robot-4 ROB)
(= (fuel Robot-4) 852)

(is-at Robot-5 ROB)
(= (fuel Robot-5) 512)

(is-at Robot-6 ROB)
(= (fuel Robot-6) 547)

(= (loaded-seats Ambulance-1) 0)
(= (seats Ambulance-1) 3)
(is-at Ambulance-1 HOS)
(= (move-consumption-rate Ambulance-1) 1.39)
(= (transport-consumption-rate Ambulance-1) 1.88)
(= (fuel Ambulance-1) 833)
(= (speed Ambulance-1) 57)

(= (loaded-seats Ambulance-2) 0)
(= (seats Ambulance-2) 2)
(is-at Ambulance-2 TRU)
(= (move-consumption-rate Ambulance-2) 1.22)
(= (transport-consumption-rate Ambulance-2) 1.59)
(= (fuel Ambulance-2) 582)
(= (speed Ambulance-2) 57)

(= (loaded-seats Ambulance-3) 0)
(= (seats Ambulance-3) 4)
(is-at Ambulance-3 TRU)
(= (move-consumption-rate Ambulance-3) 1.24)
(= (transport-consumption-rate Ambulance-3) 1.9)
(= (fuel Ambulance-3) 680)
(= (speed Ambulance-3) 34)

(= (loaded-seats Ambulance-4) 0)
(= (seats Ambulance-4) 1)
(is-at Ambulance-4 DR)
(= (move-consumption-rate Ambulance-4) 1.37)
(= (transport-consumption-rate Ambulance-4) 1.78)
(= (fuel Ambulance-4) 700)
(= (speed Ambulance-4) 44)

(= (loaded-seats Ambulance-5) 0)
(= (seats Ambulance-5) 1)
(is-at Ambulance-5 TRU)
(= (move-consumption-rate Ambulance-5) 1.26)
(= (transport-consumption-rate Ambulance-5) 1.8)
(= (fuel Ambulance-5) 743)
(= (speed Ambulance-5) 50)

(= (loaded-seats Ambulance-6) 0)
(= (seats Ambulance-6) 3)
(is-at Ambulance-6 DR)
(= (move-consumption-rate Ambulance-6) 1.18)
(= (transport-consumption-rate Ambulance-6) 1.55)
(= (fuel Ambulance-6) 710)
(= (speed Ambulance-6) 33)

(= (loaded-seats Ambulance-7) 0)
(= (seats Ambulance-7) 2)
(is-at Ambulance-7 TRU)
(= (move-consumption-rate Ambulance-7) 1.3)
(= (transport-consumption-rate Ambulance-7) 1.93)
(= (fuel Ambulance-7) 619)
(= (speed Ambulance-7) 45)
    


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
