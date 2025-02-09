(setq p0 (list 0  0))
(setq p1 (list 0  119))
(setq p2 (list 84 119))
(setq p3 (list 84 0))

(command "LINE" p0 p1 "")
(command "LINE" p1 p2 "")
(command "LINE" p2 p3 "")
(command "LINE" p3 p0 "")

(setq d0 (distance p1 p2))


(setq m1to2 (list (/ (+ (car p1) (car p2)) 2) (/ (+ (cadr p1) (cadr p2)) 2) ))
;(setq m1to2x (list (car m1to2) (cadr m1to2)))


(command "CIRCLE" (list (car m1to2) (cadr m1to2)) "d" d0)
;(command "CIRCLE" m1to2 "d" d0)
;(command "._zoom" "e")
;(command "CIRCLE" m1to2x "d" d0)
