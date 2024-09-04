(define (problem object_arrangement)
    (:domain object_arrangement)
    (:objects
        red_plate - plate
        black_basket - basket
        yellow_bowl - bowl
        wp1s wp2s wp3s - location
        wp1f wp2f wp3f - location
    )
    (:init
        (at red_plate wp1s)
        (at black_basket wp2s)
        (at yellow_bowl wp3s)
    )
    (:goal
        (and
            (at red_plate wp1f)
            (at black_basket wp2f)
            (at yellow_bowl wp3f)
        )
    )
)