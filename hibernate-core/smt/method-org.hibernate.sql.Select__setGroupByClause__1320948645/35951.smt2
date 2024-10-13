(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1563 0)
(declare-sort var2104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun groupByClause/-766285534 (var1563) String)
(declare-fun guesstimatedBufferSize/-766285534 (var1563) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1563 var1563)
(declare-const null-String String)
(declare-const var545 var1563) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var545 null-var1563)))
(declare-const var3816 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3816 null-String)))
(declare-const var545!1 var1563)
(assert (not (= var545!1 null-var1563)))
(assert (= (groupByClause/-766285534 var545!1) var3816)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String groupByClause> = r1 
(define-const var312 Int (guesstimatedBufferSize/-766285534 var545!1)) ; Statement: $i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(assert true)
(define-const var3619 Int (length/-134980193 var3816)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1985 Int (+ var312 var3619)) ; Statement: $i2 = $i0 + $i1 
(declare-const var545!2 var1563)
(assert (not (= var545!2 null-var1563)))
(assert (= (guesstimatedBufferSize/-766285534 var545!2) var1985)) ; Statement: r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {groupByClause/-766285534=([org.hibernate.sql.Select], java.lang.String), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), length/-134980193=([java.lang.String], int)}
; {var1563=org.hibernate.sql.Select, var545=r0, var3816=r1, var2104=null_type, var312=$i0, var3619=$i1, var1985=$i2}
; {org.hibernate.sql.Select=var1563, r0=var545, r1=var3816, null_type=var2104, $i0=var312, $i1=var3619, $i2=var1985}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.Select;	r1 := @parameter0: java.lang.String;	r0.<org.hibernate.sql.Select: java.lang.String groupByClause> = r1;	$i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i2;	return r0
;block_num 1