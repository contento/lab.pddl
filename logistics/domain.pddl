(define (domain logistics)
    (:requirements :strips :typing)

    (:types
        city port factory - location
        truck - object
        container - object
    )

    (:predicates
        (at ?x - truck ?y - location)
        (in ?x - container ?y - truck)
        (empty ?t - truck)
    )

    (:action move-truck
        :parameters (?t - truck ?from - location ?to - location)
        :precondition (at ?t ?from)
        :effect (and (at ?t ?to) (not (at ?t ?from)))
    )

    (:action load-container
        :parameters (?c - container ?t - truck ?l - port)
        :precondition (and (at ?t ?l) (empty ?t))
        :effect (and (in ?c ?t) (not (empty ?t)))
    )

    (:action unload-container
        :parameters (?c - container ?t - truck ?l - factory)
        :precondition (and (in ?c ?t) (at ?t ?l))
        :effect (and (empty ?t) (not (in ?c ?t)))
    )
)