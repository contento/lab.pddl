(define (domain train-travel)
  (:requirements :strips :typing)
  (:types
    location - object
  )
  (:predicates
    (at ?loc - location) ; Predicate to specify where the train is
    (connected ?loc1 ?loc2 - location) ; Predicate to specify connections between locations
  )
  (:action move
    :parameters (?from ?to - location)
    :precondition (and (at ?from) (connected ?from ?to))
    :effect (and
      (not (at ?from))
      (at ?to)
    )
  )
)