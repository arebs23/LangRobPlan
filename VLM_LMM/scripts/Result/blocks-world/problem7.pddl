(define (problem blocksworld1)
    (:domain blocksworld)
    (:objects
        yellow_block - block
        pink_block - block
        green_block - block
        red_block - block
        purple_block - block
        blue_block - block
        orange_block - block
        table - table
    )
    (:init
        (ontable green_block)
        (ontable purple_block)
        (ontable orange_block)
        (ontable blue_block)
        (on pink_block green_block)
        (on yellow_block pink_block)
        (on red_block purple_block)
        
    )
    (:goal (and 
        (on yellow_block pink_block)
        (on pink_block green_block)
        (on green_block red_block)
        (on red_block purple_block)
        (on purple_block blue_block)
    ))
)