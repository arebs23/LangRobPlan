(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        pear - food
        knife - cutlery
        fork - cutlery
        wp1s wp2s wp3s wp4s wp5s - location
        wp1f wp2f wp3f wp4f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at pear wp2s)
        (at knife wp3s)
        (at fork wp4s)
        (at screwdriver wp5s)
        (at remote wp6s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at knife wp2f)
            (at fork wp3f)
            (on pear red_plate)
            (at screwdriver out_location)
            (at remote out_location)
        )
    )
)