(define (problem p5)
  (:domain rescue)



(:objects 
 Truck-11 Truck-12 Truck-13 Truck-14 Truck-15 Truck-16 Truck-17 Truck-18 Truck-19 Truck-20 Truck-21 Truck-22 - truck
 Robot-11 Robot-12 Robot-13 Robot-14 Robot-15 Robot-16 Robot-17 Robot-18 Robot-19 Robot-20 Robot-21 Robot-22 - robot
 Ambulance-11 Ambulance-12 Ambulance-13 Ambulance-14 Ambulance-15 Ambulance-16 Ambulance-17 Ambulance-18 Ambulance-19 Ambulance-20 Ambulance-21 Ambulance-22 - ambulance
)
(:init 
(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 4)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.0)
(= (transport-consumption-rate Truck-11) 1.8)
(= (fuel Truck-11) 40680)
(= (speed Truck-11) 47)

(= (loaded-seats Truck-12) 0)
(= (seats Truck-12) 5)
(is-at Truck-12 TRU)
(= (move-consumption-rate Truck-12) 1.6)
(= (transport-consumption-rate Truck-12) 1.9)
(= (fuel Truck-12) 41562)
(= (speed Truck-12) 58)

(= (loaded-seats Truck-13) 0)
(= (seats Truck-13) 2)
(is-at Truck-13 TRU)
(= (move-consumption-rate Truck-13) 1.7)
(= (transport-consumption-rate Truck-13) 2.0)
(= (fuel Truck-13) 43317)
(= (speed Truck-13) 59)

(= (loaded-seats Truck-14) 0)
(= (seats Truck-14) 4)
(is-at Truck-14 TRU)
(= (move-consumption-rate Truck-14) 1.7)
(= (transport-consumption-rate Truck-14) 2.4)
(= (fuel Truck-14) 32887)
(= (speed Truck-14) 52)

(= (loaded-seats Truck-15) 0)
(= (seats Truck-15) 4)
(is-at Truck-15 TRU)
(= (move-consumption-rate Truck-15) 1.4)
(= (transport-consumption-rate Truck-15) 2.0)
(= (fuel Truck-15) 46404)
(= (speed Truck-15) 49)

(= (loaded-seats Truck-16) 0)
(= (seats Truck-16) 4)
(is-at Truck-16 TRU)
(= (move-consumption-rate Truck-16) 1.3)
(= (transport-consumption-rate Truck-16) 2.2)
(= (fuel Truck-16) 38934)
(= (speed Truck-16) 50)

(= (loaded-seats Truck-17) 0)
(= (seats Truck-17) 5)
(is-at Truck-17 TRU)
(= (move-consumption-rate Truck-17) 1.0)
(= (transport-consumption-rate Truck-17) 1.8)
(= (fuel Truck-17) 44096)
(= (speed Truck-17) 55)

(= (loaded-seats Truck-18) 0)
(= (seats Truck-18) 4)
(is-at Truck-18 TRU)
(= (move-consumption-rate Truck-18) 1.6)
(= (transport-consumption-rate Truck-18) 2.1)
(= (fuel Truck-18) 36091)
(= (speed Truck-18) 55)

(= (loaded-seats Truck-19) 0)
(= (seats Truck-19) 3)
(is-at Truck-19 TRU)
(= (move-consumption-rate Truck-19) 1.2)
(= (transport-consumption-rate Truck-19) 2.3)
(= (fuel Truck-19) 30775)
(= (speed Truck-19) 58)

(= (loaded-seats Truck-20) 0)
(= (seats Truck-20) 3)
(is-at Truck-20 TRU)
(= (move-consumption-rate Truck-20) 1.4)
(= (transport-consumption-rate Truck-20) 2.4)
(= (fuel Truck-20) 40878)
(= (speed Truck-20) 49)

(= (loaded-seats Truck-21) 0)
(= (seats Truck-21) 5)
(is-at Truck-21 TRU)
(= (move-consumption-rate Truck-21) 1.2)
(= (transport-consumption-rate Truck-21) 2.4)
(= (fuel Truck-21) 31980)
(= (speed Truck-21) 51)

(= (loaded-seats Truck-22) 0)
(= (seats Truck-22) 5)
(is-at Truck-22 TRU)
(= (move-consumption-rate Truck-22) 1.2)
(= (transport-consumption-rate Truck-22) 2.4)
(= (fuel Truck-22) 46630)
(= (speed Truck-22) 47)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 570)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 575)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 774)
(is-available Robot-13)

(is-at Robot-14 ROB)
(= (fuel Robot-14) 678)
(is-available Robot-14)

(is-at Robot-15 ROB)
(= (fuel Robot-15) 748)
(is-available Robot-15)

(is-at Robot-16 ROB)
(= (fuel Robot-16) 909)
(is-available Robot-16)

