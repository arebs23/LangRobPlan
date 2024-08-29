(define (problem blocksworld2)
    (:domain blocksworld)
    (:objects
        green_block - block
        yellow_block - block
        pink_block - block
        purple_block - block
        orange_block - block
        red_block - block
        robot - robot
    )
    (:init
        (ontable green_block)
        (on yellow_block green_block)
        (on pink_block yellow_block)
        (on purple_block pink_block)
        (on orange_block purple_block)
        (on red_block orange_block)
        (handempty robot)
        (clear red_block)
    )
    (:goal (and 
        (on green_block yellow_block)
        (on yellow_block pink_block)
        (ontable pink_block)
        (on purple_block orange_block)
        (on orange_block red_block)
        (ontable red_block)
    ))
)