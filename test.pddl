(define (problem p5)
  (:domain rescue)
  (:objects 
 Truck-1 Truck-2 Truck-3 Truck-4 Truck-5 Truck-6 Truck-7 Truck-8 Truck-9 - truck
 Robot-1 Robot-2 Robot-3 Robot-4 Robot-5 - robot
 Ambulance-1 Ambulance-2 Ambulance-3 Ambulance-4 Ambulance-5 Ambulance-6 Ambulance-7 Ambulance-8 - ambulance
)
(:init 
(= (loaded-seats Truck-1) 0)
(= (seats Truck-1) 4)
(is-at Truck-1 TRU)
(= (move-consumption-rate Truck-1) 1.62)
(= (transport-consumption-rate Truck-1) 2.42)
(= (fuel Truck-1) 803)
(= (speed Truck-1) 43)

(= (loaded-seats Truck-2) 0)
(= (seats Truck-2) 3)
(is-at Truck-2 TRU)
(= (move-consumption-rate Truck-2) 1.07)
(= (transport-consumption-rate Truck-2) 2.12)
(= (fuel Truck-2) 784)
(= (speed Truck-2) 48)

(= (loaded-seats Truck-3) 0)
(= (seats Truck-3) 4)
(is-at Truck-3 TRU)
(= (move-consumption-rate Truck-3) 1.48)
(= (transport-consumption-rate Truck-3) 2.01)
(= (fuel Truck-3) 840)
(= (speed Truck-3) 45)

(= (loaded-seats Truck-4) 0)
(= (seats Truck-4) 5)
(is-at Truck-4 TRU)
(= (move-consumption-rate Truck-4) 1.76)
(= (transport-consumption-rate Truck-4) 2.44)
(= (fuel Truck-4) 731)
(= (speed Truck-4) 59)

(= (loaded-seats Truck-5) 0)
(= (seats Truck-5) 2)
(is-at Truck-5 TRU)
(= (move-consumption-rate Truck-5) 1.07)
(= (transport-consumption-rate Truck-5) 2.0)
(= (fuel Truck-5) 529)
(= (speed Truck-5) 54)

(= (loaded-seats Truck-6) 0)
(= (seats Truck-6) 4)
(is-at Truck-6 TRU)
(= (move-consumption-rate Truck-6) 1.04)
(= (transport-consumption-rate Truck-6) 2.49)
(= (fuel Truck-6) 530)
(= (speed Truck-6) 53)

(= (loaded-seats Truck-7) 0)
(= (seats Truck-7) 4)
(is-at Truck-7 TRU)
(= (move-consumption-rate Truck-7) 1.14)
(= (transport-consumption-rate Truck-7) 2.16)
(= (fuel Truck-7) 727)
(= (speed Truck-7) 51)

(= (loaded-seats Truck-8) 0)
(= (seats Truck-8) 4)
(is-at Truck-8 TRU)
(= (move-consumption-rate Truck-8) 1.73)
(= (transport-consumption-rate Truck-8) 2.0)
(= (fuel Truck-8) 931)
(= (speed Truck-8) 51)

(= (loaded-seats Truck-9) 0)
(= (seats Truck-9) 3)
(is-at Truck-9 TRU)
(= (move-consumption-rate Truck-9) 1.67)
(= (transport-consumption-rate Truck-9) 1.89)
(= (fuel Truck-9) 509)
(= (speed Truck-9) 53)

(is-at Robot-1 ROB)
(= (fuel Robot-1) 739)
(is-available Robot-1)

(is-at Robot-2 ROB)
(= (fuel Robot-2) 623)
(is-available Robot-2)

(is-at Robot-3 ROB)
(= (fuel Robot-3) 775)
(is-available Robot-3)

(is-at Robot-4 ROB)
(= (fuel Robot-4) 943)
(is-available Robot-4)

(is-at Robot-5 ROB)
(= (fuel Robot-5) 807)
(is-available Robot-5)

(= (loaded-seats Ambulance-1) 0)
(= (seats Ambulance-1) 2)
(is-at Ambulance-1 HOS)
(= (move-consumption-rate Ambulance-1) 1.48)
(= (transport-consumption-rate Ambulance-1) 2.0)
(= (fuel Ambulance-1) 786)
(= (speed Ambulance-1) 30)

(= (loaded-seats Ambulance-2) 0)
(= (seats Ambulance-2) 3)
(is-at Ambulance-2 HOS)
(= (move-consumption-rate Ambulance-2) 1.22)
(= (transport-consumption-rate Ambulance-2) 1.52)
(= (fuel Ambulance-2) 890)
(= (speed Ambulance-2) 53)

(= (loaded-seats Ambulance-3) 0)
(= (seats Ambulance-3) 1)
(is-at Ambulance-3 HOS)
(= (move-consumption-rate Ambulance-3) 1.34)
(= (transport-consumption-rate Ambulance-3) 1.65)
(= (fuel Ambulance-3) 798)
(= (speed Ambulance-3) 35)

(= (loaded-seats Ambulance-4) 0)
(= (seats Ambulance-4) 1)
(is-at Ambulance-4 HOS)
(= (move-consumption-rate Ambulance-4) 1.08)
(= (transport-consumption-rate Ambulance-4) 1.67)
(= (fuel Ambulance-4) 501)
(= (speed Ambulance-4) 48)

(= (loaded-seats Ambulance-5) 0)
(= (seats Ambulance-5) 3)
(is-at Ambulance-5 HOS)
(= (move-consumption-rate Ambulance-5) 1.1)
(= (transport-consumption-rate Ambulance-5) 1.75)
(= (fuel Ambulance-5) 969)
(= (speed Ambulance-5) 60)

(= (loaded-seats Ambulance-6) 0)
(= (seats Ambulance-6) 1)
(is-at Ambulance-6 HOS)
(= (move-consumption-rate Ambulance-6) 1.33)
(= (transport-consumption-rate Ambulance-6) 1.79)
(= (fuel Ambulance-6) 831)
(= (speed Ambulance-6) 41)

(= (loaded-seats Ambulance-7) 0)
(= (seats Ambulance-7) 2)
(is-at Ambulance-7 HOS)
(= (move-consumption-rate Ambulance-7) 1.05)
(= (transport-consumption-rate Ambulance-7) 1.53)
(= (fuel Ambulance-7) 961)
(= (speed Ambulance-7) 55)

(= (loaded-seats Ambulance-8) 0)
(= (seats Ambulance-8) 2)
(is-at Ambulance-8 HOS)
(= (move-consumption-rate Ambulance-8) 1.31)
(= (transport-consumption-rate Ambulance-8) 1.98)
(= (fuel Ambulance-8) 734)
(= (speed Ambulance-8) 50)



    


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
