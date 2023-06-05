; Counter Problem
(define (problem counter-problem)
  (:domain counter)
  (:objects
    zero one two three four five six seven eight - count
  )
  (:init
    (counter zero)
    (next zero one)
    (next one two)
    (next two three)
    (next three four)
    (next four five)
    (next five six)
    (next six seven)
    (next seven eight)
  )
  (:goal (counter eight))
)
