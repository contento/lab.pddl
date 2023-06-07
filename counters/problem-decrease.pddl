(define (problem count-down)
  (:domain counter)
  (:objects
    zero one two three - count
  )
  (:init
    (counter three)
    (next two three)
    (next one two)
    (next zero one)
  )
  (:goal
    (counter zero)
  )
)
