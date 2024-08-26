(define (problem blocksworld1)
    (:domain blocksworld)
    (:objects
        orange_block - block
        green_block - block
        yellow_block - block
        red_block - block
        purple_block - block
        robot - robot
    )
    (:init
        (ontable orange_block)
        (ontable green_block)
        (ontable yellow_block)
        (ontable red_block)
        (on purple_block red_block)
        (handempty robot)
    )
    (:goal (and 
        (on orange_block yellow_block)
        (on yellow_block green_block)
        (on green_block purple_block)
        (on purple_block red_block)
    ))
)