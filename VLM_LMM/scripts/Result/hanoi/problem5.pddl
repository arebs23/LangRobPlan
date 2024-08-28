(define (problem hanoi1)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        yellow_disk
        orange_disk
        red_disk
    )
    (:init
        (clear red_disk)
        (clear peg2)
        (clear peg3)
        (on red_disk orange_disk)
        (on orange_disk yellow_disk)
        (on yellow_disk peg1)
        (smaller red_disk orange_disk)
        (smaller orange_disk yellow_disk)
    )
    (:goal (and (on yellow_disk peg3) (on orange_disk yellow_disk) (on red_disk orange_disk)))
)
