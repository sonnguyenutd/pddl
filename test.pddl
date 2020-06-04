(define (problem p5)
  (:domain rescue)



(:objects 
 Truck-1 Truck-2 Truck-3 Truck-4 - truck
 Robot-1 Robot-2 Robot-3 Robot-4 Robot-5 - robot
 Ambulance-1 Ambulance-2 Ambulance-3 Ambulance-4 - ambulance
)
(:init 
(= (loaded-seats Truck-1) 0)
(= (seats Truck-1) 3)
(is-at Truck-1 TRU)
(= (move-consumption-rate Truck-1) 1.56)
(= (transport-consumption-rate Truck-1) 1.85)
(= (fuel Truck-1) 7806)
(= (speed Truck-1) 51)

(= (loaded-seats Truck-2) 0)
(= (seats Truck-2) 3)
(is-at Truck-2 TRU)
(= (move-consumption-rate Truck-2) 1.66)
(= (transport-consumption-rate Truck-2) 1.94)
(= (fuel Truck-2) 8031)
(= (speed Truck-2) 42)

(= (loaded-seats Truck-3) 0)
(= (seats Truck-3) 3)
(is-at Truck-3 TRU)
(= (move-consumption-rate Truck-3) 1.17)
(= (transport-consumption-rate Truck-3) 2.03)
(= (fuel Truck-3) 5890)
(= (speed Truck-3) 46)

(= (loaded-seats Truck-4) 0)
(= (seats Truck-4) 3)
(is-at Truck-4 TRU)
(= (move-consumption-rate Truck-4) 1.1)
(= (transport-consumption-rate Truck-4) 1.93)
(= (fuel Truck-4) 9070)
(= (speed Truck-4) 42)

(is-at Robot-1 ROB)
(= (fuel Robot-1) 666)
(is-available Robot-1)

(is-at Robot-2 ROB)
(= (fuel Robot-2) 542)
(is-available Robot-2)

(is-at Robot-3 ROB)
(= (fuel Robot-3) 732)
(is-available Robot-3)

(is-at Robot-4 ROB)
(= (fuel Robot-4) 632)
(is-available Robot-4)

(is-at Robot-5 ROB)
(= (fuel Robot-5) 926)
(is-available Robot-5)

(= (loaded-seats Ambulance-1) 0)
(= (seats Ambulance-1) 3)
(is-at Ambulance-1 HOS)
(= (move-consumption-rate Ambulance-1) 1.18)
(= (transport-consumption-rate Ambulance-1) 1.82)
(= (fuel Ambulance-1) 8825)
(= (speed Ambulance-1) 60)

(= (loaded-seats Ambulance-2) 0)
(= (seats Ambulance-2) 3)
(is-at Ambulance-2 HOS)
(= (move-consumption-rate Ambulance-2) 1.3)
(= (transport-consumption-rate Ambulance-2) 1.86)
(= (fuel Ambulance-2) 6189)
(= (speed Ambulance-2) 34)

(= (loaded-seats Ambulance-3) 0)
(= (seats Ambulance-3) 2)
(is-at Ambulance-3 HOS)
(= (move-consumption-rate Ambulance-3) 1.13)
(= (transport-consumption-rate Ambulance-3) 1.91)
(= (fuel Ambulance-3) 9953)
(= (speed Ambulance-3) 47)

(= (loaded-seats Ambulance-4) 0)
(= (seats Ambulance-4) 1)
(is-at Ambulance-4 HOS)
(= (move-consumption-rate Ambulance-4) 1.31)
(= (transport-consumption-rate Ambulance-4) 1.87)
(= (fuel Ambulance-4) 5192)
(= (speed Ambulance-4) 38)



    


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
