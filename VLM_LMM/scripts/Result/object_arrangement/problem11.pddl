(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        pear - food
        fork - cutlery
        knife - cutlery
        spoon - cutlery
        wp1s wp2s wp3s wp4s wp5s wp6s wp7s wp8s wp9s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at red_plate wp1s)
        (at pear wp2s)
        (at fork wp3s)
        (at knife wp4s)
        (at spoon wp5s)
        (at scissors wp6s)
        (at remote wp7s)
        (at screwdriver wp8s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at fork wp2f)
            (at knife wp3f)
            (at spoon wp4f)
            (on pear red_plate)
            (at scissors out_location)
            (at remote out_location)
            (at screwdriver out_location)
        )
    )
)