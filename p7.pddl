(define (problem p07)
  (:domain rescue)
  (:objects truck1 - truck
            ambulance1 - ambulance
            robot1 robot2 robot3 - robot
            DR ROB TRU HOS - location
            v1 v2 - victim
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

    (= (distance TRU ROB) 100)
    (= (distance ROB TRU) 100)

    (= (distance ROB DR) 250)
    (= (distance DR ROB) 250)


    (= (distance DR HOS) 150)
    (= (distance HOS DR) 150)

    (= (distance TRU DR) 200)
    (= (distance DR TRU) 200)

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
      (forall (?v - victim) (is-at ?v HOS))
      ;(is-at v1 HOS)
      ;(is-at v2 HOS)
    )
  )
  
  (:metric minimize (total-time))
)
