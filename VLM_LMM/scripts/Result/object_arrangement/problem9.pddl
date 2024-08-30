(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        green_apple banana - food
        green_bowl - container
        knife - object
        fork - object
        mug - container
        wp1s wp2s wp3s wp4s wp5s wp6s wp7s wp8s wp9s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at green_apple wp2s)
        (at banana wp3s)
        (at green_bowl wp4s)
        (at knife wp5s)
        (at fork wp6s)
        (at mug wp7s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at green_bowl wp2f)
            (at knife wp3f)
            (at fork wp4f)
            (at mug wp5f)
            (on green_apple red_plate)
            (on banana red_plate)
        )
    )
)