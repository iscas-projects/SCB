(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var533 0)
(declare-sort var1967 0)
(declare-sort var1681 0)
(declare-sort var273 0)
(declare-sort var2581 0)
(declare-sort var2694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateNotClosed/-1956520713 (var533) void)
(declare-fun var2581-init () var2581)
(declare-fun arr-var2694-init () (Array Int var2694))
(declare-fun cast-from-var1681-to-var2694 (var1681) var2694)
(declare-fun String_format/1339386452 (String (Array Int var2694)) String)
(declare-fun <init>/1483537917 (var2581 String) void)
(declare-fun cast-from-var2581-to-var273 (var2581) var273)
(declare-const null-var533 var533)
(declare-const null-String String)
(declare-const null-var1681 var1681)
(declare-const null-var273 var273)
(declare-const null-__Array__Int__var2694__ (Array Int var2694))
(declare-const var2644 var533) ; Statement: r0 := @this: org.hibernate.internal.SessionFactoryImpl 
(assert (not (= var2644 null-var533)))
(declare-const var1402 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1402 null-String)))
(declare-const var3319 var1681) ; Statement: r1 := @parameter1: javax.persistence.Query 
(assert (not (= var3319 null-var1681)))
(assert true)
;(assert (validateNotClosed/-1956520713 var2644)) ; Statement: virtualinvoke r0.<org.hibernate.internal.SessionFactoryImpl: void validateNotClosed()>() 

(declare-const var2644!1 var533)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var367 var273) ; Statement: $r15 := @caughtexception 
(assert (not (= var367 null-var273)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var754 var273) ; Statement: $r14 := @caughtexception 
(assert (not (= var754 null-var273)))
(assert true) ; Non Conditional
(define-const var2007 var2581 var2581-init) ; Statement: $r18 = new javax.persistence.PersistenceException 
(define-const var2641 (Array Int var2694) arr-var2694-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var2641!1 (Array Int var2694))
(assert (not (= var2641!1 null-__Array__Int__var2694__)))
(assert (= (select var2641!1 0) (cast-from-var1681-to-var2694 var3319))) ; Statement: $r5[0] = r1 
(define-const var61 String (String_format/1339386452 "Unsure how to how to properly unwrap given Query [%s] as basis for named query" var2641!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unsure how to how to properly unwrap given Query [%s] as basis for named query", $r5) 
(assert true)
;(assert (<init>/1483537917 var2007 var61)) ; Statement: specialinvoke $r18.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r6) 

(declare-const var2007!1 var2581)
(declare-const var61!1 String)
(define-const var1837 var273 (cast-from-var2581-to-var273 var2007!1)) ; Statement: $r19 = (java.lang.Throwable) $r18 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {validateNotClosed/-1956520713=([org.hibernate.internal.SessionFactoryImpl], void), var2581-init=([], javax.persistence.PersistenceException), arr-var2694-init=([], java.lang.Object[]), cast-from-var1681-to-var2694=([javax.persistence.Query], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1483537917=([javax.persistence.PersistenceException, java.lang.String], void), cast-from-var2581-to-var273=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var533=org.hibernate.internal.SessionFactoryImpl, var2644=r0, var1402=r8, var1967=null_type, var1681=javax.persistence.Query, var3319=r1, var273=java.lang.Throwable, var367=$r15, var754=$r14, var2581=javax.persistence.PersistenceException, var2007=$r18, var2694=java.lang.Object, var2641=$r5, var61=$r6, var1837=$r19}
; {org.hibernate.internal.SessionFactoryImpl=var533, r0=var2644, r8=var1402, null_type=var1967, javax.persistence.Query=var1681, r1=var3319, java.lang.Throwable=var273, $r15=var367, $r14=var754, javax.persistence.PersistenceException=var2581, $r18=var2007, java.lang.Object=var2694, $r5=var2641, $r6=var61, $r19=var1837}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.SessionFactoryImpl;	r8 := @parameter0: java.lang.String;	r1 := @parameter1: javax.persistence.Query;	virtualinvoke r0.<org.hibernate.internal.SessionFactoryImpl: void validateNotClosed()>();	$r15 := @caughtexception;	$r14 := @caughtexception;	$r18 = new javax.persistence.PersistenceException;	$r5 = newarray (java.lang.Object)[1];	$r5[0] = r1;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unsure how to how to properly unwrap given Query [%s] as basis for named query", $r5);	specialinvoke $r18.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r6);	$r19 = (java.lang.Throwable) $r18;	throw $r19
;block_num 4