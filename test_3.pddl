(define (problem p5)
  (:domain rescue)


(:objects 
 Truck-11 Truck-12 - truck
 Robot-11 Robot-12 Robot-13 - robot
 Ambulance-11 - ambulance
)
(:init 
(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 4)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.7)
(= (transport-consumption-rate Truck-11) 2.5)
(= (fuel Truck-11) 48463)
(= (speed Truck-11) 59)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 957)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 888)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 702)
(is-available Robot-13)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 2)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.1)
(= (transport-consumption-rate Ambulance-11) 1.7)
(= (fuel Ambulance-11) 49412)
(= (speed Ambulance-11) 53)






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
