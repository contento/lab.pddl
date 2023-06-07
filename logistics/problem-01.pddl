(define (problem logistics-problem)
    (:domain logistics)

    (:objects
        city1 city2 - city
        port1 port2 - port
        factory1 factory2 - factory
        truck1 truck2 - truck
        container1 container2 - container
    )

    (:init
        (at truck1 port1)
        (at truck2 factory1)
        (empty truck1)
        (empty truck2)
    )

    (:goal
        (and (in container1 truck2) (in container2 truck1))
    )
)