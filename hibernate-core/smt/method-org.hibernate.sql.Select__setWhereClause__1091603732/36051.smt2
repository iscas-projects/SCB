(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort var3220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun whereClause/-766285534 (var2795) String)
(declare-fun guesstimatedBufferSize/-766285534 (var2795) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2795 var2795)
(declare-const null-String String)
(declare-const var405 var2795) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var405 null-var2795)))
(declare-const var2332 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2332 null-String)))
(declare-const var405!1 var2795)
(assert (not (= var405!1 null-var2795)))
(assert (= (whereClause/-766285534 var405!1) var2332)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String whereClause> = r1 
(define-const var1005 Int (guesstimatedBufferSize/-766285534 var405!1)) ; Statement: $i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(assert true)
(define-const var3215 Int (length/-134980193 var2332)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3600 Int (+ var1005 var3215)) ; Statement: $i2 = $i0 + $i1 
(declare-const var405!2 var2795)
(assert (not (= var405!2 null-var2795)))
(assert (= (guesstimatedBufferSize/-766285534 var405!2) var3600)) ; Statement: r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {whereClause/-766285534=([org.hibernate.sql.Select], java.lang.String), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), length/-134980193=([java.lang.String], int)}
; {var2795=org.hibernate.sql.Select, var405=r0, var2332=r1, var3220=null_type, var1005=$i0, var3215=$i1, var3600=$i2}
; {org.hibernate.sql.Select=var2795, r0=var405, r1=var2332, null_type=var3220, $i0=var1005, $i1=var3215, $i2=var3600}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.Select;	r1 := @parameter0: java.lang.String;	r0.<org.hibernate.sql.Select: java.lang.String whereClause> = r1;	$i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2;	return r0
;block_num 1