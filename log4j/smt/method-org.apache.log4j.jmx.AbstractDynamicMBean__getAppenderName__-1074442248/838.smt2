(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2409 0)
(declare-sort var3338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2409_getName/-564791716 (var2409) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2409 var2409)
(declare-const null-String String)
(declare-const var3130 var2409) ; Statement: r0 := @parameter0: org.apache.log4j.Appender 
(assert (not (= var3130 null-var2409)))
(define-const var1989 String (var2409_getName/-564791716 var3130)) ; Statement: r2 = interfaceinvoke r0.<org.apache.log4j.Appender: java.lang.String getName()>() 
 ; Statement: if r2 == null goto r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= var1989 null-String))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var3499 String (trim/-847153721 var1989)) ; Statement: $r1 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3626 Int (length/-134980193 var3499)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto return r2 
(assert (not (= var3626 0))) ; Cond: $i0 != 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2409_getName/-564791716=([org.apache.log4j.Appender], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2409=org.apache.log4j.Appender, var3130=r0, var1989=r2, var3338=null_type, var3499=$r1, var3626=$i0}
; {org.apache.log4j.Appender=var2409, r0=var3130, r2=var1989, null_type=var3338, $r1=var3499, $i0=var3626}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: org.apache.log4j.Appender;	r2 = interfaceinvoke r0.<org.apache.log4j.Appender: java.lang.String getName()>();	if r2 == null goto r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r1 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 != 0 goto return r2;	return r2
;block_num 3