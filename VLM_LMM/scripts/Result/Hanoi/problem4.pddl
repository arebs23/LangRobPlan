(define (problem hanoi1)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        pink_disk
        blue_disk
        red_disk
        orange_disk
        yellow_disk
    )
    (:init
        (clear pink_disk)
        (clear peg2)
        (clear peg3)
        (on pink_disk blue_disk)
        (on blue_disk red_disk)
        (on red_disk orange_disk)
        (on orange_disk yellow_disk)
        (on yellow_disk peg1)
        (smaller pink_disk blue_disk)
        (smaller blue_disk red_disk)
        (smaller red_disk orange_disk)
        (smaller orange_disk yellow_disk)
    )
    (:goal (and 
        (on yellow_disk peg3) 
        (on orange_disk yellow_disk) 
        (on red_disk orange_disk) 
        (on blue_disk red_disk) 
        (on pink_disk blue_disk)
    ))
)
