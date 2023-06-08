(define (problem train-travel-problem)
  (:domain train-travel)
  (:objects
    location-1 location-2 location-3 location-4 - location
  )
  (:init
    (at location-1)
    (connected location-1 location-2)
    (connected location-2 location-1)
    (connected location-2 location-3)
    (connected location-3 location-2)
    (connected location-3 location-4)
    (connected location-4 location-3)
  )
  (:goal
    (at location-4)
  )
)