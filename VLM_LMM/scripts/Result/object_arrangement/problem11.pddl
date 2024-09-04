(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_pear - food
        blue_knife blue_spoon - cutlery
        silver_fork - cutlery
        scissors - tool
        remote_control - tool
        screwdriver - tool
        wp1s wp2s wp3s wp4s wp5s wp6s wp7s wp8s wp9s - location
        wp1f wp2f wp3f wp4f wp5f wp6f wp7f - location
        out_location - location 
    )
    (:init
        (at red_plate wp5s)
        (at green_pear wp3s)
        (at blue_knife wp6s)
        (at blue_spoon wp7s)
        (at silver_fork wp2s)
        (at scissors wp4s)
        (at remote_control wp1s)
        (at screwdriver wp8s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at blue_knife wp2f)
            (at blue_spoon wp3f)
            (at silver_fork wp4f)
            (on green_pear red_plate)
            (at scissors out_location)
            (at remote_control out_location)
            (at screwdriver out_location)
        )
    )
)