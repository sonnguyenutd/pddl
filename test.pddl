(define (problem p5)
  (:domain rescue)



(:objects 
 Truck-11 Truck-12 Truck-13 Truck-14 Truck-15 Truck-16 Truck-17 Truck-18 Truck-19 Truck-20 Truck-21 Truck-22 Truck-23 Truck-24 Truck-1 - truck
 Robot-11 Robot-12 Robot-13 Robot-14 Robot-15 Robot-16 Robot-17 Robot-18 Robot-19 Robot-20 Robot-21 Robot-22 Robot-23 Robot-24 Robot-1 Robot-2 Robot-4 - robot
 Ambulance-1 Ambulance-2 Ambulance-5  Ambulance-11 Ambulance-12 Ambulance-13 Ambulance-14 Ambulance-15 Ambulance-16 Ambulance-17 Ambulance-18 Ambulance-19 Ambulance-20 Ambulance-21 Ambulance-22 Ambulance-23 - ambulance
)
(:init 
(= (loaded-seats Truck-1) 0)
(= (seats Truck-1) 5)
(is-at Truck-1 TRU)
(= (move-consumption-rate Truck-1) 1.3)
(= (transport-consumption-rate Truck-1) 2.3)
(= (fuel Truck-1) 100000)
(= (speed Truck-1) 60)



(is-at Robot-1 ROB)
(= (fuel Robot-1) 773)
(is-available Robot-1)

(is-at Robot-2 ROB)
(= (fuel Robot-2) 752)
(is-available Robot-2)

(is-at Robot-4 ROB)
(= (fuel Robot-4) 574)
(is-available Robot-4)

(= (loaded-seats Ambulance-1) 0)
(= (seats Ambulance-1) 4)
(is-at Ambulance-1 HOS)
(= (move-consumption-rate Ambulance-1) 1.1)
(= (transport-consumption-rate Ambulance-1) 1.8)
(= (fuel Ambulance-1) 100000)
(= (speed Ambulance-1) 43)


(= (loaded-seats Ambulance-2) 0)
(= (seats Ambulance-2) 1)
(is-at Ambulance-2 HOS)
(= (move-consumption-rate Ambulance-2) 1.4)
(= (transport-consumption-rate Ambulance-2) 1.9)
(= (fuel Ambulance-2) 9200)
(= (speed Ambulance-2) 45)

(= (loaded-seats Ambulance-5) 0)
(= (seats Ambulance-5) 3)
(is-at Ambulance-5 HOS)
(= (move-consumption-rate Ambulance-5) 1.2)
(= (transport-consumption-rate Ambulance-5) 1.6)
(= (fuel Ambulance-5) 100000)
(= (speed Ambulance-5) 51)




(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 3)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.3)
(= (transport-consumption-rate Truck-11) 1.9)
(= (fuel Truck-11) 37476)
(= (speed Truck-11) 44)

(= (loaded-seats Truck-12) 0)
(= (seats Truck-12) 3)
(is-at Truck-12 TRU)
(= (move-consumption-rate Truck-12) 1.6)
(= (transport-consumption-rate Truck-12) 2.2)
(= (fuel Truck-12) 41144)
(= (speed Truck-12) 55)

(= (loaded-seats Truck-13) 0)
(= (seats Truck-13) 3)
(is-at Truck-13 TRU)
(= (move-consumption-rate Truck-13) 1.4)
(= (transport-consumption-rate Truck-13) 2.0)
(= (fuel Truck-13) 33973)
(= (speed Truck-13) 59)

(= (loaded-seats Truck-14) 0)
(= (seats Truck-14) 3)
(is-at Truck-14 TRU)
(= (move-consumption-rate Truck-14) 1.5)
(= (transport-consumption-rate Truck-14) 2.2)
(= (fuel Truck-14) 37284)
(= (speed Truck-14) 60)

(= (loaded-seats Truck-15) 0)
(= (seats Truck-15) 2)
(is-at Truck-15 TRU)
(= (move-consumption-rate Truck-15) 1.4)
(= (transport-consumption-rate Truck-15) 2.3)
(= (fuel Truck-15) 42021)
(= (speed Truck-15) 41)

(= (loaded-seats Truck-16) 0)
(= (seats Truck-16) 4)
(is-at Truck-16 TRU)
(= (move-consumption-rate Truck-16) 1.0)
(= (transport-consumption-rate Truck-16) 1.9)
(= (fuel Truck-16) 43880)
(= (speed Truck-16) 52)

(= (loaded-seats Truck-17) 0)
(= (seats Truck-17) 2)
(is-at Truck-17 TRU)
(= (move-consumption-rate Truck-17) 1.1)
(= (transport-consumption-rate Truck-17) 1.8)
(= (fuel Truck-17) 30926)
(= (speed Truck-17) 46)

(= (loaded-seats Truck-18) 0)
(= (seats Truck-18) 4)
(is-at Truck-18 TRU)
(= (move-consumption-rate Truck-18) 1.8)
(= (transport-consumption-rate Truck-18) 1.9)
(= (fuel Truck-18) 44792)
(= (speed Truck-18) 60)

(= (loaded-seats Truck-19) 0)
(= (seats Truck-19) 4)
(is-at Truck-19 TRU)
(= (move-consumption-rate Truck-19) 1.5)
(= (transport-consumption-rate Truck-19) 2.5)
(= (fuel Truck-19) 43969)
(= (speed Truck-19) 49)

(= (loaded-seats Truck-20) 0)
(= (seats Truck-20) 4)
(is-at Truck-20 TRU)
(= (move-consumption-rate Truck-20) 1.7)
(= (transport-consumption-rate Truck-20) 1.9)
(= (fuel Truck-20) 35115)
(= (speed Truck-20) 57)

(= (loaded-seats Truck-21) 0)
(= (seats Truck-21) 4)
(is-at Truck-21 TRU)
(= (move-consumption-rate Truck-21) 1.5)
(= (transport-consumption-rate Truck-21) 2.1)
(= (fuel Truck-21) 49522)
(= (speed Truck-21) 46)

(= (loaded-seats Truck-22) 0)
(= (seats Truck-22) 2)
(is-at Truck-22 TRU)
(= (move-consumption-rate Truck-22) 1.1)
(= (transport-consumption-rate Truck-22) 2.0)
(= (fuel Truck-22) 32385)
(= (speed Truck-22) 45)

(= (loaded-seats Truck-23) 0)
(= (seats Truck-23) 3)
(is-at Truck-23 TRU)
(= (move-consumption-rate Truck-23) 1.4)
(= (transport-consumption-rate Truck-23) 2.4)
(= (fuel Truck-23) 35497)
(= (speed Truck-23) 45)

(= (loaded-seats Truck-24) 0)
(= (seats Truck-24) 5)
(is-at Truck-24 TRU)
(= (move-consumption-rate Truck-24) 1.7)
(= (transport-consumption-rate Truck-24) 2.2)
(= (fuel Truck-24) 33147)
(= (speed Truck-24) 55)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 633)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 959)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 739)
(is-available Robot-13)

