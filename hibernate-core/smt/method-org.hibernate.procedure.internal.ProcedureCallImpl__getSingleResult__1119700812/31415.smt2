(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var309 0)
(declare-sort var1105 0)
(declare-sort var2272 0)
(declare-sort var287 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResultList/1444901515 (var309) var1105)
(declare-fun var2272-init () var2272)
(declare-fun arr-var287-init () (Array Int var287))
(declare-fun getProcedureName/-1834304419 (var309) String)
(declare-fun cast-from-String-to-var287 (String) var287)
(declare-fun String_format/1339386452 (String (Array Int var287)) String)
(declare-fun <init>/-1335411240 (var2272 String) void)
(declare-fun cast-from-var2272-to-var1386 (var2272) var1386)
(declare-const null-var309 var309)
(declare-const null-var1105 var1105)
(declare-const null-__Array__Int__var287__ (Array Int var287))
(declare-const var668 var309) ; Statement: r0 := @this: org.hibernate.procedure.internal.ProcedureCallImpl 
(assert (not (= var668 null-var309)))
(assert true)
(define-const var528 var1105 (getResultList/1444901515 var668)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.procedure.internal.ProcedureCallImpl: java.util.List getResultList()>() 
 ; Statement: if r1 == null goto $r11 = new javax.persistence.NoResultException 
(assert (= var528 null-var1105)) ; Cond: r1 == null 
(define-const var3729 var2272 var2272-init) ; Statement: $r11 = new javax.persistence.NoResultException 
(define-const var1507 (Array Int var287) arr-var287-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var949 String (getProcedureName/-1834304419 var668)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.procedure.internal.ProcedureCallImpl: java.lang.String getProcedureName()>() 
(declare-const var1507!1 (Array Int var287))
(assert (not (= var1507!1 null-__Array__Int__var287__)))
(assert (= (select var1507!1 0) (cast-from-String-to-var287 var949))) ; Statement: $r3[0] = $r4 
(define-const var2304 String (String_format/1339386452 "Call to stored procedure [%s] returned no results" var1507!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Call to stored procedure [%s] returned no results", $r3) 
(assert true)
;(assert (<init>/-1335411240 var3729 var2304)) ; Statement: specialinvoke $r11.<javax.persistence.NoResultException: void <init>(java.lang.String)>($r5) 

(declare-const var3729!1 var2272)
(declare-const var2304!1 String)
(define-const var1382 var1386 (cast-from-var2272-to-var1386 var3729!1)) ; Statement: $r13 = (java.lang.Throwable) $r11 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getResultList/1444901515=([org.hibernate.procedure.internal.ProcedureCallImpl], java.util.List), var2272-init=([], javax.persistence.NoResultException), arr-var287-init=([], java.lang.Object[]), getProcedureName/-1834304419=([org.hibernate.procedure.internal.ProcedureCallImpl], java.lang.String), cast-from-String-to-var287=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1335411240=([javax.persistence.NoResultException, java.lang.String], void), cast-from-var2272-to-var1386=([javax.persistence.NoResultException], java.lang.Throwable)}
; {var309=org.hibernate.procedure.internal.ProcedureCallImpl, var668=r0, var1105=java.util.List, var528=r1, var2272=javax.persistence.NoResultException, var3729=$r11, var287=java.lang.Object, var1507=$r3, var949=$r4, var2304=$r5, var1386=java.lang.Throwable, var1382=$r13}
; {org.hibernate.procedure.internal.ProcedureCallImpl=var309, r0=var668, java.util.List=var1105, r1=var528, javax.persistence.NoResultException=var2272, $r11=var3729, java.lang.Object=var287, $r3=var1507, $r4=var949, $r5=var2304, java.lang.Throwable=var1386, $r13=var1382}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.procedure.internal.ProcedureCallImpl;	r1 = virtualinvoke r0.<org.hibernate.procedure.internal.ProcedureCallImpl: java.util.List getResultList()>();	if r1 == null goto $r11 = new javax.persistence.NoResultException;	$r11 = new javax.persistence.NoResultException;	$r3 = newarray (java.lang.Object)[1];	$r4 = virtualinvoke r0.<org.hibernate.procedure.internal.ProcedureCallImpl: java.lang.String getProcedureName()>();	$r3[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Call to stored procedure [%s] returned no results", $r3);	specialinvoke $r11.<javax.persistence.NoResultException: void <init>(java.lang.String)>($r5);	$r13 = (java.lang.Throwable) $r11;	throw $r13
;block_num 2