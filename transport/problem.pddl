(define (problem train-transport-problem)
  (:domain train-transport)
  (:objects
    zero one two three four five six seven eight - count
    location-1 location-2 - location
  )
  (:init
    (train-at location-1)
    (train-counter zero)
    (location-counter location-1 eight)
    (location-counter location-2 zero)
    (next zero one)
    (next one two)
    (next two three)
    (next three four)
    (next four five)
    (next five six)
    (next six seven)
    (next seven eight)
  )
  (:goal
    (and
      (location-counter location-1 zero)
      (location-counter location-2 eight)
    )
  )
)
