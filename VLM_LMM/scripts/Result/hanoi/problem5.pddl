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
        (smaller red_disk yellow_disk)
        (smaller orange_disk yellow_disk)
        (smaller red_disk peg1)
        (smaller orange_disk peg1)
        (smaller yellow_disk peg1)
        (smaller red_disk peg2)
        (smaller orange_disk peg2)
        (smaller yellow_disk peg2)
        (smaller red_disk peg3)
        (smaller orange_disk peg3)
        (smaller yellow_disk peg3)
    )
    (:goal (and (on yellow_disk peg3) (on orange_disk yellow_disk) (on red_disk orange_disk)))
)