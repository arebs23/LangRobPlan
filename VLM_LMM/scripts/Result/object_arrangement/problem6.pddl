(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        pear banana - food
        basket green_bowl mug - container
        knife - object
        spoon - object
        fork - object
        wp1s wp2s wp3s wp4s wp5s wp6s wp7s wp8s wp9s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at pear wp2s)
        (at banana wp3s)
        (at basket wp4s)
        (at green_bowl wp5s)
        (at mug wp6s)
        (at knife wp7s)
        (at spoon wp8s)
        (at fork wp9s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at basket wp2f)
            (at green_bowl wp3f)
            (at knife wp4f)
            (at spoon wp5f)
            (at fork wp6f)
            (on pear red_plate)
            (on banana red_plate)
        )
    )
)