(define (problem say-hello-world)
    (:domain greetings)
    (:objects
        hello-world - greeting
    )

    (:init
        (silent)
    )

    (:goal
        (and
            (said-greeting hello-world)
            (silent)
        )
    )
)