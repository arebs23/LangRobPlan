(define (problem hanoi2)
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
    )
    (:goal (and 
        (on green_disk1 peg3)
        (on red_disk1 peg3)
        (clear peg1)
        (clear peg2)
    ))
)