(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        basket - container
        banana pear - food
        wp1s wp2s wp3s - location
        wp1f wp2f wp3f - location
    )
    (:init
        (at basket wp2s)
        (at banana wp1s)
        (at pear wp3s)
    )
    (:goal
        (and
            (at basket wp1f)
            (on banana basket)
            (on pear basket)
        )
    )
)