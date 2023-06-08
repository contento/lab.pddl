(define (domain train-transport)
  (:requirements :strips :typing)
  (:types
    count location - object
  )
  (:predicates
    (train-at ?loc - location)
    (train-counter ?n - count)
    (location-counter ?loc - location ?n - count)
    (next ?n1 - count ?n2 - count)
  )
  (:action load
    :parameters (?n1 ?n2 ?n3 ?n4 - count ?loc - location)
    :precondition (and 
      (train-at ?loc)
      (train-counter ?n1)
      (location-counter ?loc ?n4)
      (next ?n1 ?n2)
      (next ?n4 ?n3)
    )
    :effect (and 
      (not (train-counter ?n1))
      (not (location-counter ?loc ?n4))
      (train-counter ?n2)
      (location-counter ?loc ?n3)
    )
  )
  (:action unload
    :parameters (?n1 ?n2 ?n3 ?n4 - count ?loc - location)
    :precondition (and 
      (train-at ?loc)
      (train-counter ?n2)
      (location-counter ?loc ?n3)
      (next ?n2 ?n1)
      (next ?n3 ?n4)
    )
    :effect (and 
      (not (train-counter ?n2))
      (not (location-counter ?loc ?n3))
      (train-counter ?n1)
      (location-counter ?loc ?n4)
    )
  )
  (:action move
    :parameters (?loc1 ?loc2 - location)
    :precondition (train-at ?loc1)
    :effect (and 
      (not (train-at ?loc1))
      (train-at ?loc2)
    )
  )
)
