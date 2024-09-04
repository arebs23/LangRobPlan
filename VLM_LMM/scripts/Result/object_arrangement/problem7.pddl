(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_pear yellow_banana - food
        fork - cutlery
        wp1s wp2s wp3s wp4s wp5s - location
        wp1f wp2f wp3f wp4f wp5f - location
    )
    (:init
        (at red_plate wp1s)
        (at green_pear wp2s)
        (at yellow_banana wp3s)
        (at fork wp4s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at fork wp2f)
            (on green_pear red_plate)
            (on yellow_banana red_plate)
        )
    )
)