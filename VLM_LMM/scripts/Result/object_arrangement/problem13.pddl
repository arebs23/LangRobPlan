(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        pear - food
        basket - container
        fork - cutlery
        knife - cutlery
        wp1s wp2s wp3s wp4s wp5s wp6s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at pear wp2s)
        (at basket wp3s)
        (at fork wp4s)
        (at knife wp5s)
        (at remote wp6s)
        (at screwdriver wp7s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at basket wp2f)
            (at fork wp3f)
            (at knife wp4f)
            (on pear red_plate)
            (not (at remote wp6s))
            (not (at screwdriver wp7s))
        )
    )
)