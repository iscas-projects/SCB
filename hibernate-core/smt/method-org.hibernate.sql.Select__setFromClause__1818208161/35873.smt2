(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2478 0)
(declare-sort var2703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fromClause/-766285534 (var2478) String)
(declare-fun guesstimatedBufferSize/-766285534 (var2478) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2478 var2478)
(declare-const null-String String)
(declare-const var879 var2478) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var879 null-var2478)))
(declare-const var3990 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3990 null-String)))
(declare-const var879!1 var2478)
(assert (not (= var879!1 null-var2478)))
(assert (= (fromClause/-766285534 var879!1) var3990)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String fromClause> = r1 
(define-const var180 Int (guesstimatedBufferSize/-766285534 var879!1)) ; Statement: $i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(assert true)
(define-const var2315 Int (length/-134980193 var3990)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3495 Int (+ var180 var2315)) ; Statement: $i2 = $i0 + $i1 
(declare-const var879!2 var2478)
(assert (not (= var879!2 null-var2478)))
(assert (= (guesstimatedBufferSize/-766285534 var879!2) var3495)) ; Statement: r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {fromClause/-766285534=([org.hibernate.sql.Select], java.lang.String), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), length/-134980193=([java.lang.String], int)}
; {var2478=org.hibernate.sql.Select, var879=r0, var3990=r1, var2703=null_type, var180=$i0, var2315=$i1, var3495=$i2}
; {org.hibernate.sql.Select=var2478, r0=var879, r1=var3990, null_type=var2703, $i0=var180, $i1=var2315, $i2=var3495}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.Select;	r1 := @parameter0: java.lang.String;	r0.<org.hibernate.sql.Select: java.lang.String fromClause> = r1;	$i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2;	return r0
;block_num 1