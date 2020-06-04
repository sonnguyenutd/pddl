(define (problem p5)
  (:domain rescue)



(:objects 
 Truck-11 Truck-12 Truck-13 Truck-14 Truck-15 Truck-16 Truck-17 Truck-18 Truck-19 Truck-20 - truck
 Robot-11 Robot-12 Robot-13 Robot-14 Robot-15 Robot-16 Robot-17 Robot-18 Robot-19 Robot-20 - robot
 Ambulance-11 Ambulance-12 Ambulance-13 Ambulance-14 Ambulance-15 Ambulance-16 Ambulance-17 Ambulance-18 Ambulance-19 Ambulance-20 - ambulance
)
(:init 
(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 4)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.5)
(= (transport-consumption-rate Truck-11) 2.2)
(= (fuel Truck-11) 32283)
(= (speed Truck-11) 42)

(= (loaded-seats Truck-12) 0)
(= (seats Truck-12) 4)
(is-at Truck-12 TRU)
(= (move-consumption-rate Truck-12) 1.5)
(= (transport-consumption-rate Truck-12) 2.2)
(= (fuel Truck-12) 31512)
(= (speed Truck-12) 55)

(= (loaded-seats Truck-13) 0)
(= (seats Truck-13) 4)
(is-at Truck-13 TRU)
(= (move-consumption-rate Truck-13) 1.5)
(= (transport-consumption-rate Truck-13) 2.1)
(= (fuel Truck-13) 48584)
(= (speed Truck-13) 54)

(= (loaded-seats Truck-14) 0)
(= (seats Truck-14) 5)
(is-at Truck-14 TRU)
(= (move-consumption-rate Truck-14) 1.1)
(= (transport-consumption-rate Truck-14) 2.1)
(= (fuel Truck-14) 49615)
(= (speed Truck-14) 50)

(= (loaded-seats Truck-15) 0)
(= (seats Truck-15) 4)
(is-at Truck-15 TRU)
(= (move-consumption-rate Truck-15) 1.8)
(= (transport-consumption-rate Truck-15) 2.5)
(= (fuel Truck-15) 32155)
(= (speed Truck-15) 55)

(= (loaded-seats Truck-16) 0)
(= (seats Truck-16) 4)
(is-at Truck-16 TRU)
(= (move-consumption-rate Truck-16) 1.8)
(= (transport-consumption-rate Truck-16) 1.8)
(= (fuel Truck-16) 42694)
(= (speed Truck-16) 58)

(= (loaded-seats Truck-17) 0)
(= (seats Truck-17) 2)
(is-at Truck-17 TRU)
(= (move-consumption-rate Truck-17) 1.5)
(= (transport-consumption-rate Truck-17) 2.1)
(= (fuel Truck-17) 31401)
(= (speed Truck-17) 59)

(= (loaded-seats Truck-18) 0)
(= (seats Truck-18) 4)
(is-at Truck-18 TRU)
(= (move-consumption-rate Truck-18) 1.4)
(= (transport-consumption-rate Truck-18) 2.5)
(= (fuel Truck-18) 41802)
(= (speed Truck-18) 54)

(= (loaded-seats Truck-19) 0)
(= (seats Truck-19) 2)
(is-at Truck-19 TRU)
(= (move-consumption-rate Truck-19) 1.8)
(= (transport-consumption-rate Truck-19) 2.4)
(= (fuel Truck-19) 32449)
(= (speed Truck-19) 59)

(= (loaded-seats Truck-20) 0)
(= (seats Truck-20) 4)
(is-at Truck-20 TRU)
(= (move-consumption-rate Truck-20) 1.6)
(= (transport-consumption-rate Truck-20) 2.4)
(= (fuel Truck-20) 45923)
(= (speed Truck-20) 60)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 659)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 594)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 865)
(is-available Robot-13)

(is-at Robot-14 ROB)
(= (fuel Robot-14) 605)
(is-available Robot-14)

(is-at Robot-15 ROB)
(= (fuel Robot-15) 950)
(is-available Robot-15)

