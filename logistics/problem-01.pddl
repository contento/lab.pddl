(define (problem logistics-problem)
    (:domain logistics)

    (:objects
        city1 city2 - city
        port1 port2 - location
        factory1 factory2 - location
        truck1 truck2 - truck
        container1 container2 - container
    )

    (:init
        (at truck1 port1)
        (at truck2 factory1)
        (destination container1 factory2)
        (destination container2 port2)
    )

    (:goal
        (and (destination container1 factory1) (destination container2 port1))
    )
)