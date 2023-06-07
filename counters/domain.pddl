(define (domain counter)
  (:requirements :strips :typing)
  (:types
    count
  )
  (:predicates
    (counter1 ?n - count)
    (counter2 ?n - count)
    (next ?n1 - count ?n2 - count)
  )
  (:action increment-counter1
    :parameters (?n1 ?n2 - count)
    :precondition (and 
      (counter1 ?n1)
      (next ?n1 ?n2)
    )
    :effect (and 
      (not (counter1 ?n1))
      (counter1 ?n2)
    )
  )
  (:action decrement-counter2
    :parameters (?n1 ?n2 - count)
    :precondition (and 
      (counter2 ?n2)
      (next ?n1 ?n2)
    )
    :effect (and 
      (not (counter2 ?n2))
      (counter2 ?n1)
    )
  )
)
