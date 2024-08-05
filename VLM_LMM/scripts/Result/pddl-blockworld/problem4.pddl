(define (problem blocksworld1)
    (:domain blocksworld)
    (:objects
        orange_block - block
        green_block - block
        yellow_block - block
        purple_block - block
        red_block - block
        table - table
    )
    (:init
        (ontable orange_block)
        (ontable green_block)
        (ontable yellow_block)
        (on purple_block red_block)
        (ontable red_block)
    )
    (:goal (and 
        (on orange_block yellow_block)
        (on yellow_block blue_block)
        (on purple_block red_block)
    ))
)