(is-at Robot-17 ROB)
(= (fuel Robot-17) 721)
(is-available Robot-17)

(is-at Robot-18 ROB)
(= (fuel Robot-18) 753)
(is-available Robot-18)

(is-at Robot-19 ROB)
(= (fuel Robot-19) 691)
(is-available Robot-19)

(is-at Robot-20 ROB)
(= (fuel Robot-20) 631)
(is-available Robot-20)

(is-at Robot-21 ROB)
(= (fuel Robot-21) 570)
(is-available Robot-21)

(is-at Robot-22 ROB)
(= (fuel Robot-22) 730)
(is-available Robot-22)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 2)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.0)
(= (transport-consumption-rate Ambulance-11) 1.6)
(= (fuel Ambulance-11) 43474)
(= (speed Ambulance-11) 43)

(= (loaded-seats Ambulance-12) 0)
(= (seats Ambulance-12) 4)
(is-at Ambulance-12 HOS)
(= (move-consumption-rate Ambulance-12) 1.3)
(= (transport-consumption-rate Ambulance-12) 1.9)
(= (fuel Ambulance-12) 38478)
(= (speed Ambulance-12) 32)

(= (loaded-seats Ambulance-13) 0)
(= (seats Ambulance-13) 1)
(is-at Ambulance-13 HOS)
(= (move-consumption-rate Ambulance-13) 1.1)
(= (transport-consumption-rate Ambulance-13) 1.8)
(= (fuel Ambulance-13) 47701)
(= (speed Ambulance-13) 42)

(= (loaded-seats Ambulance-14) 0)
(= (seats Ambulance-14) 3)
(is-at Ambulance-14 HOS)
(= (move-consumption-rate Ambulance-14) 1.3)
(= (transport-consumption-rate Ambulance-14) 1.6)
(= (fuel Ambulance-14) 36732)
(= (speed Ambulance-14) 40)

(= (loaded-seats Ambulance-15) 0)
(= (seats Ambulance-15) 4)
(is-at Ambulance-15 HOS)
(= (move-consumption-rate Ambulance-15) 1.3)
(= (transport-consumption-rate Ambulance-15) 2.0)
(= (fuel Ambulance-15) 39705)
(= (speed Ambulance-15) 55)

(= (loaded-seats Ambulance-16) 0)
(= (seats Ambulance-16) 2)
(is-at Ambulance-16 HOS)
(= (move-consumption-rate Ambulance-16) 1.3)
(= (transport-consumption-rate Ambulance-16) 1.6)
(= (fuel Ambulance-16) 30890)
(= (speed Ambulance-16) 46)

(= (loaded-seats Ambulance-17) 0)
(= (seats Ambulance-17) 3)
(is-at Ambulance-17 HOS)
(= (move-consumption-rate Ambulance-17) 1.2)
(= (transport-consumption-rate Ambulance-17) 1.8)
(= (fuel Ambulance-17) 33631)
(= (speed Ambulance-17) 44)

(= (loaded-seats Ambulance-18) 0)
(= (seats Ambulance-18) 4)
(is-at Ambulance-18 HOS)
(= (move-consumption-rate Ambulance-18) 1.5)
(= (transport-consumption-rate Ambulance-18) 1.7)
(= (fuel Ambulance-18) 40687)
(= (speed Ambulance-18) 40)

(= (loaded-seats Ambulance-19) 0)
(= (seats Ambulance-19) 1)
(is-at Ambulance-19 HOS)
(= (move-consumption-rate Ambulance-19) 1.2)
(= (transport-consumption-rate Ambulance-19) 1.8)
(= (fuel Ambulance-19) 49951)
(= (speed Ambulance-19) 40)

(= (loaded-seats Ambulance-20) 0)
(= (seats Ambulance-20) 2)
(is-at Ambulance-20 HOS)
(= (move-consumption-rate Ambulance-20) 1.3)
(= (transport-consumption-rate Ambulance-20) 1.6)
(= (fuel Ambulance-20) 30623)
(= (speed Ambulance-20) 34)

(= (loaded-seats Ambulance-21) 0)
(= (seats Ambulance-21) 3)
(is-at Ambulance-21 HOS)
(= (move-consumption-rate Ambulance-21) 1.3)
(= (transport-consumption-rate Ambulance-21) 1.7)
(= (fuel Ambulance-21) 36029)
(= (speed Ambulance-21) 53)

(= (loaded-seats Ambulance-22) 0)
(= (seats Ambulance-22) 3)
(is-at Ambulance-22 HOS)
(= (move-consumption-rate Ambulance-22) 1.0)
(= (transport-consumption-rate Ambulance-22) 1.9)
(= (fuel Ambulance-22) 31863)
(= (speed Ambulance-22) 35)






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
