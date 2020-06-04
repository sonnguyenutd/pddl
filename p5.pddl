(define (problem p5)
  (:domain rescue)
  (:objects truck1 - truck
            ambulance1 - ambulance
            robot1 robot2 robot3 - robot
  )
  (:init
    ;truck1
    (= (seats truck1) 3)  
    (= (loaded-seats truck1) 0)
    (is-at truck1 TRU)
    (= (move-consumption-rate truck1) 1.0)  
    (= (transport-consumption-rate truck1) 1.5)  
    (= (fuel truck1) 1000)   
    (= (speed truck1) 15)  
    

    ;ambulance1
    (= (loaded-seats ambulance1) 0)
    (= (seats ambulance1) 2) 
    (is-at ambulance1 HOS)
    (= (move-consumption-rate ambulance1) 1.5)   
    (= (transport-consumption-rate ambulance1) 2.0)  
    (= (fuel ambulance1) 1000)    
    (= (speed ambulance1) 10)  
     

    ;robot1
    (is-at robot1 ROB)
    (= (fuel robot1) 1000) 
    (is-available robot1)
    

    ;robot2
    (is-at robot2 ROB) 
    (= (fuel robot2) 1000)
    (is-available robot2)

    ;robot3
    (is-at robot3 ROB)
    (= (fuel robot3) 1000)  
    (is-available robot3)
    
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
    (= (total-fuel-truck) 0)
    (= (total-fuel-ambulance) 0)
  )

  (:goal
    (and
      ;(forall (?v - robot) (is-on-vehicle ?v truck1))
      ;(forall (?v - robot) (is-at ?v DR))
      (forall (?v - victim) (is-at ?v HOS))
      ;(is-at truck1 DR)
      ;(is-at truck1 ROB)
    )
  )
  
  (:metric 
        ;minimize (total-fuel-used)
        minimize (total-time)
  )
)
