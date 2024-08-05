(define (problem blocksworld1)
    (:domain blocksworld)
    (:objects
        orange_block - block
        red_block - block
        yellow_block - block
        green_block - block
        blue_block - block
        purple_block - block
        robot - robot
    )
    (:init
        (ontable orange_block)
        (ontable red_block)
        (on yellow_block red_block)
        (on green_block yellow_block)
        (on blue_block green_block)
        (on purple_block blue_block)
      
    )
    (:goal (and 
        (on purple_block blue_block)
        (on blue_block green_block)
        (on green_block yellow_block)
        (on yellow_block red_block)
        (on red_block orange_block)
    ))
)