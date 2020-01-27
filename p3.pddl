(define (problem p02)
  (:domain rescue)
  (:objects truck1 - truck
            ambulance1 - ambulance
            robot1 robot2 robot3 - robot
            DR ROB TRU HOS - location
            v1 v2 - victim
            d - debris
  )
  (:init
    (= (loaded-seats truck1) 0)
    (= (loaded-seats ambulance1) 0)

    (= (seats ambulance1) 1) 
    (= (seats truck1) 2)  

    (is-at truck1 TRU)

    (is-at ambulance1 HOS)

    (is-at robot1 ROB)
    (is-at robot2 ROB)
    (is-at robot3 ROB)

    (is-at v1 DR)
    (is-at v2 DR)
    (is-at d DR)

    (= (size d) 50)

    (= (cleaning-performance robot1) 3)
    (= (cleaning-performance robot2) 4)
    (= (cleaning-performance robot3) 5)

    (= (distance TRU ROB) 10)
    (= (distance ROB TRU) 10)

    (= (distance ROB DR) 25)
    (= (distance DR ROB) 25)

    (= (distance DR HOS) 15)
    (= (distance HOS DR) 15)

    (= (distance TRU DR) 20)
    (= (distance DR TRU) 20)



    (= (fuel truck1) 100)    
    (= (fuel ambulance1) 100)    
    (= (fuel robot1) 100)    
    (= (fuel robot2) 100)    
    (= (fuel robot3) 100)    

    (= (speed truck1) 15)    
    (= (speed ambulance1) 10)     

    (= (moving-consumption-rate truck1) 10)    
    (= (moving-consumption-rate ambulance1) 12)    

    (= (transport-consumption-rate truck1) 12)    
    (= (transport-consumption-rate ambulance1) 15)    

    (= (total-fuel-used) 0)
  )

  (:goal
    (and
      ;(forall (?v - robot) (is-on-vehicle ?v truck1))
      ;(forall (?v - robot) (is-at ?v DR))
      (forall (?v - victim) (is-at ?v HOS))
    )
  )
  
  (:metric 
        minimize (total-time)
  )
)
