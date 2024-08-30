(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        pear - food
        green_bowl - container
        knife - object
        fork - object
        wp1s wp2s wp3s wp4s wp5s - location
        wp1f wp2f wp3f wp4f wp5f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at pear wp2s)
        (at green_bowl wp3s)
        (at fork wp4s)
        (at knife wp5s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at green_bowl wp2f)
            (at fork wp3f)
            (at knife wp4f)
            (on pear red_plate)
        )
    )
)