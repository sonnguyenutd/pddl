(define (problem p01)
  (:domain rescue)
  (:objects truck1 - truck
            ambulance1 - ambulance
            robot1 robot2 robot3 - robot
            DR ROB TRU HOS - location
            v1 v2 - victim
            d1 d2 d3 - debris
  )
  (:init
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

    (is-covered-by d1 v1)
    (is-covered-by d2 v1)
    (is-covered-by d3 v2)
    (is-covered-by d2 v2)
    (is-covered-by d2 d1)

    (= (num-cover d1) 1)
    (= (num-cover d2) 0)
    (= (num-cover d3) 0)
    (= (num-cover v1) 2)
    (= (num-cover v2) 2)

    (= (distance TRU ROB) 10)
    (= (distance ROB TRU) 10)

    (= (distance ROB DR) 25)
    (= (distance DR ROB) 25)

    (= (distance DR HOS) 15)
    (= (distance HOS DR) 15)

    (= (distance TRU DR) 20)
    (= (distance DR TRU) 20)

    (= (distance d1 d2) 3)
    (= (distance d2 d1) 3)

    (= (distance d3 d1) 4)
    (= (distance d1 d3) 4)

    (= (distance d3 d2) 5)
    (= (distance d2 d3) 5)

    (is-available truck1)
    (is-available ambulance1)
    (is-available robot1)
    (is-available robot2)
    (is-available robot3)

    (= (loaded-seats truck1) 0)
    (= (loaded-seats ambulance1) 0)

    (= (seats ambulance1) 2) 
    (= (seats truck1) 3)    

    (= (fuel truck1) 100)    
    (= (fuel ambulance1) 100)    
    (= (fuel robot1) 100)    
    (= (fuel robot2) 100)    
    (= (fuel robot3) 100)    

    (= (speed truck1) 15)    
    (= (speed ambulance1) 10)    
    (= (speed robot1) 3)    
    (= (speed robot2) 3)    
    (= (speed robot3) 2)    

    (= (moving-consumption-rate truck1) 10)    
    (= (moving-consumption-rate ambulance1) 12)    

    (= (transport-consumption-rate truck1) 12)    
    (= (transport-consumption-rate ambulance1) 15)    

    (= (total-fuel-used) 0)
  )

  (:goal
    (and
      (forall (?v - victim) (is-at ?v HOS))
    )
  )
  
  (:metric 
        minimize (total-time)
  )
)