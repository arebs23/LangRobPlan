(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_pear - food
        blue_handle_knife - cutlery
        silver_fork - cutlery
        screwdriver - tool
        remote_control - tool
        wp1s wp2s wp3s wp4s wp5s wp6s - location
        wp1f wp2f wp3f wp4f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at green_pear wp2s)
        (at blue_handle_knife wp3s)
        (at silver_fork wp4s)
        (at screwdriver wp5s)
        (at remote_control wp6s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at blue_handle_knife wp2f)
            (at silver_fork wp3f)
            (on green_pear red_plate)
            (at screwdriver out_location)
            (at remote_control out_location)
        )
    )
)