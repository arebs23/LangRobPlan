(define (problem blocksworld1)
    (:domain blocksworld)
    (:objects
        red_block - block
        blue_block - block
        purple_block - block
        pink_block - block
        table - table
    )
    (:init
        (ontable blue_block)
        (ontable red_block)
        (on pink_block purple_block)
        (on purple_block blue_block)
    
    )
    (:goal (and 
        (on red_block blue_block)
        (on blue_block purple_block)
        (on purple_block pink_block)
    ))
)