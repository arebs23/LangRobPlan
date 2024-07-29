(define (problem hanoi1)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        disk1  ; smallest (pink)
        disk2  ; blue
        disk3  ; red
        disk4  ; orange
        disk5  ; largest (yellow)
    )
    (:init
        (clear disk1)
        (clear peg2)
        (clear peg3)
        (on disk1 disk2)
        (on disk2 disk3)
        (on disk3 disk4)
        (on disk4 disk5)
        (on disk5 peg1)
    )
    (:goal (and 
        (on disk1 peg3)
        (on disk2 disk1)
        (on disk3 disk2)
        (on disk4 disk3)
        (on disk5 disk4)
    ))
)