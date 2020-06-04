(define (problem p5)
  (:domain rescue)
  (:objects 
 Truck-1 Truck-2 Truck-3 - truck
 Robot-1 Robot-2 Robot-3 Robot-4 Robot-5 Robot-6 - robot
 Ambulance-1 Ambulance-2 Ambulance-3 Ambulance-4 Ambulance-5 - ambulance
)
(:init 
(= (loaded-seats Truck-1) 0)
(= (seats Truck-1) 2)
(is-at Truck-1 TRU)
(= (move-consumption-rate Truck-1) 1.46)
(= (transport-consumption-rate Truck-1) 2.45)
(= (fuel Truck-1) 849)
(= (speed Truck-1) 40)

(= (loaded-seats Truck-2) 0)
(= (seats Truck-2) 4)
(is-at Truck-2 TRU)
(= (move-consumption-rate Truck-2) 1.5)
(= (transport-consumption-rate Truck-2) 1.83)
(= (fuel Truck-2) 753)
(= (speed Truck-2) 60)

(= (loaded-seats Truck-3) 0)
(= (seats Truck-3) 4)
(is-at Truck-3 TRU)
(= (move-consumption-rate Truck-3) 1.61)
(= (transport-consumption-rate Truck-3) 2.47)
(= (fuel Truck-3) 864)
(= (speed Truck-3) 55)

(is-at Robot-1 ROB)
(= (fuel Robot-1) 514)
(is-available Robot-1)

(is-at Robot-2 ROB)
(= (fuel Robot-2) 957)
(is-available Robot-2)

(is-at Robot-3 ROB)
(= (fuel Robot-3) 717)
(is-available Robot-3)

(is-at Robot-4 ROB)
(= (fuel Robot-4) 956)
(is-available Robot-4)

(is-at Robot-5 ROB)
(= (fuel Robot-5) 591)
(is-available Robot-5)

(is-at Robot-6 ROB)
(= (fuel Robot-6) 798)
(is-available Robot-6)

(= (loaded-seats Ambulance-1) 0)
(= (seats Ambulance-1) 2)
(is-at Ambulance-1 HOS)
(= (move-consumption-rate Ambulance-1) 1.21)
(= (transport-consumption-rate Ambulance-1) 1.51)
(= (fuel Ambulance-1) 595)
(= (speed Ambulance-1) 34)

(= (loaded-seats Ambulance-2) 0)
(= (seats Ambulance-2) 3)
(is-at Ambulance-2 HOS)
(= (move-consumption-rate Ambulance-2) 1.03)
(= (transport-consumption-rate Ambulance-2) 1.71)
(= (fuel Ambulance-2) 956)
(= (speed Ambulance-2) 52)

(= (loaded-seats Ambulance-3) 0)
(= (seats Ambulance-3) 2)
(is-at Ambulance-3 HOS)
(= (move-consumption-rate Ambulance-3) 1.4)
(= (transport-consumption-rate Ambulance-3) 1.63)
(= (fuel Ambulance-3) 837)
(= (speed Ambulance-3) 54)

(= (loaded-seats Ambulance-4) 0)
(= (seats Ambulance-4) 4)
(is-at Ambulance-4 HOS)
(= (move-consumption-rate Ambulance-4) 1.3)
(= (transport-consumption-rate Ambulance-4) 1.59)
(= (fuel Ambulance-4) 852)
(= (speed Ambulance-4) 35)

(= (loaded-seats Ambulance-5) 0)
(= (seats Ambulance-5) 4)
(is-at Ambulance-5 HOS)
(= (move-consumption-rate Ambulance-5) 1.17)
(= (transport-consumption-rate Ambulance-5) 1.76)
(= (fuel Ambulance-5) 883)
(= (speed Ambulance-5) 56)
    


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
