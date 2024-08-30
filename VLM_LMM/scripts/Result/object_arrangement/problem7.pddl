(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        pear banana - food
        fork - cutlery
        wp1s wp2s wp3s wp4s - location
        wp1f wp2f wp3f wp4f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at fork wp2s)
        (at banana wp3s)
        (at pear wp4s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at fork wp2f)
            (on banana red_plate)
            (on pear red_plate)
        )
    )
)