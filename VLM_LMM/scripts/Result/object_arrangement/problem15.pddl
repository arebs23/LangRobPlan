(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_pear - food
        silver_fork - cutlery
        remote_control - object
        wp1s wp2s wp3s wp4s - location
        wp1f wp2f wp3f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at green_pear wp2s)
        (at silver_fork wp3s)
        (at remote_control wp4s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at silver_fork wp2f)
            (on green_pear red_plate)
            (at remote_control out_location)
        )
    )
)