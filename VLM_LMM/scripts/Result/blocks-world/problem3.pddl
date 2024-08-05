(define (problem blocksworld2)
    (:domain blocksworld)
    (:objects
        yellow_block - block
        green_block - block
        pink_block - block
        red_block - block
        purple_block - block
        table - table
    )
    (:init
        (ontable yellow_block)
        (ontable green_block)
        (ontable pink_block)
        (ontable red_block)
        (on purple_block red_block)
    
    )
    (:goal (and 
        (on yellow_block green_block)
        (on green_block pink_block)
        (ontable pink_block)
        (on red_block purple_block)
        (ontable purple_block)
    ))
)