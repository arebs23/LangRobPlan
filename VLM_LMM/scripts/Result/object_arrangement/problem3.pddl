(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        green_bowl - bowl
        pear banana - fruit
        blue_mug - mug
        glass - cup
        knife fork - cutlery
        wp1s wp2s wp3s wp4s wp5s wp6s wp7s - location
        wp1f wp2f wp3f wp4f wp5f wp6f - location
        out_location - location 
    )
    (:init
        (at green_bowl wp1s)
        (at pear wp2s)
        (at banana wp3s)
        (at blue_mug wp4s)
        (at glass wp5s)
        (at knife wp6s)
        (at fork wp7s)
    )
    (:goal
        (and
            (at green_bowl wp1f)
            (at blue_mug wp2f)
            (at glass wp3f)
            (at knife wp4f)
            (at fork wp5f)
            (on pear green_bowl)
            (on banana green_bowl)
        )
    )
)