(define (domain compare)
    (:requirements :strips :typing)
    (:types
        num
    )

    (:predicates
        (less-than ?n1 - num ?n2 - num)
        (action-performed)
    )

    (:action perform-action
        :parameters (?n1 - num ?n2 - num)
        :precondition (less-than ?n1 ?n2)
        :effect (action-performed)
    )
)