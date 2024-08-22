(define (problem hanoi1)
    (:domain hanoi)
    (:objects
        peg1
        peg2
        peg3
        disk1
        disk2
        disk3
        disk4
        disk5
        disk6
        disk7
        disk8
        disk9
        disk10
    )
    (:init
        (clear disk1)
        (clear peg2)
        (clear peg3)
        (on disk1 disk2)
        (on disk2 disk3)
        (on disk3 disk4)
        (on disk4 disk5)
        (on disk5 disk6)
        (on disk6 disk7)
        (on disk7 disk8)
        (on disk8 disk9)
        (on disk9 disk10)
        (on disk10 peg1)
        (smaller disk1 disk2)
        (smaller disk2 disk3)
        (smaller disk3 disk4)
        (smaller disk4 disk5)
        (smaller disk5 disk6)
        (smaller disk6 disk7)
        (smaller disk7 disk8)
        (smaller disk8 disk9)
        (smaller disk9 disk10)
    )
    (:goal (and 
        (on disk10 peg3) 
        (on disk9 disk10) 
        (on disk8 disk9) 
        (on disk7 disk8) 
        (on disk6 disk7) 
        (on disk5 disk6) 
        (on disk4 disk5) 
        (on disk3 disk4) 
        (on disk2 disk3) 
        (on disk1 disk2)
    ))
)