(is-at Robot-14 ROB)
(= (fuel Robot-14) 662)
(is-available Robot-14)

(is-at Robot-15 ROB)
(= (fuel Robot-15) 650)
(is-available Robot-15)

(is-at Robot-16 ROB)
(= (fuel Robot-16) 709)
(is-available Robot-16)

(is-at Robot-17 ROB)
(= (fuel Robot-17) 655)
(is-available Robot-17)

(is-at Robot-18 ROB)
(= (fuel Robot-18) 921)
(is-available Robot-18)

(is-at Robot-19 ROB)
(= (fuel Robot-19) 823)
(is-available Robot-19)

(is-at Robot-20 ROB)
(= (fuel Robot-20) 739)
(is-available Robot-20)

(is-at Robot-21 ROB)
(= (fuel Robot-21) 960)
(is-available Robot-21)

(is-at Robot-22 ROB)
(= (fuel Robot-22) 749)
(is-available Robot-22)

(is-at Robot-23 ROB)
(= (fuel Robot-23) 741)
(is-available Robot-23)

(is-at Robot-24 ROB)
(= (fuel Robot-24) 652)
(is-available Robot-24)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 1)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.4)
(= (transport-consumption-rate Ambulance-11) 1.8)
(= (fuel Ambulance-11) 36185)
(= (speed Ambulance-11) 47)