(is-at Robot-16 ROB)
(= (fuel Robot-16) 879)
(is-available Robot-16)

(is-at Robot-17 ROB)
(= (fuel Robot-17) 660)
(is-available Robot-17)

(is-at Robot-18 ROB)
(= (fuel Robot-18) 633)
(is-available Robot-18)

(is-at Robot-19 ROB)
(= (fuel Robot-19) 723)
(is-available Robot-19)

(is-at Robot-20 ROB)
(= (fuel Robot-20) 633)
(is-available Robot-20)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 2)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.3)
(= (transport-consumption-rate Ambulance-11) 1.6)
(= (fuel Ambulance-11) 42785)
(= (speed Ambulance-11) 43)

(= (loaded-seats Ambulance-12) 0)
(= (seats Ambulance-12) 1)
(is-at Ambulance-12 HOS)
(= (move-consumption-rate Ambulance-12) 1.2)
(= (transport-consumption-rate Ambulance-12) 1.9)
(= (fuel Ambulance-12) 39429)
(= (speed Ambulance-12) 46)

(= (loaded-seats Ambulance-13) 0)
(= (seats Ambulance-13) 4)
(is-at Ambulance-13 HOS)
(= (move-consumption-rate Ambulance-13) 1.5)
(= (transport-consumption-rate Ambulance-13) 1.7)
(= (fuel Ambulance-13) 33394)
(= (speed Ambulance-13) 42)

(= (loaded-seats Ambulance-14) 0)
(= (seats Ambulance-14) 4)
(is-at Ambulance-14 HOS)
(= (move-consumption-rate Ambulance-14) 1.1)
(= (transport-consumption-rate Ambulance-14) 1.8)
(= (fuel Ambulance-14) 36839)
(= (speed Ambulance-14) 45)

(= (loaded-seats Ambulance-15) 0)
(= (seats Ambulance-15) 1)
(is-at Ambulance-15 HOS)
(= (move-consumption-rate Ambulance-15) 1.4)
(= (transport-consumption-rate Ambulance-15) 1.8)
(= (fuel Ambulance-15) 46465)
(= (speed Ambulance-15) 39)

(= (loaded-seats Ambulance-16) 0)
(= (seats Ambulance-16) 1)
(is-at Ambulance-16 HOS)
(= (move-consumption-rate Ambulance-16) 1.1)
(= (transport-consumption-rate Ambulance-16) 1.7)
(= (fuel Ambulance-16) 31759)
(= (speed Ambulance-16) 30)

(= (loaded-seats Ambulance-17) 0)
(= (seats Ambulance-17) 2)
(is-at Ambulance-17 HOS)
(= (move-consumption-rate Ambulance-17) 1.1)
(= (transport-consumption-rate Ambulance-17) 1.6)
(= (fuel Ambulance-17) 38447)
(= (speed Ambulance-17) 44)

(= (loaded-seats Ambulance-18) 0)
(= (seats Ambulance-18) 2)
(is-at Ambulance-18 HOS)
(= (move-consumption-rate Ambulance-18) 1.4)
(= (transport-consumption-rate Ambulance-18) 1.8)
(= (fuel Ambulance-18) 41942)
(= (speed Ambulance-18) 32)

(= (loaded-seats Ambulance-19) 0)
(= (seats Ambulance-19) 4)
(is-at Ambulance-19 HOS)
(= (move-consumption-rate Ambulance-19) 1.2)
(= (transport-consumption-rate Ambulance-19) 1.8)
(= (fuel Ambulance-19) 44144)
(= (speed Ambulance-19) 36)

(= (loaded-seats Ambulance-20) 0)
(= (seats Ambulance-20) 2)
(is-at Ambulance-20 HOS)
(= (move-consumption-rate Ambulance-20) 1.0)
(= (transport-consumption-rate Ambulance-20) 1.9)
(= (fuel Ambulance-20) 49778)
(= (speed Ambulance-20) 45)






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
