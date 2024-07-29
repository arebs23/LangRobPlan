(define (problem hanoi1)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        disk1  ; largest (orange)
        disk2  ; red
        disk3  ; blue
        disk4  ; green
        disk5  ; pink
        disk6  ; yellow
    )
    (:init
        (clear disk6)
        (clear peg2)
        (clear peg3)
        (on disk6 disk5)
        (on disk5 disk4)
        (on disk4 disk3)
        (on disk3 disk2)
        (on disk2 disk1)
        (on disk1 peg1)
    )
    (:goal (and 
        (on disk1 peg3)
        (on disk2 disk1)
        (on disk3 disk2)
        (on disk4 disk3)
        (on disk5 disk4)
        (on disk6 disk5)
    ))
)