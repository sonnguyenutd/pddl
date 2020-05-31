(define (problem p5)
  (:domain rescue)
  (:objects truck1 - truck
            ambulance1 - ambulance
            robot1 - robot

            ABSTRACT-LOC-TRU ABSTRACT-LOC-AMB DR ROB TRU HOS - location
            v1 v2 - victim
            d - debris
  )
  (:init
    ;truck1
    ;(is-at truck1 TRU)
    (is-at truck1 ABSTRACT-LOC)
    ;(= (seats truck1) 3)  
    ;(= (loaded-seats truck1) 0)
    ;(= (consumption-rate truck1) 1.0)  
    ;(= (fuel truck1) 1000)   
    ;(= (speed truck1) 15)  
    (is-available truck1)
    ;(= (moved-distance truck1) 0)  

    ;ambulance1
    ;(is-at ambulance1 HOS)
    (is-at ambulance1 ABSTRACT-LOC-AMB)
    ;(= (loaded-seats ambulance1) 0)
    ;(= (seats ambulance1) 2) 
    ;(= (consumption-rate ambulance1) 1.5)   
    ;(= (fuel ambulance1) 1000)    
    ;(= (speed ambulance1) 10)  
    (is-available ambulance1) 
    ;(= (moved-distance ambulance1) 0)  
  
    ;robot1
    (is-at robot1 ROB)
    ;(= (cleaning-p robot1) 3)
    ;(= (consumption-rate robot1) 3)   
    ;(= (fuel robot1) 1000) 
    (is-available robot1)  
    
    ;----------------------------------
    ;Map
    ;(= (distance TRU ROB) 100)
    ;(= (distance ROB TRU) 100)
    (is-connected TRU ROB)
    (is-connected ROB TRU)

    ;(= (distance ROB DR) 250)
    ;(= (distance DR ROB) 250)
    (is-connected ROB DR)
    (is-connected DR ROB)

    ;(= (distance DR HOS) 150)
    ;(= (distance HOS DR) 150)
    (is-connected DR HOS)
    (is-connected HOS DR)

    ;(= (distance TRU DR) 200)
    ;(= (distance DR TRU) 200)
    (is-connected TRU DR)
    (is-connected DR TRU)


    ;Victims
    (is-at v1 DR)
    (is-at v2 DR)

    ;debris
    (is-at d DR)
    (= (size d) 50)

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
