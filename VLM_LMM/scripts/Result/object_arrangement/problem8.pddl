(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        banana - food
        fork - cutlery
        wp1s wp2s wp3s - location
        wp1f wp2f wp3f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at banana wp2s)
        (at fork wp3s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at fork wp2f)
            (on banana red_plate)
        )
    )
)