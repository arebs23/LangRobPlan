(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        pear - food
        basket - container
        spoon - cutlery
        fork - cutlery
        knife - cutlery
        wp1s wp2s wp3s wp4s wp5s wp6s wp7s wp8s wp9s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at pear wp2s)
        (at basket wp3s)
        (at spoon wp4s)
        (at fork wp5s)
        (at knife wp6s)
        (at remote wp7s)
        (at screwdriver wp8s)
        (at scissors wp9s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at basket wp2f)
            (at spoon wp3f)
            (at fork wp4f)
            (at knife wp5f)
            (on pear red_plate)
            (not (at remote wp7s))
            (not (at screwdriver wp8s))
            (not (at scissors wp9s))
        )
    )
)