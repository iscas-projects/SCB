(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var264 0)
(declare-sort var1285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun orderByClause/-766285534 (var264) String)
(declare-fun guesstimatedBufferSize/-766285534 (var264) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var264 var264)
(declare-const null-String String)
(declare-const var1400 var264) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var1400 null-var264)))
(declare-const var735 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var735 null-String)))
(declare-const var1400!1 var264)
(assert (not (= var1400!1 null-var264)))
(assert (= (orderByClause/-766285534 var1400!1) var735)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String orderByClause> = r1 
(define-const var2714 Int (guesstimatedBufferSize/-766285534 var1400!1)) ; Statement: $i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(assert true)
(define-const var1689 Int (length/-134980193 var735)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var139 Int (+ var2714 var1689)) ; Statement: $i2 = $i0 + $i1 
(declare-const var1400!2 var264)
(assert (not (= var1400!2 null-var264)))
(assert (= (guesstimatedBufferSize/-766285534 var1400!2) var139)) ; Statement: r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {orderByClause/-766285534=([org.hibernate.sql.Select], java.lang.String), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), length/-134980193=([java.lang.String], int)}
; {var264=org.hibernate.sql.Select, var1400=r0, var735=r1, var1285=null_type, var2714=$i0, var1689=$i1, var139=$i2}
; {org.hibernate.sql.Select=var264, r0=var1400, r1=var735, null_type=var1285, $i0=var2714, $i1=var1689, $i2=var139}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.Select;	r1 := @parameter0: java.lang.String;	r0.<org.hibernate.sql.Select: java.lang.String orderByClause> = r1;	$i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2;	return r0
;block_num 1