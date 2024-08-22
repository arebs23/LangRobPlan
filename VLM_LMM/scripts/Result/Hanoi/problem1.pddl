(define (problem hanoi1)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        yellow_disk
        pink_disk
        green_disk
        blue_disk
        red_disk
        orange_disk
    )
    (:init
        (clear yellow_disk)
        (clear peg2)
        (clear peg3)
        (on yellow_disk pink_disk)
        (on pink_disk green_disk)
        (on green_disk blue_disk)
        (on blue_disk red_disk)
        (on red_disk orange_disk)
        (on orange_disk peg1)
        (smaller yellow_disk pink_disk)
        (smaller pink_disk green_disk)
        (smaller green_disk blue_disk)
        (smaller blue_disk red_disk)
        (smaller red_disk orange_disk)
    )
    (:goal (and 
        (on orange_disk peg3) 
        (on red_disk orange_disk) 
        (on blue_disk red_disk) 
        (on green_disk blue_disk) 
        (on pink_disk green_disk) 
        (on yellow_disk pink_disk)
    ))
)