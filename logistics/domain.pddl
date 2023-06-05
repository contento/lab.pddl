(define (domain logistics)
    (:requirements :strips :typing)

    (:types
        city - object
        location - object
        truck - object
        container - object
    )

    (:predicates
        (at ?x - truck ?y - location)
        (in ?x - container ?y - truck)
        (destination ?x - container ?y - location)
    )

    (:action move-truck
        :parameters (?t - truck ?from - location ?to - location)
        :precondition (at ?t ?from)
        :effect (and (at ?t ?to) (not (at ?t ?from)))
    )

    (:action load-container
        :parameters (?c - container ?t - truck ?l - location)
        :precondition (and (at ?t ?l) (destination ?c ?l))
        :effect (and (in ?c ?t) (not (destination ?c ?l)))
    )

    (:action unload-container
        :parameters (?c - container ?t - truck ?l - location)
        :precondition (and (in ?c ?t) (at ?t ?l))
        :effect (and (destination ?c ?l) (not (in ?c ?t)))
    )
)