(= (loaded-seats Ambulance-12) 0)
(= (seats Ambulance-12) 4)
(is-at Ambulance-12 HOS)
(= (move-consumption-rate Ambulance-12) 1.2)
(= (transport-consumption-rate Ambulance-12) 1.6)
(= (fuel Ambulance-12) 38334)
(= (speed Ambulance-12) 46)

(= (loaded-seats Ambulance-13) 0)
(= (seats Ambulance-13) 4)
(is-at Ambulance-13 HOS)
(= (move-consumption-rate Ambulance-13) 1.1)
(= (transport-consumption-rate Ambulance-13) 1.7)
(= (fuel Ambulance-13) 46735)
(= (speed Ambulance-13) 33)

(= (loaded-seats Ambulance-14) 0)
(= (seats Ambulance-14) 4)
(is-at Ambulance-14 HOS)
(= (move-consumption-rate Ambulance-14) 1.1)
(= (transport-consumption-rate Ambulance-14) 1.7)
(= (fuel Ambulance-14) 40999)
(= (speed Ambulance-14) 44)

(= (loaded-seats Ambulance-15) 0)
(= (seats Ambulance-15) 2)
(is-at Ambulance-15 HOS)
(= (move-consumption-rate Ambulance-15) 1.0)
(= (transport-consumption-rate Ambulance-15) 1.5)
(= (fuel Ambulance-15) 46236)
(= (speed Ambulance-15) 36)

(= (loaded-seats Ambulance-16) 0)
(= (seats Ambulance-16) 4)
(is-at Ambulance-16 HOS)
(= (move-consumption-rate Ambulance-16) 1.2)
(= (transport-consumption-rate Ambulance-16) 1.9)
(= (fuel Ambulance-16) 33000)
(= (speed Ambulance-16) 56)

(= (loaded-seats Ambulance-17) 0)
(= (seats Ambulance-17) 4)
(is-at Ambulance-17 HOS)
(= (move-consumption-rate Ambulance-17) 1.4)
(= (transport-consumption-rate Ambulance-17) 1.8)
(= (fuel Ambulance-17) 48809)
(= (speed Ambulance-17) 58)

(= (loaded-seats Ambulance-18) 0)
(= (seats Ambulance-18) 1)
(is-at Ambulance-18 HOS)
(= (move-consumption-rate Ambulance-18) 1.1)
(= (transport-consumption-rate Ambulance-18) 1.9)
(= (fuel Ambulance-18) 40912)
(= (speed Ambulance-18) 40)

(= (loaded-seats Ambulance-19) 0)
(= (seats Ambulance-19) 2)
(is-at Ambulance-19 HOS)
(= (move-consumption-rate Ambulance-19) 1.3)
(= (transport-consumption-rate Ambulance-19) 1.7)
(= (fuel Ambulance-19) 46587)
(= (speed Ambulance-19) 43)

(= (loaded-seats Ambulance-20) 0)
(= (seats Ambulance-20) 3)
(is-at Ambulance-20 HOS)
(= (move-consumption-rate Ambulance-20) 1.3)
(= (transport-consumption-rate Ambulance-20) 1.7)
(= (fuel Ambulance-20) 35802)
(= (speed Ambulance-20) 44)

(= (loaded-seats Ambulance-21) 0)
(= (seats Ambulance-21) 1)
(is-at Ambulance-21 HOS)
(= (move-consumption-rate Ambulance-21) 1.4)
(= (transport-consumption-rate Ambulance-21) 1.8)
(= (fuel Ambulance-21) 32761)
(= (speed Ambulance-21) 47)

(= (loaded-seats Ambulance-22) 0)
(= (seats Ambulance-22) 4)
(is-at Ambulance-22 HOS)
(= (move-consumption-rate Ambulance-22) 1.2)
(= (transport-consumption-rate Ambulance-22) 1.8)
(= (fuel Ambulance-22) 30441)
(= (speed Ambulance-22) 48)

(= (loaded-seats Ambulance-23) 0)
(= (seats Ambulance-23) 1)
(is-at Ambulance-23 HOS)
(= (move-consumption-rate Ambulance-23) 1.4)
(= (transport-consumption-rate Ambulance-23) 1.5)
(= (fuel Ambulance-23) 38072)
(= (speed Ambulance-23) 40)
    


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
