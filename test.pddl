(define (problem p5)
  (:domain rescue)



(:objects 
 Truck-11 Truck-12 Truck-13 Truck-14 Truck-15 Truck-16 Truck-17 Truck-18 Truck-19 Truck-20 Truck-21 Truck-22 Truck-23 Truck-24 Truck-25 Truck-26 Truck-27 Truck-28 Truck-29 Truck-30 Truck-31 Truck-32 Truck-33 Truck-34 Truck-35 Truck-36 Truck-37 Truck-38 Truck-39 Truck-40 Truck-41 Truck-42 Truck-43 Truck-44 Truck-45 Truck-46 Truck-47 Truck-48 Truck-49 Truck-50 Truck-51 Truck-52 Truck-53 Truck-54 Truck-55 Truck-56 Truck-57 Truck-58 Truck-59 Truck-60 Truck-61 Truck-62 Truck-63 Truck-64 Truck-65 Truck-66 Truck-67 Truck-68 Truck-69 Truck-70 Truck-71 Truck-72 Truck-73 Truck-74 Truck-75 Truck-76 Truck-77 Truck-78 Truck-79 Truck-80 Truck-81 Truck-82 Truck-83 Truck-84 - truck
 Robot-11 Robot-12 Robot-13 Robot-14 Robot-15 Robot-16 Robot-17 Robot-18 Robot-19 Robot-20 Robot-21 Robot-22 Robot-23 Robot-24 Robot-25 Robot-26 Robot-27 Robot-28 Robot-29 Robot-30 Robot-31 Robot-32 Robot-33 Robot-34 Robot-35 Robot-36 Robot-37 Robot-38 Robot-39 Robot-40 Robot-41 Robot-42 Robot-43 Robot-44 Robot-45 Robot-46 Robot-47 Robot-48 Robot-49 Robot-50 Robot-51 Robot-52 Robot-53 Robot-54 Robot-55 Robot-56 Robot-57 Robot-58 Robot-59 Robot-60 Robot-61 Robot-62 Robot-63 Robot-64 Robot-65 Robot-66 Robot-67 Robot-68 Robot-69 Robot-70 Robot-71 Robot-72 Robot-73 Robot-74 Robot-75 Robot-76 Robot-77 Robot-78 Robot-79 Robot-80 Robot-81 Robot-82 Robot-83 Robot-84 Robot-85 Robot-86 Robot-87 Robot-88 Robot-89 Robot-90 Robot-91 Robot-92 Robot-93 Robot-94 Robot-95 Robot-96 Robot-97 Robot-98 Robot-99 Robot-100 Robot-101 Robot-102 Robot-103 - robot
 Ambulance-11 Ambulance-12 Ambulance-13 Ambulance-14 Ambulance-15 Ambulance-16 Ambulance-17 Ambulance-18 Ambulance-19 Ambulance-20 Ambulance-21 Ambulance-22 Ambulance-23 Ambulance-24 Ambulance-25 Ambulance-26 Ambulance-27 Ambulance-28 Ambulance-29 Ambulance-30 Ambulance-31 Ambulance-32 Ambulance-33 Ambulance-34 Ambulance-35 Ambulance-36 Ambulance-37 Ambulance-38 Ambulance-39 Ambulance-40 Ambulance-41 Ambulance-42 Ambulance-43 Ambulance-44 Ambulance-45 Ambulance-46 Ambulance-47 Ambulance-48 Ambulance-49 Ambulance-50 Ambulance-51 Ambulance-52 Ambulance-53 Ambulance-54 Ambulance-55 Ambulance-56 Ambulance-57 Ambulance-58 Ambulance-59 Ambulance-60 Ambulance-61 Ambulance-62 Ambulance-63 Ambulance-64 Ambulance-65 - ambulance
)
(:init 
(= (loaded-seats Truck-11) 0)
(= (seats Truck-11) 5)
(is-at Truck-11 TRU)
(= (move-consumption-rate Truck-11) 1.4)
(= (transport-consumption-rate Truck-11) 1.8)
(= (fuel Truck-11) 44456)
(= (speed Truck-11) 46)

(= (loaded-seats Truck-12) 0)
(= (seats Truck-12) 4)
(is-at Truck-12 TRU)
(= (move-consumption-rate Truck-12) 1.1)
(= (transport-consumption-rate Truck-12) 2.3)
(= (fuel Truck-12) 35636)
(= (speed Truck-12) 51)

(= (loaded-seats Truck-13) 0)
(= (seats Truck-13) 3)
(is-at Truck-13 TRU)
(= (move-consumption-rate Truck-13) 1.1)
(= (transport-consumption-rate Truck-13) 2.0)
(= (fuel Truck-13) 35419)
(= (speed Truck-13) 40)

(= (loaded-seats Truck-14) 0)
(= (seats Truck-14) 5)
(is-at Truck-14 TRU)
(= (move-consumption-rate Truck-14) 1.1)
(= (transport-consumption-rate Truck-14) 2.0)
(= (fuel Truck-14) 49387)
(= (speed Truck-14) 57)

(= (loaded-seats Truck-15) 0)
(= (seats Truck-15) 4)
(is-at Truck-15 TRU)
(= (move-consumption-rate Truck-15) 1.2)
(= (transport-consumption-rate Truck-15) 2.3)
(= (fuel Truck-15) 46040)
(= (speed Truck-15) 41)

(= (loaded-seats Truck-16) 0)
(= (seats Truck-16) 3)
(is-at Truck-16 TRU)
(= (move-consumption-rate Truck-16) 1.3)
(= (transport-consumption-rate Truck-16) 2.0)
(= (fuel Truck-16) 34277)
(= (speed Truck-16) 41)

(= (loaded-seats Truck-17) 0)
(= (seats Truck-17) 3)
(is-at Truck-17 TRU)
(= (move-consumption-rate Truck-17) 1.1)
(= (transport-consumption-rate Truck-17) 2.2)
(= (fuel Truck-17) 44546)
(= (speed Truck-17) 57)

(= (loaded-seats Truck-18) 0)
(= (seats Truck-18) 4)
(is-at Truck-18 TRU)
(= (move-consumption-rate Truck-18) 1.5)
(= (transport-consumption-rate Truck-18) 2.1)
(= (fuel Truck-18) 38655)
(= (speed Truck-18) 44)

(= (loaded-seats Truck-19) 0)
(= (seats Truck-19) 5)
(is-at Truck-19 TRU)
(= (move-consumption-rate Truck-19) 1.2)
(= (transport-consumption-rate Truck-19) 2.4)
(= (fuel Truck-19) 33437)
(= (speed Truck-19) 42)

(= (loaded-seats Truck-20) 0)
(= (seats Truck-20) 3)
(is-at Truck-20 TRU)
(= (move-consumption-rate Truck-20) 1.0)
(= (transport-consumption-rate Truck-20) 1.9)
(= (fuel Truck-20) 46964)
(= (speed Truck-20) 54)

(= (loaded-seats Truck-21) 0)
(= (seats Truck-21) 3)
(is-at Truck-21 TRU)
(= (move-consumption-rate Truck-21) 1.7)
(= (transport-consumption-rate Truck-21) 2.3)
(= (fuel Truck-21) 33126)
(= (speed Truck-21) 52)

(= (loaded-seats Truck-22) 0)
(= (seats Truck-22) 2)
(is-at Truck-22 TRU)
(= (move-consumption-rate Truck-22) 1.5)
(= (transport-consumption-rate Truck-22) 2.5)
(= (fuel Truck-22) 36504)
(= (speed Truck-22) 56)

(= (loaded-seats Truck-23) 0)
(= (seats Truck-23) 3)
(is-at Truck-23 TRU)
(= (move-consumption-rate Truck-23) 1.2)
(= (transport-consumption-rate Truck-23) 2.5)
(= (fuel Truck-23) 37158)
(= (speed Truck-23) 60)

(= (loaded-seats Truck-24) 0)
(= (seats Truck-24) 5)
(is-at Truck-24 TRU)
(= (move-consumption-rate Truck-24) 1.2)
(= (transport-consumption-rate Truck-24) 1.8)
(= (fuel Truck-24) 38530)
(= (speed Truck-24) 53)

(= (loaded-seats Truck-25) 0)
(= (seats Truck-25) 2)
(is-at Truck-25 TRU)
(= (move-consumption-rate Truck-25) 1.5)
(= (transport-consumption-rate Truck-25) 2.0)
(= (fuel Truck-25) 37499)
(= (speed Truck-25) 42)

(= (loaded-seats Truck-26) 0)
(= (seats Truck-26) 5)
(is-at Truck-26 TRU)
(= (move-consumption-rate Truck-26) 1.1)
(= (transport-consumption-rate Truck-26) 2.3)
(= (fuel Truck-26) 37445)
(= (speed Truck-26) 59)

(= (loaded-seats Truck-27) 0)
(= (seats Truck-27) 5)
(is-at Truck-27 TRU)
(= (move-consumption-rate Truck-27) 1.5)
(= (transport-consumption-rate Truck-27) 1.9)
(= (fuel Truck-27) 39221)
(= (speed Truck-27) 51)

(= (loaded-seats Truck-28) 0)
(= (seats Truck-28) 4)
(is-at Truck-28 TRU)
(= (move-consumption-rate Truck-28) 1.3)
(= (transport-consumption-rate Truck-28) 2.4)
(= (fuel Truck-28) 37156)
(= (speed Truck-28) 50)

(= (loaded-seats Truck-29) 0)
(= (seats Truck-29) 2)
(is-at Truck-29 TRU)
(= (move-consumption-rate Truck-29) 1.1)
(= (transport-consumption-rate Truck-29) 2.1)
(= (fuel Truck-29) 32599)
(= (speed Truck-29) 48)

(= (loaded-seats Truck-30) 0)
(= (seats Truck-30) 2)
(is-at Truck-30 TRU)
(= (move-consumption-rate Truck-30) 1.6)
(= (transport-consumption-rate Truck-30) 1.9)
(= (fuel Truck-30) 32304)
(= (speed Truck-30) 59)

(= (loaded-seats Truck-31) 0)
(= (seats Truck-31) 3)
(is-at Truck-31 TRU)
(= (move-consumption-rate Truck-31) 1.8)
(= (transport-consumption-rate Truck-31) 2.4)
(= (fuel Truck-31) 36144)
(= (speed Truck-31) 48)

(= (loaded-seats Truck-32) 0)
(= (seats Truck-32) 4)
(is-at Truck-32 TRU)
(= (move-consumption-rate Truck-32) 1.7)
(= (transport-consumption-rate Truck-32) 2.0)
(= (fuel Truck-32) 38300)
(= (speed Truck-32) 52)

(= (loaded-seats Truck-33) 0)
(= (seats Truck-33) 5)
(is-at Truck-33 TRU)
(= (move-consumption-rate Truck-33) 1.8)
(= (transport-consumption-rate Truck-33) 1.8)
(= (fuel Truck-33) 47661)
(= (speed Truck-33) 40)

(= (loaded-seats Truck-34) 0)
(= (seats Truck-34) 5)
(is-at Truck-34 TRU)
(= (move-consumption-rate Truck-34) 1.2)
(= (transport-consumption-rate Truck-34) 2.0)
(= (fuel Truck-34) 31140)
(= (speed Truck-34) 59)

(= (loaded-seats Truck-35) 0)
(= (seats Truck-35) 5)
(is-at Truck-35 TRU)
(= (move-consumption-rate Truck-35) 1.7)
(= (transport-consumption-rate Truck-35) 1.9)
(= (fuel Truck-35) 40789)
(= (speed Truck-35) 49)

(= (loaded-seats Truck-36) 0)
(= (seats Truck-36) 4)
(is-at Truck-36 TRU)
(= (move-consumption-rate Truck-36) 1.7)
(= (transport-consumption-rate Truck-36) 2.4)
(= (fuel Truck-36) 49316)
(= (speed Truck-36) 52)

(= (loaded-seats Truck-37) 0)
(= (seats Truck-37) 2)
(is-at Truck-37 TRU)
(= (move-consumption-rate Truck-37) 1.2)
(= (transport-consumption-rate Truck-37) 1.9)
(= (fuel Truck-37) 34149)
(= (speed Truck-37) 46)

(= (loaded-seats Truck-38) 0)
(= (seats Truck-38) 5)
(is-at Truck-38 TRU)
(= (move-consumption-rate Truck-38) 1.0)
(= (transport-consumption-rate Truck-38) 2.1)
(= (fuel Truck-38) 30416)
(= (speed Truck-38) 59)

(= (loaded-seats Truck-39) 0)
(= (seats Truck-39) 2)
(is-at Truck-39 TRU)
(= (move-consumption-rate Truck-39) 1.1)
(= (transport-consumption-rate Truck-39) 2.3)
(= (fuel Truck-39) 44702)
(= (speed Truck-39) 48)

(= (loaded-seats Truck-40) 0)
(= (seats Truck-40) 3)
(is-at Truck-40 TRU)
(= (move-consumption-rate Truck-40) 1.1)
(= (transport-consumption-rate Truck-40) 2.3)
(= (fuel Truck-40) 49374)
(= (speed Truck-40) 47)

(= (loaded-seats Truck-41) 0)
(= (seats Truck-41) 5)
(is-at Truck-41 TRU)
(= (move-consumption-rate Truck-41) 1.8)
(= (transport-consumption-rate Truck-41) 2.2)
(= (fuel Truck-41) 43850)
(= (speed Truck-41) 41)

(= (loaded-seats Truck-42) 0)
(= (seats Truck-42) 3)
(is-at Truck-42 TRU)
(= (move-consumption-rate Truck-42) 1.0)
(= (transport-consumption-rate Truck-42) 2.2)
(= (fuel Truck-42) 34924)
(= (speed Truck-42) 50)

(= (loaded-seats Truck-43) 0)
(= (seats Truck-43) 2)
(is-at Truck-43 TRU)
(= (move-consumption-rate Truck-43) 1.5)
(= (transport-consumption-rate Truck-43) 2.0)
(= (fuel Truck-43) 37919)
(= (speed Truck-43) 42)

(= (loaded-seats Truck-44) 0)
(= (seats Truck-44) 5)
(is-at Truck-44 TRU)
(= (move-consumption-rate Truck-44) 1.0)
(= (transport-consumption-rate Truck-44) 1.9)
(= (fuel Truck-44) 43546)
(= (speed Truck-44) 42)

(= (loaded-seats Truck-45) 0)
(= (seats Truck-45) 5)
(is-at Truck-45 TRU)
(= (move-consumption-rate Truck-45) 1.1)
(= (transport-consumption-rate Truck-45) 2.0)
(= (fuel Truck-45) 47082)
(= (speed Truck-45) 45)

(= (loaded-seats Truck-46) 0)
(= (seats Truck-46) 5)
(is-at Truck-46 TRU)
(= (move-consumption-rate Truck-46) 1.3)
(= (transport-consumption-rate Truck-46) 2.4)
(= (fuel Truck-46) 36527)
(= (speed Truck-46) 55)

(= (loaded-seats Truck-47) 0)
(= (seats Truck-47) 2)
(is-at Truck-47 TRU)
(= (move-consumption-rate Truck-47) 1.1)
(= (transport-consumption-rate Truck-47) 1.9)
(= (fuel Truck-47) 34390)
(= (speed Truck-47) 51)

(= (loaded-seats Truck-48) 0)
(= (seats Truck-48) 4)
(is-at Truck-48 TRU)
(= (move-consumption-rate Truck-48) 1.6)
(= (transport-consumption-rate Truck-48) 2.3)
(= (fuel Truck-48) 47554)
(= (speed Truck-48) 49)

(= (loaded-seats Truck-49) 0)
(= (seats Truck-49) 4)
(is-at Truck-49 TRU)
(= (move-consumption-rate Truck-49) 1.4)
(= (transport-consumption-rate Truck-49) 1.8)
(= (fuel Truck-49) 37818)
(= (speed Truck-49) 55)

(= (loaded-seats Truck-50) 0)
(= (seats Truck-50) 2)
(is-at Truck-50 TRU)
(= (move-consumption-rate Truck-50) 1.6)
(= (transport-consumption-rate Truck-50) 2.3)
(= (fuel Truck-50) 46249)
(= (speed Truck-50) 55)

(= (loaded-seats Truck-51) 0)
(= (seats Truck-51) 2)
(is-at Truck-51 TRU)
(= (move-consumption-rate Truck-51) 1.0)
(= (transport-consumption-rate Truck-51) 2.2)
(= (fuel Truck-51) 43702)
(= (speed Truck-51) 56)

(= (loaded-seats Truck-52) 0)
(= (seats Truck-52) 2)
(is-at Truck-52 TRU)
(= (move-consumption-rate Truck-52) 1.4)
(= (transport-consumption-rate Truck-52) 1.9)
(= (fuel Truck-52) 35043)
(= (speed Truck-52) 51)

(= (loaded-seats Truck-53) 0)
(= (seats Truck-53) 5)
(is-at Truck-53 TRU)
(= (move-consumption-rate Truck-53) 1.1)
(= (transport-consumption-rate Truck-53) 1.9)
(= (fuel Truck-53) 40795)
(= (speed Truck-53) 53)

(= (loaded-seats Truck-54) 0)
(= (seats Truck-54) 2)
(is-at Truck-54 TRU)
(= (move-consumption-rate Truck-54) 1.7)
(= (transport-consumption-rate Truck-54) 2.3)
(= (fuel Truck-54) 48307)
(= (speed Truck-54) 54)

(= (loaded-seats Truck-55) 0)
(= (seats Truck-55) 2)
(is-at Truck-55 TRU)
(= (move-consumption-rate Truck-55) 1.5)
(= (transport-consumption-rate Truck-55) 2.5)
(= (fuel Truck-55) 34451)
(= (speed Truck-55) 54)

(= (loaded-seats Truck-56) 0)
(= (seats Truck-56) 5)
(is-at Truck-56 TRU)
(= (move-consumption-rate Truck-56) 1.5)
(= (transport-consumption-rate Truck-56) 2.1)
(= (fuel Truck-56) 33203)
(= (speed Truck-56) 53)

(= (loaded-seats Truck-57) 0)
(= (seats Truck-57) 2)
(is-at Truck-57 TRU)
(= (move-consumption-rate Truck-57) 1.6)
(= (transport-consumption-rate Truck-57) 2.2)
(= (fuel Truck-57) 39008)
(= (speed Truck-57) 44)

(= (loaded-seats Truck-58) 0)
(= (seats Truck-58) 4)
(is-at Truck-58 TRU)
(= (move-consumption-rate Truck-58) 1.4)
(= (transport-consumption-rate Truck-58) 2.2)
(= (fuel Truck-58) 47488)
(= (speed Truck-58) 51)

(= (loaded-seats Truck-59) 0)
(= (seats Truck-59) 2)
(is-at Truck-59 TRU)
(= (move-consumption-rate Truck-59) 1.1)
(= (transport-consumption-rate Truck-59) 2.3)
(= (fuel Truck-59) 36495)
(= (speed Truck-59) 54)

(= (loaded-seats Truck-60) 0)
(= (seats Truck-60) 3)
(is-at Truck-60 TRU)
(= (move-consumption-rate Truck-60) 1.6)
(= (transport-consumption-rate Truck-60) 2.3)
(= (fuel Truck-60) 38584)
(= (speed Truck-60) 57)

(= (loaded-seats Truck-61) 0)
(= (seats Truck-61) 4)
(is-at Truck-61 TRU)
(= (move-consumption-rate Truck-61) 1.2)
(= (transport-consumption-rate Truck-61) 2.0)
(= (fuel Truck-61) 35764)
(= (speed Truck-61) 46)

(= (loaded-seats Truck-62) 0)
(= (seats Truck-62) 4)
(is-at Truck-62 TRU)
(= (move-consumption-rate Truck-62) 1.1)
(= (transport-consumption-rate Truck-62) 2.1)
(= (fuel Truck-62) 37072)
(= (speed Truck-62) 47)

(= (loaded-seats Truck-63) 0)
(= (seats Truck-63) 5)
(is-at Truck-63 TRU)
(= (move-consumption-rate Truck-63) 1.3)
(= (transport-consumption-rate Truck-63) 2.0)
(= (fuel Truck-63) 47404)
(= (speed Truck-63) 42)

(= (loaded-seats Truck-64) 0)
(= (seats Truck-64) 3)
(is-at Truck-64 TRU)
(= (move-consumption-rate Truck-64) 1.0)
(= (transport-consumption-rate Truck-64) 2.4)
(= (fuel Truck-64) 45907)
(= (speed Truck-64) 48)

(= (loaded-seats Truck-65) 0)
(= (seats Truck-65) 3)
(is-at Truck-65 TRU)
(= (move-consumption-rate Truck-65) 1.2)
(= (transport-consumption-rate Truck-65) 2.3)
(= (fuel Truck-65) 33390)
(= (speed Truck-65) 49)

(= (loaded-seats Truck-66) 0)
(= (seats Truck-66) 4)
(is-at Truck-66 TRU)
(= (move-consumption-rate Truck-66) 1.5)
(= (transport-consumption-rate Truck-66) 1.9)
(= (fuel Truck-66) 41500)
(= (speed Truck-66) 47)

(= (loaded-seats Truck-67) 0)
(= (seats Truck-67) 4)
(is-at Truck-67 TRU)
(= (move-consumption-rate Truck-67) 1.1)
(= (transport-consumption-rate Truck-67) 2.5)
(= (fuel Truck-67) 42902)
(= (speed Truck-67) 49)

(= (loaded-seats Truck-68) 0)
(= (seats Truck-68) 5)
(is-at Truck-68 TRU)
(= (move-consumption-rate Truck-68) 1.1)
(= (transport-consumption-rate Truck-68) 2.4)
(= (fuel Truck-68) 47314)
(= (speed Truck-68) 46)

(= (loaded-seats Truck-69) 0)
(= (seats Truck-69) 2)
(is-at Truck-69 TRU)
(= (move-consumption-rate Truck-69) 1.1)
(= (transport-consumption-rate Truck-69) 2.2)
(= (fuel Truck-69) 37668)
(= (speed Truck-69) 54)

(= (loaded-seats Truck-70) 0)
(= (seats Truck-70) 4)
(is-at Truck-70 TRU)
(= (move-consumption-rate Truck-70) 1.4)
(= (transport-consumption-rate Truck-70) 1.9)
(= (fuel Truck-70) 43297)
(= (speed Truck-70) 52)

(= (loaded-seats Truck-71) 0)
(= (seats Truck-71) 2)
(is-at Truck-71 TRU)
(= (move-consumption-rate Truck-71) 1.8)
(= (transport-consumption-rate Truck-71) 2.1)
(= (fuel Truck-71) 41286)
(= (speed Truck-71) 44)

(= (loaded-seats Truck-72) 0)
(= (seats Truck-72) 2)
(is-at Truck-72 TRU)
(= (move-consumption-rate Truck-72) 1.6)
(= (transport-consumption-rate Truck-72) 1.9)
(= (fuel Truck-72) 48320)
(= (speed Truck-72) 60)

(= (loaded-seats Truck-73) 0)
(= (seats Truck-73) 4)
(is-at Truck-73 TRU)
(= (move-consumption-rate Truck-73) 1.6)
(= (transport-consumption-rate Truck-73) 2.4)
(= (fuel Truck-73) 47760)
(= (speed Truck-73) 47)

(= (loaded-seats Truck-74) 0)
(= (seats Truck-74) 5)
(is-at Truck-74 TRU)
(= (move-consumption-rate Truck-74) 1.3)
(= (transport-consumption-rate Truck-74) 2.2)
(= (fuel Truck-74) 44753)
(= (speed Truck-74) 42)

(= (loaded-seats Truck-75) 0)
(= (seats Truck-75) 2)
(is-at Truck-75 TRU)
(= (move-consumption-rate Truck-75) 1.1)
(= (transport-consumption-rate Truck-75) 2.2)
(= (fuel Truck-75) 39261)
(= (speed Truck-75) 57)

(= (loaded-seats Truck-76) 0)
(= (seats Truck-76) 4)
(is-at Truck-76 TRU)
(= (move-consumption-rate Truck-76) 1.3)
(= (transport-consumption-rate Truck-76) 2.2)
(= (fuel Truck-76) 45376)
(= (speed Truck-76) 57)

(= (loaded-seats Truck-77) 0)
(= (seats Truck-77) 5)
(is-at Truck-77 TRU)
(= (move-consumption-rate Truck-77) 1.4)
(= (transport-consumption-rate Truck-77) 2.3)
(= (fuel Truck-77) 30462)
(= (speed Truck-77) 51)

(= (loaded-seats Truck-78) 0)
(= (seats Truck-78) 4)
(is-at Truck-78 TRU)
(= (move-consumption-rate Truck-78) 1.2)
(= (transport-consumption-rate Truck-78) 2.1)
(= (fuel Truck-78) 41297)
(= (speed Truck-78) 57)

(= (loaded-seats Truck-79) 0)
(= (seats Truck-79) 5)
(is-at Truck-79 TRU)
(= (move-consumption-rate Truck-79) 1.8)
(= (transport-consumption-rate Truck-79) 2.1)
(= (fuel Truck-79) 49677)
(= (speed Truck-79) 40)

(= (loaded-seats Truck-80) 0)
(= (seats Truck-80) 5)
(is-at Truck-80 TRU)
(= (move-consumption-rate Truck-80) 1.7)
(= (transport-consumption-rate Truck-80) 2.0)
(= (fuel Truck-80) 41526)
(= (speed Truck-80) 41)

(= (loaded-seats Truck-81) 0)
(= (seats Truck-81) 5)
(is-at Truck-81 TRU)
(= (move-consumption-rate Truck-81) 1.0)
(= (transport-consumption-rate Truck-81) 2.4)
(= (fuel Truck-81) 42753)
(= (speed Truck-81) 54)

(= (loaded-seats Truck-82) 0)
(= (seats Truck-82) 3)
(is-at Truck-82 TRU)
(= (move-consumption-rate Truck-82) 1.4)
(= (transport-consumption-rate Truck-82) 2.2)
(= (fuel Truck-82) 34741)
(= (speed Truck-82) 41)

(= (loaded-seats Truck-83) 0)
(= (seats Truck-83) 5)
(is-at Truck-83 TRU)
(= (move-consumption-rate Truck-83) 1.7)
(= (transport-consumption-rate Truck-83) 2.3)
(= (fuel Truck-83) 39045)
(= (speed Truck-83) 49)

(= (loaded-seats Truck-84) 0)
(= (seats Truck-84) 3)
(is-at Truck-84 TRU)
(= (move-consumption-rate Truck-84) 1.6)
(= (transport-consumption-rate Truck-84) 2.4)
(= (fuel Truck-84) 46001)
(= (speed Truck-84) 55)

(is-at Robot-11 ROB)
(= (fuel Robot-11) 600)
(is-available Robot-11)

(is-at Robot-12 ROB)
(= (fuel Robot-12) 751)
(is-available Robot-12)

(is-at Robot-13 ROB)
(= (fuel Robot-13) 671)
(is-available Robot-13)

(is-at Robot-14 ROB)
(= (fuel Robot-14) 664)
(is-available Robot-14)

(is-at Robot-15 ROB)
(= (fuel Robot-15) 911)
(is-available Robot-15)

(is-at Robot-16 ROB)
(= (fuel Robot-16) 702)
(is-available Robot-16)

(is-at Robot-17 ROB)
(= (fuel Robot-17) 532)
(is-available Robot-17)

(is-at Robot-18 ROB)
(= (fuel Robot-18) 771)
(is-available Robot-18)

(is-at Robot-19 ROB)
(= (fuel Robot-19) 634)
(is-available Robot-19)

(is-at Robot-20 ROB)
(= (fuel Robot-20) 530)
(is-available Robot-20)

(is-at Robot-21 ROB)
(= (fuel Robot-21) 979)
(is-available Robot-21)

(is-at Robot-22 ROB)
(= (fuel Robot-22) 801)
(is-available Robot-22)

(is-at Robot-23 ROB)
(= (fuel Robot-23) 753)
(is-available Robot-23)

(is-at Robot-24 ROB)
(= (fuel Robot-24) 546)
(is-available Robot-24)

(is-at Robot-25 ROB)
(= (fuel Robot-25) 837)
(is-available Robot-25)

(is-at Robot-26 ROB)
(= (fuel Robot-26) 622)
(is-available Robot-26)

(is-at Robot-27 ROB)
(= (fuel Robot-27) 617)
(is-available Robot-27)

(is-at Robot-28 ROB)
(= (fuel Robot-28) 793)
(is-available Robot-28)

(is-at Robot-29 ROB)
(= (fuel Robot-29) 901)
(is-available Robot-29)

(is-at Robot-30 ROB)
(= (fuel Robot-30) 957)
(is-available Robot-30)

(is-at Robot-31 ROB)
(= (fuel Robot-31) 839)
(is-available Robot-31)

(is-at Robot-32 ROB)
(= (fuel Robot-32) 683)
(is-available Robot-32)

(is-at Robot-33 ROB)
(= (fuel Robot-33) 682)
(is-available Robot-33)

(is-at Robot-34 ROB)
(= (fuel Robot-34) 923)
(is-available Robot-34)

(is-at Robot-35 ROB)
(= (fuel Robot-35) 906)
(is-available Robot-35)

(is-at Robot-36 ROB)
(= (fuel Robot-36) 958)
(is-available Robot-36)

(is-at Robot-37 ROB)
(= (fuel Robot-37) 686)
(is-available Robot-37)

(is-at Robot-38 ROB)
(= (fuel Robot-38) 928)
(is-available Robot-38)

(is-at Robot-39 ROB)
(= (fuel Robot-39) 828)
(is-available Robot-39)

(is-at Robot-40 ROB)
(= (fuel Robot-40) 983)
(is-available Robot-40)

(is-at Robot-41 ROB)
(= (fuel Robot-41) 981)
(is-available Robot-41)

(is-at Robot-42 ROB)
(= (fuel Robot-42) 880)
(is-available Robot-42)

(is-at Robot-43 ROB)
(= (fuel Robot-43) 989)
(is-available Robot-43)

(is-at Robot-44 ROB)
(= (fuel Robot-44) 759)
(is-available Robot-44)

(is-at Robot-45 ROB)
(= (fuel Robot-45) 813)
(is-available Robot-45)

(is-at Robot-46 ROB)
(= (fuel Robot-46) 695)
(is-available Robot-46)

(is-at Robot-47 ROB)
(= (fuel Robot-47) 767)
(is-available Robot-47)

(is-at Robot-48 ROB)
(= (fuel Robot-48) 659)
(is-available Robot-48)

(is-at Robot-49 ROB)
(= (fuel Robot-49) 565)
(is-available Robot-49)

(is-at Robot-50 ROB)
(= (fuel Robot-50) 762)
(is-available Robot-50)

(is-at Robot-51 ROB)
(= (fuel Robot-51) 500)
(is-available Robot-51)

(is-at Robot-52 ROB)
(= (fuel Robot-52) 531)
(is-available Robot-52)

(is-at Robot-53 ROB)
(= (fuel Robot-53) 558)
(is-available Robot-53)

(is-at Robot-54 ROB)
(= (fuel Robot-54) 896)
(is-available Robot-54)

(is-at Robot-55 ROB)
(= (fuel Robot-55) 724)
(is-available Robot-55)

(is-at Robot-56 ROB)
(= (fuel Robot-56) 501)
(is-available Robot-56)

(is-at Robot-57 ROB)
(= (fuel Robot-57) 527)
(is-available Robot-57)

(is-at Robot-58 ROB)
(= (fuel Robot-58) 521)
(is-available Robot-58)

(is-at Robot-59 ROB)
(= (fuel Robot-59) 699)
(is-available Robot-59)

(is-at Robot-60 ROB)
(= (fuel Robot-60) 779)
(is-available Robot-60)

(is-at Robot-61 ROB)
(= (fuel Robot-61) 885)
(is-available Robot-61)

(is-at Robot-62 ROB)
(= (fuel Robot-62) 790)
(is-available Robot-62)

(is-at Robot-63 ROB)
(= (fuel Robot-63) 727)
(is-available Robot-63)

(is-at Robot-64 ROB)
(= (fuel Robot-64) 848)
(is-available Robot-64)

(is-at Robot-65 ROB)
(= (fuel Robot-65) 733)
(is-available Robot-65)

(is-at Robot-66 ROB)
(= (fuel Robot-66) 968)
(is-available Robot-66)

(is-at Robot-67 ROB)
(= (fuel Robot-67) 937)
(is-available Robot-67)

(is-at Robot-68 ROB)
(= (fuel Robot-68) 937)
(is-available Robot-68)

(is-at Robot-69 ROB)
(= (fuel Robot-69) 956)
(is-available Robot-69)

(is-at Robot-70 ROB)
(= (fuel Robot-70) 969)
(is-available Robot-70)

(is-at Robot-71 ROB)
(= (fuel Robot-71) 538)
(is-available Robot-71)

(is-at Robot-72 ROB)
(= (fuel Robot-72) 659)
(is-available Robot-72)

(is-at Robot-73 ROB)
(= (fuel Robot-73) 611)
(is-available Robot-73)

(is-at Robot-74 ROB)
(= (fuel Robot-74) 662)
(is-available Robot-74)

(is-at Robot-75 ROB)
(= (fuel Robot-75) 813)
(is-available Robot-75)

(is-at Robot-76 ROB)
(= (fuel Robot-76) 973)
(is-available Robot-76)

(is-at Robot-77 ROB)
(= (fuel Robot-77) 775)
(is-available Robot-77)

(is-at Robot-78 ROB)
(= (fuel Robot-78) 771)
(is-available Robot-78)

(is-at Robot-79 ROB)
(= (fuel Robot-79) 983)
(is-available Robot-79)

(is-at Robot-80 ROB)
(= (fuel Robot-80) 985)
(is-available Robot-80)

(is-at Robot-81 ROB)
(= (fuel Robot-81) 763)
(is-available Robot-81)

(is-at Robot-82 ROB)
(= (fuel Robot-82) 804)
(is-available Robot-82)

(is-at Robot-83 ROB)
(= (fuel Robot-83) 743)
(is-available Robot-83)

(is-at Robot-84 ROB)
(= (fuel Robot-84) 734)
(is-available Robot-84)

(is-at Robot-85 ROB)
(= (fuel Robot-85) 868)
(is-available Robot-85)

(is-at Robot-86 ROB)
(= (fuel Robot-86) 823)
(is-available Robot-86)

(is-at Robot-87 ROB)
(= (fuel Robot-87) 942)
(is-available Robot-87)

(is-at Robot-88 ROB)
(= (fuel Robot-88) 554)
(is-available Robot-88)

(is-at Robot-89 ROB)
(= (fuel Robot-89) 948)
(is-available Robot-89)

(is-at Robot-90 ROB)
(= (fuel Robot-90) 600)
(is-available Robot-90)

(is-at Robot-91 ROB)
(= (fuel Robot-91) 908)
(is-available Robot-91)

(is-at Robot-92 ROB)
(= (fuel Robot-92) 606)
(is-available Robot-92)

(is-at Robot-93 ROB)
(= (fuel Robot-93) 540)
(is-available Robot-93)

(is-at Robot-94 ROB)
(= (fuel Robot-94) 846)
(is-available Robot-94)

(is-at Robot-95 ROB)
(= (fuel Robot-95) 856)
(is-available Robot-95)

(is-at Robot-96 ROB)
(= (fuel Robot-96) 656)
(is-available Robot-96)

(is-at Robot-97 ROB)
(= (fuel Robot-97) 799)
(is-available Robot-97)

(is-at Robot-98 ROB)
(= (fuel Robot-98) 562)
(is-available Robot-98)

(is-at Robot-99 ROB)
(= (fuel Robot-99) 585)
(is-available Robot-99)

(is-at Robot-100 ROB)
(= (fuel Robot-100) 761)
(is-available Robot-100)

(is-at Robot-101 ROB)
(= (fuel Robot-101) 686)
(is-available Robot-101)

(is-at Robot-102 ROB)
(= (fuel Robot-102) 794)
(is-available Robot-102)

(is-at Robot-103 ROB)
(= (fuel Robot-103) 987)
(is-available Robot-103)

(= (loaded-seats Ambulance-11) 0)
(= (seats Ambulance-11) 1)
(is-at Ambulance-11 HOS)
(= (move-consumption-rate Ambulance-11) 1.1)
(= (transport-consumption-rate Ambulance-11) 1.8)
(= (fuel Ambulance-11) 43062)
(= (speed Ambulance-11) 51)

(= (loaded-seats Ambulance-12) 0)
(= (seats Ambulance-12) 4)
(is-at Ambulance-12 HOS)
(= (move-consumption-rate Ambulance-12) 1.4)
(= (transport-consumption-rate Ambulance-12) 1.9)
(= (fuel Ambulance-12) 36027)
(= (speed Ambulance-12) 52)

(= (loaded-seats Ambulance-13) 0)
(= (seats Ambulance-13) 3)
(is-at Ambulance-13 HOS)
(= (move-consumption-rate Ambulance-13) 1.2)
(= (transport-consumption-rate Ambulance-13) 1.9)
(= (fuel Ambulance-13) 40699)
(= (speed Ambulance-13) 51)

(= (loaded-seats Ambulance-14) 0)
(= (seats Ambulance-14) 2)
(is-at Ambulance-14 HOS)
(= (move-consumption-rate Ambulance-14) 1.1)
(= (transport-consumption-rate Ambulance-14) 1.7)
(= (fuel Ambulance-14) 30158)
(= (speed Ambulance-14) 55)

(= (loaded-seats Ambulance-15) 0)
(= (seats Ambulance-15) 4)
(is-at Ambulance-15 HOS)
(= (move-consumption-rate Ambulance-15) 1.3)
(= (transport-consumption-rate Ambulance-15) 1.7)
(= (fuel Ambulance-15) 36672)
(= (speed Ambulance-15) 32)

(= (loaded-seats Ambulance-16) 0)
(= (seats Ambulance-16) 1)
(is-at Ambulance-16 HOS)
(= (move-consumption-rate Ambulance-16) 1.1)
(= (transport-consumption-rate Ambulance-16) 1.5)
(= (fuel Ambulance-16) 43563)
(= (speed Ambulance-16) 39)

(= (loaded-seats Ambulance-17) 0)
(= (seats Ambulance-17) 2)
(is-at Ambulance-17 HOS)
(= (move-consumption-rate Ambulance-17) 1.4)
(= (transport-consumption-rate Ambulance-17) 1.6)
(= (fuel Ambulance-17) 37437)
(= (speed Ambulance-17) 40)

(= (loaded-seats Ambulance-18) 0)
(= (seats Ambulance-18) 4)
(is-at Ambulance-18 HOS)
(= (move-consumption-rate Ambulance-18) 1.3)
(= (transport-consumption-rate Ambulance-18) 1.8)
(= (fuel Ambulance-18) 36246)
(= (speed Ambulance-18) 58)

(= (loaded-seats Ambulance-19) 0)
(= (seats Ambulance-19) 3)
(is-at Ambulance-19 HOS)
(= (move-consumption-rate Ambulance-19) 1.3)
(= (transport-consumption-rate Ambulance-19) 1.9)
(= (fuel Ambulance-19) 47321)
(= (speed Ambulance-19) 55)

(= (loaded-seats Ambulance-20) 0)
(= (seats Ambulance-20) 1)
(is-at Ambulance-20 HOS)
(= (move-consumption-rate Ambulance-20) 1.1)
(= (transport-consumption-rate Ambulance-20) 1.9)
(= (fuel Ambulance-20) 48854)
(= (speed Ambulance-20) 36)

(= (loaded-seats Ambulance-21) 0)
(= (seats Ambulance-21) 2)
(is-at Ambulance-21 HOS)
(= (move-consumption-rate Ambulance-21) 1.0)
(= (transport-consumption-rate Ambulance-21) 2.0)
(= (fuel Ambulance-21) 43964)
(= (speed Ambulance-21) 56)

(= (loaded-seats Ambulance-22) 0)
(= (seats Ambulance-22) 2)
(is-at Ambulance-22 HOS)
(= (move-consumption-rate Ambulance-22) 1.2)
(= (transport-consumption-rate Ambulance-22) 1.5)
(= (fuel Ambulance-22) 33606)
(= (speed Ambulance-22) 60)

(= (loaded-seats Ambulance-23) 0)
(= (seats Ambulance-23) 4)
(is-at Ambulance-23 HOS)
(= (move-consumption-rate Ambulance-23) 1.4)
(= (transport-consumption-rate Ambulance-23) 1.8)
(= (fuel Ambulance-23) 42609)
(= (speed Ambulance-23) 59)

(= (loaded-seats Ambulance-24) 0)
(= (seats Ambulance-24) 2)
(is-at Ambulance-24 HOS)
(= (move-consumption-rate Ambulance-24) 1.3)
(= (transport-consumption-rate Ambulance-24) 1.8)
(= (fuel Ambulance-24) 38353)
(= (speed Ambulance-24) 47)

(= (loaded-seats Ambulance-25) 0)
(= (seats Ambulance-25) 1)
(is-at Ambulance-25 HOS)
(= (move-consumption-rate Ambulance-25) 1.4)
(= (transport-consumption-rate Ambulance-25) 1.8)
(= (fuel Ambulance-25) 38642)
(= (speed Ambulance-25) 49)

(= (loaded-seats Ambulance-26) 0)
(= (seats Ambulance-26) 3)
(is-at Ambulance-26 HOS)
(= (move-consumption-rate Ambulance-26) 1.3)
(= (transport-consumption-rate Ambulance-26) 1.7)
(= (fuel Ambulance-26) 40998)
(= (speed Ambulance-26) 49)

(= (loaded-seats Ambulance-27) 0)
(= (seats Ambulance-27) 4)
(is-at Ambulance-27 HOS)
(= (move-consumption-rate Ambulance-27) 1.3)
(= (transport-consumption-rate Ambulance-27) 1.7)
(= (fuel Ambulance-27) 41918)
(= (speed Ambulance-27) 35)

(= (loaded-seats Ambulance-28) 0)
(= (seats Ambulance-28) 3)
(is-at Ambulance-28 HOS)
(= (move-consumption-rate Ambulance-28) 1.3)
(= (transport-consumption-rate Ambulance-28) 1.7)
(= (fuel Ambulance-28) 35188)
(= (speed Ambulance-28) 35)

(= (loaded-seats Ambulance-29) 0)
(= (seats Ambulance-29) 2)
(is-at Ambulance-29 HOS)
(= (move-consumption-rate Ambulance-29) 1.1)
(= (transport-consumption-rate Ambulance-29) 1.6)
(= (fuel Ambulance-29) 37615)
(= (speed Ambulance-29) 37)

(= (loaded-seats Ambulance-30) 0)
(= (seats Ambulance-30) 1)
(is-at Ambulance-30 HOS)
(= (move-consumption-rate Ambulance-30) 1.3)
(= (transport-consumption-rate Ambulance-30) 1.6)
(= (fuel Ambulance-30) 40141)
(= (speed Ambulance-30) 47)

(= (loaded-seats Ambulance-31) 0)
(= (seats Ambulance-31) 3)
(is-at Ambulance-31 HOS)
(= (move-consumption-rate Ambulance-31) 1.0)
(= (transport-consumption-rate Ambulance-31) 1.6)
(= (fuel Ambulance-31) 39487)
(= (speed Ambulance-31) 34)

(= (loaded-seats Ambulance-32) 0)
(= (seats Ambulance-32) 1)
(is-at Ambulance-32 HOS)
(= (move-consumption-rate Ambulance-32) 1.4)
(= (transport-consumption-rate Ambulance-32) 1.8)
(= (fuel Ambulance-32) 39888)
(= (speed Ambulance-32) 38)

(= (loaded-seats Ambulance-33) 0)
(= (seats Ambulance-33) 2)
(is-at Ambulance-33 HOS)
(= (move-consumption-rate Ambulance-33) 1.2)
(= (transport-consumption-rate Ambulance-33) 1.8)
(= (fuel Ambulance-33) 37924)
(= (speed Ambulance-33) 39)

(= (loaded-seats Ambulance-34) 0)
(= (seats Ambulance-34) 2)
(is-at Ambulance-34 HOS)
(= (move-consumption-rate Ambulance-34) 1.4)
(= (transport-consumption-rate Ambulance-34) 1.9)
(= (fuel Ambulance-34) 36686)
(= (speed Ambulance-34) 36)

(= (loaded-seats Ambulance-35) 0)
(= (seats Ambulance-35) 3)
(is-at Ambulance-35 HOS)
(= (move-consumption-rate Ambulance-35) 1.2)
(= (transport-consumption-rate Ambulance-35) 1.9)
(= (fuel Ambulance-35) 41943)
(= (speed Ambulance-35) 50)

(= (loaded-seats Ambulance-36) 0)
(= (seats Ambulance-36) 3)
(is-at Ambulance-36 HOS)
(= (move-consumption-rate Ambulance-36) 1.0)
(= (transport-consumption-rate Ambulance-36) 1.8)
(= (fuel Ambulance-36) 43174)
(= (speed Ambulance-36) 37)

(= (loaded-seats Ambulance-37) 0)
(= (seats Ambulance-37) 1)
(is-at Ambulance-37 HOS)
(= (move-consumption-rate Ambulance-37) 1.5)
(= (transport-consumption-rate Ambulance-37) 1.6)
(= (fuel Ambulance-37) 38228)
(= (speed Ambulance-37) 37)

(= (loaded-seats Ambulance-38) 0)
(= (seats Ambulance-38) 1)
(is-at Ambulance-38 HOS)
(= (move-consumption-rate Ambulance-38) 1.1)
(= (transport-consumption-rate Ambulance-38) 1.8)
(= (fuel Ambulance-38) 46160)
(= (speed Ambulance-38) 57)

(= (loaded-seats Ambulance-39) 0)
(= (seats Ambulance-39) 2)
(is-at Ambulance-39 HOS)
(= (move-consumption-rate Ambulance-39) 1.0)
(= (transport-consumption-rate Ambulance-39) 2.0)
(= (fuel Ambulance-39) 38185)
(= (speed Ambulance-39) 42)

(= (loaded-seats Ambulance-40) 0)
(= (seats Ambulance-40) 2)
(is-at Ambulance-40 HOS)
(= (move-consumption-rate Ambulance-40) 1.3)
(= (transport-consumption-rate Ambulance-40) 1.6)
(= (fuel Ambulance-40) 48719)
(= (speed Ambulance-40) 41)

(= (loaded-seats Ambulance-41) 0)
(= (seats Ambulance-41) 1)
(is-at Ambulance-41 HOS)
(= (move-consumption-rate Ambulance-41) 1.3)
(= (transport-consumption-rate Ambulance-41) 1.8)
(= (fuel Ambulance-41) 49418)
(= (speed Ambulance-41) 53)

(= (loaded-seats Ambulance-42) 0)
(= (seats Ambulance-42) 3)
(is-at Ambulance-42 HOS)
(= (move-consumption-rate Ambulance-42) 1.1)
(= (transport-consumption-rate Ambulance-42) 1.7)
(= (fuel Ambulance-42) 32549)
(= (speed Ambulance-42) 33)

(= (loaded-seats Ambulance-43) 0)
(= (seats Ambulance-43) 1)
(is-at Ambulance-43 HOS)
(= (move-consumption-rate Ambulance-43) 1.0)
(= (transport-consumption-rate Ambulance-43) 1.9)
(= (fuel Ambulance-43) 32545)
(= (speed Ambulance-43) 53)

(= (loaded-seats Ambulance-44) 0)
(= (seats Ambulance-44) 4)
(is-at Ambulance-44 HOS)
(= (move-consumption-rate Ambulance-44) 1.3)
(= (transport-consumption-rate Ambulance-44) 1.6)
(= (fuel Ambulance-44) 36805)
(= (speed Ambulance-44) 39)

(= (loaded-seats Ambulance-45) 0)
(= (seats Ambulance-45) 2)
(is-at Ambulance-45 HOS)
(= (move-consumption-rate Ambulance-45) 1.2)
(= (transport-consumption-rate Ambulance-45) 2.0)
(= (fuel Ambulance-45) 41434)
(= (speed Ambulance-45) 37)

(= (loaded-seats Ambulance-46) 0)
(= (seats Ambulance-46) 3)
(is-at Ambulance-46 HOS)
(= (move-consumption-rate Ambulance-46) 1.4)
(= (transport-consumption-rate Ambulance-46) 1.9)
(= (fuel Ambulance-46) 42093)
(= (speed Ambulance-46) 53)

(= (loaded-seats Ambulance-47) 0)
(= (seats Ambulance-47) 4)
(is-at Ambulance-47 HOS)
(= (move-consumption-rate Ambulance-47) 1.4)
(= (transport-consumption-rate Ambulance-47) 1.6)
(= (fuel Ambulance-47) 32633)
(= (speed Ambulance-47) 44)

(= (loaded-seats Ambulance-48) 0)
(= (seats Ambulance-48) 3)
(is-at Ambulance-48 HOS)
(= (move-consumption-rate Ambulance-48) 1.3)
(= (transport-consumption-rate Ambulance-48) 1.9)
(= (fuel Ambulance-48) 34232)
(= (speed Ambulance-48) 51)

(= (loaded-seats Ambulance-49) 0)
(= (seats Ambulance-49) 4)
(is-at Ambulance-49 HOS)
(= (move-consumption-rate Ambulance-49) 1.4)
(= (transport-consumption-rate Ambulance-49) 1.7)
(= (fuel Ambulance-49) 30221)
(= (speed Ambulance-49) 36)

(= (loaded-seats Ambulance-50) 0)
(= (seats Ambulance-50) 4)
(is-at Ambulance-50 HOS)
(= (move-consumption-rate Ambulance-50) 1.2)
(= (transport-consumption-rate Ambulance-50) 1.8)
(= (fuel Ambulance-50) 48318)
(= (speed Ambulance-50) 44)

(= (loaded-seats Ambulance-51) 0)
(= (seats Ambulance-51) 3)
(is-at Ambulance-51 HOS)
(= (move-consumption-rate Ambulance-51) 1.3)
(= (transport-consumption-rate Ambulance-51) 2.0)
(= (fuel Ambulance-51) 49304)
(= (speed Ambulance-51) 38)

(= (loaded-seats Ambulance-52) 0)
(= (seats Ambulance-52) 2)
(is-at Ambulance-52 HOS)
(= (move-consumption-rate Ambulance-52) 1.4)
(= (transport-consumption-rate Ambulance-52) 1.9)
(= (fuel Ambulance-52) 37683)
(= (speed Ambulance-52) 47)

(= (loaded-seats Ambulance-53) 0)
(= (seats Ambulance-53) 1)
(is-at Ambulance-53 HOS)
(= (move-consumption-rate Ambulance-53) 1.4)
(= (transport-consumption-rate Ambulance-53) 1.6)
(= (fuel Ambulance-53) 41804)
(= (speed Ambulance-53) 32)

(= (loaded-seats Ambulance-54) 0)
(= (seats Ambulance-54) 4)
(is-at Ambulance-54 HOS)
(= (move-consumption-rate Ambulance-54) 1.2)
(= (transport-consumption-rate Ambulance-54) 1.6)
(= (fuel Ambulance-54) 41110)
(= (speed Ambulance-54) 34)

(= (loaded-seats Ambulance-55) 0)
(= (seats Ambulance-55) 3)
(is-at Ambulance-55 HOS)
(= (move-consumption-rate Ambulance-55) 1.2)
(= (transport-consumption-rate Ambulance-55) 1.5)
(= (fuel Ambulance-55) 40127)
(= (speed Ambulance-55) 57)

(= (loaded-seats Ambulance-56) 0)
(= (seats Ambulance-56) 2)
(is-at Ambulance-56 HOS)
(= (move-consumption-rate Ambulance-56) 1.0)
(= (transport-consumption-rate Ambulance-56) 1.9)
(= (fuel Ambulance-56) 36818)
(= (speed Ambulance-56) 35)

(= (loaded-seats Ambulance-57) 0)
(= (seats Ambulance-57) 1)
(is-at Ambulance-57 HOS)
(= (move-consumption-rate Ambulance-57) 1.5)
(= (transport-consumption-rate Ambulance-57) 1.6)
(= (fuel Ambulance-57) 34178)
(= (speed Ambulance-57) 54)

(= (loaded-seats Ambulance-58) 0)
(= (seats Ambulance-58) 3)
(is-at Ambulance-58 HOS)
(= (move-consumption-rate Ambulance-58) 1.3)
(= (transport-consumption-rate Ambulance-58) 1.9)
(= (fuel Ambulance-58) 30767)
(= (speed Ambulance-58) 57)

(= (loaded-seats Ambulance-59) 0)
(= (seats Ambulance-59) 2)
(is-at Ambulance-59 HOS)
(= (move-consumption-rate Ambulance-59) 1.4)
(= (transport-consumption-rate Ambulance-59) 1.9)
(= (fuel Ambulance-59) 48720)
(= (speed Ambulance-59) 51)

(= (loaded-seats Ambulance-60) 0)
(= (seats Ambulance-60) 1)
(is-at Ambulance-60 HOS)
(= (move-consumption-rate Ambulance-60) 1.4)
(= (transport-consumption-rate Ambulance-60) 1.8)
(= (fuel Ambulance-60) 37354)
(= (speed Ambulance-60) 56)

(= (loaded-seats Ambulance-61) 0)
(= (seats Ambulance-61) 1)
(is-at Ambulance-61 HOS)
(= (move-consumption-rate Ambulance-61) 1.2)
(= (transport-consumption-rate Ambulance-61) 1.7)
(= (fuel Ambulance-61) 34003)
(= (speed Ambulance-61) 57)

(= (loaded-seats Ambulance-62) 0)
(= (seats Ambulance-62) 4)
(is-at Ambulance-62 HOS)
(= (move-consumption-rate Ambulance-62) 1.4)
(= (transport-consumption-rate Ambulance-62) 1.7)
(= (fuel Ambulance-62) 34679)
(= (speed Ambulance-62) 59)

(= (loaded-seats Ambulance-63) 0)
(= (seats Ambulance-63) 1)
(is-at Ambulance-63 HOS)
(= (move-consumption-rate Ambulance-63) 1.2)
(= (transport-consumption-rate Ambulance-63) 1.7)
(= (fuel Ambulance-63) 41062)
(= (speed Ambulance-63) 43)

(= (loaded-seats Ambulance-64) 0)
(= (seats Ambulance-64) 2)
(is-at Ambulance-64 HOS)
(= (move-consumption-rate Ambulance-64) 1.2)
(= (transport-consumption-rate Ambulance-64) 1.8)
(= (fuel Ambulance-64) 36420)
(= (speed Ambulance-64) 47)

(= (loaded-seats Ambulance-65) 0)
(= (seats Ambulance-65) 4)
(is-at Ambulance-65 HOS)
(= (move-consumption-rate Ambulance-65) 1.2)
(= (transport-consumption-rate Ambulance-65) 1.9)
(= (fuel Ambulance-65) 32039)
(= (speed Ambulance-65) 55)





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
