(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_pear yellow_banana - food
        green_bowl - container
        knife - cutlery
        fork - cutlery
        wp1s wp2s wp3s wp4s wp5s wp6s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at yellow_banana wp2s)
        (at green_pear wp3s)
        (at green_bowl wp4s)
        (at knife wp5s)
        (at fork wp6s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at green_bowl wp2f)
            (at knife wp3f)
            (at fork wp4f)
            (on yellow_banana red_plate)
            (on green_pear red_plate)
        )
    )
)