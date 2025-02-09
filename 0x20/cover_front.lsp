
(setq old-osmode (getvar "OSMODE"))
(setvar "OSMODE" 0)

(setq p0 (list 0.0  0.0))
(setq p1 (list 0.0  119.0))
(setq p2 (list 84.0 119.0))
(setq p3 (list 84.0 0.0))

(command "LINE" p0 p1 "")
(command "LINE" p1 p2 "")
(command "LINE" p2 p3 "")
(command "LINE" p3 p0 "")

(setq d0 (distance p1 p2))


(setq m1 (list (/ (+ (car p1) (car p2)) 2) (- (cadr p1) (/ d0 2) )))
;(setq m0 (list (/ (+ (car p0) (car p3)) 2) (/ (+ (cadr p0) (cadr p3)) 2) ))
(setq m0 (list (/ (+ (car p0) (car p3)) 2) (+ (cadr p0) (/ d0 2) )))
;(setq m1to2x (list (car m1to2) (cadr m1to2)))

;(princ m1)
(command "CIRCLE" m1 "d" d0)
(command "CIRCLE" m0 "d" d0)

(setq d1 20.0)

(command "CIRCLE" m1 "d" d1)
(command "CIRCLE" m0 "d" d1)

(setq d2 (* 18.0 2))
(command "CIRCLE" m1 "d" d2)
(command "CIRCLE" m0 "d" d2)

(setq d3 68.0)
(command "CIRCLE" m0 "d" d3)
(command "CIRCLE" m1 "d" d3)

(princ d3)

(command "CIRCLE" m0 "d" d3)
(command "CIRCLE" m1 "d" d3)


(command "LINE" m0 m1 "")

(setq ang_r (* pi (/ (- 90 30) 180.0)))
(setq ang_l (* pi (/ (+ 90 30) 180.0)))

(setq len_1 100.0)
(princ ang_r)
(princ ang_l)
(princ len_1)

(setq end_r (list
	      (+ (car m1) (* len_1 (cos ang_r)))
	      (+ (cadr m1) (* len_1 (sin ang_r)))
	      )
      )

(setq end_l (list
	      (+ (car m1) (* len_1 (cos ang_l)))
	      (+ (cadr m1) (* len_1 (sin ang_l)))
	      )
      )


(command "LINE" m1 end_r "")
(command "LINE" m1 end_l "")

(setq end_m (list (car m1) (+ (cadr m1) len_1) ))

(command "LINE" m1 m1 "")
(command "LINE" m1 end_m "")


;;(command "LINE" m1 

(setvar "OSMODE" old-osmode)



