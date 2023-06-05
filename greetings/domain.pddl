(define (domain greetings)
    (:requirements :strips :negative-preconditions :typing :conditional-effects)

    (:types
        greeting - object
    )

    (:predicates
        (said-greeting ?g - greeting) ; true if the greeting has been said
        (silent) ; true if the agent is silent
    )

    (:action say-greeting
        :parameters (?g - greeting)
        :precondition (silent)
        :effect (and
            (said-greeting ?g)
            (not (silent))
        )
    )

    (:action be-silent
        :parameters ()
        :precondition (not (silent))
        :effect (and
            (silent)
        )
    )
)