(define (problem counter-problem)
  (:domain counter)
  (:objects
    zero one two three four five - count
  )
  (:init
    (counter1 zero)
    (counter2 five)
    (next zero one)
    (next one two)
    (next two three)
    (next three four)
    (next four five)
  )
  (:goal
    (and
      (counter1 five)
      (counter2 zero)
    )
  )
)
