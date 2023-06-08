(define (domain train-travel)
  (:requirements :strips)
  (:predicates
    (at ?loc) ; Predicate to specify where the train is
    (connected ?loc1 ?loc2) ; Predicate to specify connections between locations
  )
  (:action move
    :parameters (?from ?to)
    :precondition (and (at ?from) (connected ?from ?to))
    :effect (and
      (not (at ?from))
      (at ?to)
    )
  )
)
