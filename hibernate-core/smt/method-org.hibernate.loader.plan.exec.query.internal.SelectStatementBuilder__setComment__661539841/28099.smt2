(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3482 0)
(declare-sort var3152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun comment/34499814 (var3482) String)
(declare-fun guesstimatedBufferSize/34499814 (var3482) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3482 var3482)
(declare-const null-String String)
(declare-const var2883 var3482) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var2883 null-var3482)))
(declare-const var3397 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3397 null-String)))
(declare-const var2883!1 var3482)
(assert (not (= var2883!1 null-var3482)))
(assert (= (comment/34499814 var2883!1) var3397)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String comment> = r1 
(define-const var2616 Int (guesstimatedBufferSize/34499814 var2883!1)) ; Statement: $i0 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> 
(assert true)
(define-const var3624 Int (length/-134980193 var3397)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3541 Int (+ var2616 var3624)) ; Statement: $i2 = $i0 + $i1 
(declare-const var2883!2 var3482)
(assert (not (= var2883!2 null-var3482)))
(assert (= (guesstimatedBufferSize/34499814 var2883!2) var3541)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {comment/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.String), guesstimatedBufferSize/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], int), length/-134980193=([java.lang.String], int)}
; {var3482=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var2883=r0, var3397=r1, var3152=null_type, var2616=$i0, var3624=$i1, var3541=$i2}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var3482, r0=var2883, r1=var3397, null_type=var3152, $i0=var2616, $i1=var3624, $i2=var3541}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r1 := @parameter0: java.lang.String;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String comment> = r1;	$i0 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i2;	return
;block_num 1