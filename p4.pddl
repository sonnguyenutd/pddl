(define (problem p02)
  (:domain rescue)
  (:objects truck1 - truck
            ambulance1 - ambulance
            robot1 robot2 robot3 - robot
            DR ROB TRU HOS - location
            v1 v2 - victim
            ;d1 d2 d3 - debris
  )
  (:init
    (= (loaded-seats truck1) 0)
    (= (loaded-seats ambulance1) 0)

    (= (seats ambulance1) 2) 
    (= (seats truck1) 3)  

    (is-at truck1 TRU)

    (is-at ambulance1 HOS)

    (is-at robot1 ROB)
    (is-at robot2 ROB)
    (is-at robot3 ROB)

    (is-at v1 DR)
    (is-at v2 DR)

    (is-at d1 DR)
    (is-at d2 DR)
    (is-at d3 DR)

    (= (size d1) 10)
    (= (size d2) 50)
    (= (size d3) 30)

    (= (cleaning-performance robot1) 3)
    (= (cleaning-performance robot2) 4)
    (= (cleaning-performance robot3) 5)

    (= (distance TRU ROB) 100)
    (= (distance ROB TRU) 100)

    (= (moving-consumption-rate truck1 TRU ROB) 1.0)  
    (= (moving-consumption-rate truck1 ROB TRU) 1.0)    
    (= (moving-consumption-rate ambulance1 TRU ROB) 1.5)   
    (= (moving-consumption-rate ambulance1 ROB TRU) 1.5)   

    (= (distance ROB DR) 250)
    (= (distance DR ROB) 250)

    (= (moving-consumption-rate truck1 ROB DR) 4.0)  
    (= (moving-consumption-rate truck1 DR ROB) 4.0)    
    (= (moving-consumption-rate ambulance1 ROB DR) 1.0)   
    (= (moving-consumption-rate ambulance1 DR ROB) 1.0)   

    (= (distance DR HOS) 150)
    (= (distance HOS DR) 150)

    (= (moving-consumption-rate truck1 DR HOS) 1.5)  
    (= (moving-consumption-rate truck1 HOS DR) 1.5)    
    (= (moving-consumption-rate ambulance1 DR HOS) 5.0)   
    (= (moving-consumption-rate ambulance1 HOS DR) 5.0)   

    (= (distance TRU DR) 200)
    (= (distance DR TRU) 200)
    (= (moving-consumption-rate truck1 TRU DR) 2.0)  
    (= (moving-consumption-rate truck1 DR TRU) 2.0)    
    (= (moving-consumption-rate ambulance1 TRU DR) 3.0)   
    (= (moving-consumption-rate ambulance1 DR TRU) 3.0)   
   


    (= (fuel truck1) 1000)    
    (= (fuel ambulance1) 1000)    
    (= (fuel robot1) 1000)    
    (= (fuel robot2) 1000)    
    (= (fuel robot3) 1000)    

    (= (speed truck1) 15)    
    (= (speed ambulance1) 10)     

    (= (total-fuel-used) 0)
  )

  (:goal
    (and
      ;(forall (?v - robot) (is-on-vehicle ?v truck1))
      ;(forall (?v - robot) (is-at ?v DR))
      ;(forall (?v - victim) (is-at ?v HOS))
      (is-at v1 HOS)
      (is-at v2 HOS)
      (is-at v3 HOS)
    )
  )
  
  (:metric 
        minimize (total-time)
  )
)
