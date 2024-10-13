(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1106 0)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selectClause/-766285534 (var1106) String)
(declare-fun guesstimatedBufferSize/-766285534 (var1106) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1106 var1106)
(declare-const null-String String)
(declare-const var3077 var1106) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var3077 null-var1106)))
(declare-const var27 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var27 null-String)))
(declare-const var3077!1 var1106)
(assert (not (= var3077!1 null-var1106)))
(assert (= (selectClause/-766285534 var3077!1) var27)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String selectClause> = r1 
(define-const var1536 Int (guesstimatedBufferSize/-766285534 var3077!1)) ; Statement: $i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(assert true)
(define-const var2330 Int (length/-134980193 var27)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var587 Int (+ var1536 var2330)) ; Statement: $i2 = $i0 + $i1 
(declare-const var3077!2 var1106)
(assert (not (= var3077!2 null-var1106)))
(assert (= (guesstimatedBufferSize/-766285534 var3077!2) var587)) ; Statement: r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {selectClause/-766285534=([org.hibernate.sql.Select], java.lang.String), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), length/-134980193=([java.lang.String], int)}
; {var1106=org.hibernate.sql.Select, var3077=r0, var27=r1, var2636=null_type, var1536=$i0, var2330=$i1, var587=$i2}
; {org.hibernate.sql.Select=var1106, r0=var3077, r1=var27, null_type=var2636, $i0=var1536, $i1=var2330, $i2=var587}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.Select;	r1 := @parameter0: java.lang.String;	r0.<org.hibernate.sql.Select: java.lang.String selectClause> = r1;	$i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2;	return r0
;block_num 1