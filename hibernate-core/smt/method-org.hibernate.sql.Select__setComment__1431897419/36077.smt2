(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var406 0)
(declare-sort var3144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun comment/-766285534 (var406) String)
(declare-fun guesstimatedBufferSize/-766285534 (var406) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var406 var406)
(declare-const null-String String)
(declare-const var2675 var406) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var2675 null-var406)))
(declare-const var2024 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2024 null-String)))
(declare-const var2675!1 var406)
(assert (not (= var2675!1 null-var406)))
(assert (= (comment/-766285534 var2675!1) var2024)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String comment> = r1 
(define-const var2909 Int (guesstimatedBufferSize/-766285534 var2675!1)) ; Statement: $i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(assert true)
(define-const var3577 Int (length/-134980193 var2024)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1324 Int (+ var2909 var3577)) ; Statement: $i2 = $i0 + $i1 
(declare-const var2675!2 var406)
(assert (not (= var2675!2 null-var406)))
(assert (= (guesstimatedBufferSize/-766285534 var2675!2) var1324)) ; Statement: r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {comment/-766285534=([org.hibernate.sql.Select], java.lang.String), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), length/-134980193=([java.lang.String], int)}
; {var406=org.hibernate.sql.Select, var2675=r0, var2024=r1, var3144=null_type, var2909=$i0, var3577=$i1, var1324=$i2}
; {org.hibernate.sql.Select=var406, r0=var2675, r1=var2024, null_type=var3144, $i0=var2909, $i1=var3577, $i2=var1324}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.Select;	r1 := @parameter0: java.lang.String;	r0.<org.hibernate.sql.Select: java.lang.String comment> = r1;	$i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2;	return r0
;block_num 1