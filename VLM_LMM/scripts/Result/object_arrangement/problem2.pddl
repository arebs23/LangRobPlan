(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        basket - container
        banana pear - food
        wp1s wp2s wp3s - location
        wp1f wp2f wp3f - location
    )
    (:init
        (at basket wp1s)
        (at banana wp2s)
        (at pear wp3s)
    )
    (:goal
        (and
            (at basket wp1f)
            (in banana basket)
            (in pear basket)
        )
    )
)