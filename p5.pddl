(define (problem p02)
  (:domain rescue)
  (:objects truck1 - truck
            ambulance1 - ambulance
            robot1 robot2 robot3 - robot

            DR ROB TRU HOS - location
            v1 v2 - victim
            d1 d2 d3 - debris
  )
  (:init
    ;truck1
    (= (seats truck1) 3)  
    (= (loaded-seats truck1) 0)
    (at 30 (is-at truck1 TRU))
    (= (consumption-rate truck1) 1.0)  
    (= (fuel truck1) 1000)   
    (= (speed truck1) 15)  
    (is-available truck1)   

    ;ambulance1
    (= (loaded-seats ambulance1) 0)
    (= (seats ambulance1) 2) 
    (is-at ambulance1 HOS)
    (= (consumption-rate ambulance1) 1.5)   
    (= (fuel ambulance1) 1000)    
    (= (speed ambulance1) 10)  
    (is-available ambulance1)   

    ;robot1
    (is-at robot1 ROB)
    (= (cleaning-p robot1) 3)
    (= (consumption-rate robot1) 3)   
    (= (fuel robot1) 1000) 
    (is-available robot1)  

    ;robot2
    (is-at robot2 ROB)
    (= (cleaning-p robot2) 4)
    (= (consumption-rate robot2) 4)   
    (= (fuel robot2) 1000)
    (is-available robot2)    

    ;robot3
    (is-at robot3 ROB)
    (= (cleaning-p robot3) 5)
    (= (consumption-rate robot3) 5)   
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

    ;debris
    (is-at d1 DR)
    (is-at d2 DR)
    (is-at d3 DR)

    (= (size d1) 10)
    (= (size d2) 50)
    (= (size d3) 30)

    ;Global metric
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
        minimize (total-fuel-used)
  )
)
