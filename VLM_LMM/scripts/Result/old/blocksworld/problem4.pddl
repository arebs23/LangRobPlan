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
        (clear orange_block)
        (clear green_block)
        (clear yellow_block)
        (clear purple_block)
    )
    (:goal (and (on purple_block red_block) (on red_block yellow_block) (on yellow_block green_block) (on green_block orange_block)))
)