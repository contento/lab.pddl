; Counter Domain
(define (domain counter)
  (:requirements :strips :typing)
  (:types
    count
  )
  (:predicates
    (counter ?n - count)
    (next ?n1 - count ?n2 - count)
  )
  (:action increment
    :parameters (?n1 ?n2 - count)
    :precondition (and 
      (counter ?n1)
      (next ?n1 ?n2)
    )
    :effect (and 
      (not (counter ?n1))
      (counter ?n2)
    )
  )
  (:action decrement
    :parameters (?n1 ?n2 - count)
    :precondition (and 
      (counter ?n2)
      (next ?n1 ?n2)
    )
    :effect (and 
      (not (counter ?n2))
      (counter ?n1)
    )
  )
)
