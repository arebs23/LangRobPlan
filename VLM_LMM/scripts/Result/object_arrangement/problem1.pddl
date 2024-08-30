(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_apple - fruit
        blue_glass blue_mug - container
        wp1s wp2s wp3s wp4s - location
        wp1f wp2f wp3f wp4f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at green_apple wp2s)
        (at blue_glass wp3s)
        (at blue_mug wp4s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at blue_glass wp2f)
            (at blue_mug wp3f)
            (on green_apple red_plate)
        )
    )
)