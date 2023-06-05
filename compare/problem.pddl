;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Explanation on why only perform-action one two:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; The action perform-action can only be performed on one two in the context of the provided 
; problem because the initial state only specifies that one is less than all other numbers 
; and two is less than three, four, and five.
; To use perform-action with other numbers, the less-than relationship needs to be defined in the initial state. 
; For example, if you want to perform the action with two and three, 
; you should include (less-than two three) in the :init section.
; However, in this case, the planner will still choose perform-action one two because 
; it is the first valid action it finds. If you want the planner to perform the action
; with two and three, you can add an action cost and make the action with one and two more expensive.
; Please note that, by default, PDDL planners try to minimize the total cost (or total time) of the plan. 
; So if there are multiple actions that can achieve the goal, the planner will choose the one with the lowest cost.
; That being said, keep in mind that how the planner selects actions depends on its specific 
; implementation and the heuristics it uses. Some planners might not necessarily choose the first valid action they find.
;

(define (problem compare-problem)
    (:domain compare)
    (:objects
        one two three four five - num
    )
    (:init
        (less-than one two)
        (less-than one three)
        (less-than one four)
        (less-than one five)
        (less-than two three)
        (less-than two four)
        (less-than two five)
        (less-than three four)
        (less-than three five)
        (less-than four five)
    )
    (:goal
        (action-performed)
    )
)
