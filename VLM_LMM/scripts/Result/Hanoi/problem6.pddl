(define (problem hanoi1)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        green_disk1
        red_disk1
    )
    (:init
        (clear green_disk1)
        (clear red_disk1)
        (clear peg3)
        (on green_disk1 peg1)
        (on red_disk1 peg2)
        (smaller green_disk1 red_disk1)
    )
    (:goal (and 
        (on green_disk1 peg3)
        (on red_disk1 peg3)
        (smaller green_disk1 red_disk1)
    ))
)
