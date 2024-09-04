(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_bowl - bowl
        yellow_banana green_pear - food
        blue_handle_knife silver_fork - cutlery
        wp1s wp2s wp3s wp4s wp5s wp6s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at green_bowl wp2s)
        (at yellow_banana wp3s)
        (at green_pear wp4s)
        (at blue_handle_knife wp5s)
        (at silver_fork wp6s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at green_bowl wp2f)
            (at blue_handle_knife wp3f)
            (at silver_fork wp4f)
            (on yellow_banana red_plate)
            (on green_pear green_bowl)
        )
    )
)