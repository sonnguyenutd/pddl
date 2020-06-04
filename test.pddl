(define (problem p5)
  (:domain rescue)



(:objects 
 Truck-1 Truck-2 Truck-3 - truck
 Robot-1 Robot-2 Robot-3 Robot-4 - robot
 Ambulance-1 Ambulance-2 Ambulance-3 - ambulance
)
(:init 
(= (loaded-seats Truck-1) 0)
(= (seats Truck-1) 4)
(is-at Truck-1 TRU)
(= (move-consumption-rate Truck-1) 1.6)
(= (transport-consumption-rate Truck-1) 2.2)
(= (fuel Truck-1) 14256)
(= (speed Truck-1) 52)

(= (loaded-seats Truck-2) 0)
(= (seats Truck-2) 2)
(is-at Truck-2 TRU)
(= (move-consumption-rate Truck-2) 1.7)
(= (transport-consumption-rate Truck-2) 2.2)
(= (fuel Truck-2) 10512)
(= (speed Truck-2) 48)

(= (loaded-seats Truck-3) 0)
(= (seats Truck-3) 4)
(is-at Truck-3 TRU)
(= (move-consumption-rate Truck-3) 1.6)
(= (transport-consumption-rate Truck-3) 1.9)
(= (fuel Truck-3) 10168)
(= (speed Truck-3) 45)

(is-at Robot-1 ROB)
(= (fuel Robot-1) 524)
(is-available Robot-1)

(is-at Robot-2 ROB)
(= (fuel Robot-2) 802)
(is-available Robot-2)

(is-at Robot-3 ROB)
(= (fuel Robot-3) 960)
(is-available Robot-3)

(is-at Robot-4 ROB)
(= (fuel Robot-4) 828)
(is-available Robot-4)

(= (loaded-seats Ambulance-1) 0)
(= (seats Ambulance-1) 2)
(is-at Ambulance-1 HOS)
(= (move-consumption-rate Ambulance-1) 1.4)
(= (transport-consumption-rate Ambulance-1) 1.5)
(= (fuel Ambulance-1) 16501)
(= (speed Ambulance-1) 56)

(= (loaded-seats Ambulance-2) 0)
(= (seats Ambulance-2) 4)
(is-at Ambulance-2 HOS)
(= (move-consumption-rate Ambulance-2) 1.0)
(= (transport-consumption-rate Ambulance-2) 1.9)
(= (fuel Ambulance-2) 17342)
(= (speed Ambulance-2) 35)

(= (loaded-seats Ambulance-3) 0)
(= (seats Ambulance-3) 4)
(is-at Ambulance-3 HOS)
(= (move-consumption-rate Ambulance-3) 1.1)
(= (transport-consumption-rate Ambulance-3) 1.8)
(= (fuel Ambulance-3) 17064)
(= (speed Ambulance-3) 50)





    


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
