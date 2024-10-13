(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var22 0)
(declare-sort var2989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun fileName/-915018355 (var22) String)
(declare-const null-var22 var22)
(declare-const null-String String)
(declare-const var3159 var22) ; Statement: r2 := @this: org.apache.log4j.FileAppender 
(assert (not (= var3159 null-var22)))
(declare-const var3404 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3404 null-String)))
(assert true)
(define-const var539 String (trim/-847153721 var3404)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(declare-const var3159!1 var22)
(assert (not (= var3159!1 null-var22)))
(assert (= (fileName/-915018355 var3159!1) var539)) ; Statement: r2.<org.apache.log4j.FileAppender: java.lang.String fileName> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), fileName/-915018355=([org.apache.log4j.FileAppender], java.lang.String)}
; {var22=org.apache.log4j.FileAppender, var3159=r2, var3404=r0, var2989=null_type, var539=r1}
; {org.apache.log4j.FileAppender=var22, r2=var3159, r0=var3404, null_type=var2989, r1=var539}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r2 := @this: org.apache.log4j.FileAppender;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	r2.<org.apache.log4j.FileAppender: java.lang.String fileName> = r1;	return
;block_num 1