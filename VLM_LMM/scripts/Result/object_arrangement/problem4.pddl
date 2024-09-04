(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_pear - food
        green_bowl - bowl
        silver_fork - cutlery
        blue_knife - cutlery
        wp1s wp2s wp3s wp4s wp5s wp6s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at green_pear wp2s)
        (at green_bowl wp3s)
        (at silver_fork wp4s)
        (at blue_knife wp5s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at green_bowl wp2f)
            (at silver_fork wp3f)
            (at blue_knife wp4f)
            (on green_pear red_plate)
        )
    )
)