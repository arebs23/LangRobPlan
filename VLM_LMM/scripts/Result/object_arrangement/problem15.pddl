(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        pear - food
        fork - object
        wp1s wp2s wp3s wp4s - location
        wp1f wp2f wp3f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at pear wp2s)
        (at fork wp3s)
        (at remote wp4s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at fork wp2f)
            (on pear red_plate)
            (at remote out_location)
        )
    )
)