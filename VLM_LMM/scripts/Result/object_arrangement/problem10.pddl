(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        basket - container
        green_bowl - container
        wp1s wp2s wp3s - location
        wp1f wp2f wp3f - location
    )
    (:init
        (at red_plate wp1s)
        (at basket wp2s)
        (at green_bowl wp3s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at basket wp2f)
            (at green_bowl wp3f)
        )
    )
)