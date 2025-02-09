
(defun draw-horizontal-line (start-point length)
  (setq end-point 
        (list 
          (+ (car start-point) length)
          (cadr start-point)          
        )
  )
  (command "LINE" start-point end-point "") 
)


(defun draw-vertical-line (start-point length)
  (setq end-point 
        (list 
          (car start-point)          
          (+ (cadr start-point) length)
        )
  )
  (command "LINE" start-point end-point "") 
)


(setq old-osmode (getvar "OSMODE"))
(setvar "OSMODE" 0)

;(command "LINE" (list 0.0 0.0) (list 0.0 119.0) "")

(setq height0 119.0)
(setq depth0 24.5)
(setq depth1 8.0)
(setq depth2 19.5)
(setq diam0 71.0) 
(setq diam1 84.0)
(setq zero (list 0 0))
(setq mid_height (/ height0 2))

(setq m0 (list 0.0  diam0))
(setq m1 (list depth diam0))
(setq r0 (/ 84.0 2))

;(setq t99 (list (+ (car zero) 100) (cadr zero)))
(princ t990)
;(command "LINE" zero t99 "")
(draw-horizontal-line zero depth0)
(setq t99 (list 0.0 (+ 0.0 (/ diam1 2))))
(draw-horizontal-line t99 depth0)

(setq t99 (list 0.0 (- depth0 (/ diam1 2))))
(draw-horizontal-line t99 depth0)


;(setq t99 (list 0.0 depth0))
;(draw-horizontal-line t99 depth0)


;(setq t99 (list 0.0 depth0))

(setq t99 (list 0.0 mid_depth0))
(draw-horizontal-line t99 depth0)


(draw-vertical-line zero height0)

(setq t99 (list depth1 0.0))
(draw-vertical-line t99 height0)

(setq t99 (list depth2 0.0))
(draw-vertical-line t99 height0)

(setq t99 (list height0 0.0))
(draw-vertical-line t99 height0)

;x;x;
;x;x;(command "LINE" m0 m1 "")
;x;x;(command "LINE" (list (car m0) (/ m0 m1 "")
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x;
;x;x;(setq d0 (distance p1 p2))
;x;x;
;x;x;
;x;x;(setq m1 (list (/ (+ (car p1) (car p2)) 2) (- (cadr p1) (/ d0 2) )))
;x;x;;(setq m0 (list (/ (+ (car p0) (car p3)) 2) (/ (+ (cadr p0) (cadr p3)) 2) ))
;x;x;(setq m0 (list (/ (+ (car p0) (car p3)) 2) (+ (cadr p0) (/ d0 2) )))
;x;x;;(setq m1to2x (list (car m1to2) (cadr m1to2)))
;x;x;
;x;x;;(princ m1)
;x;x;(command "CIRCLE" m1 "d" d0)
;x;x;(command "CIRCLE" m0 "d" d0)
;x;x;
;x;x;(setq d1 20.0)
;x;x;
;x;x;(command "CIRCLE" m1 "d" d1)
;x;x;(command "CIRCLE" m0 "d" d1)
;x;x;
;x;x;(setq d2 (* 18.0 2))
;x;x;(command "CIRCLE" m1 "d" d2)
;x;x;(command "CIRCLE" m0 "d" d2)
;x;x;
;x;x;(setq d3 68.0)
;x;x;(command "CIRCLE" m0 "d" d3)
;x;x;(command "CIRCLE" m1 "d" d3)
;x;x;
;x;x;(princ d3)
;x;x;
;x;x;(command "CIRCLE" m0 "d" d3)
;x;x;(command "CIRCLE" m1 "d" d3)
;x;x;
;x;x;
;x;x;(command "LINE" m0 m1 "")
;x;x;
;x;x;(setq ang_r (* pi (/ (- 90 30) 180.0)))
;x;x;(setq ang_l (* pi (/ (+ 90 30) 180.0)))
;x;x;
;x;x;(setq len_1 100.0)
;x;x;(princ ang_r)
;x;x;(princ ang_l)
;x;x;(princ len_1)
;x;x;
;x;x;(setq end_r (list
;x;x;	      (+ (car m1) (* len_1 (cos ang_r)))
;x;x;	      (+ (cadr m1) (* len_1 (sin ang_r)))
;x;x;	      )
;x;x;      )
;x;x;
;x;x;(setq end_l (list
;x;x;	      (+ (car m1) (* len_1 (cos ang_l)))
;x;x;	      (+ (cadr m1) (* len_1 (sin ang_l)))
;x;x;	      )
;x;x;      )
;x;x;
;x;x;
;x;x;(command "LINE" m1 end_r "")
;x;x;(command "LINE" m1 end_l "")
;x;x;
;x;x;(setq end_m (list (car m1) (+ (cadr m1) len_1) ))
;x;x;
;x;x;(command "LINE" m1 m1 "")
;x;x;(command "LINE" m1 end_m "")
;x;x
;x;x
;x;x;;(command "LINE" m1 
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x
;x;x(setvar "OSMODE" old-osmode)
;x;x
;x;x
;x;x
