(define (problem hanoi1)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        red_disk
        orange_disk
    )
    (:init
        (clear red_disk)
        (clear peg2)
        (clear peg3)
        (on red_disk orange_disk)
        (on orange_disk peg1)
    )
    (:goal (and 
        (on orange_disk peg3)
        (on red_disk orange_disk)
    ))
)