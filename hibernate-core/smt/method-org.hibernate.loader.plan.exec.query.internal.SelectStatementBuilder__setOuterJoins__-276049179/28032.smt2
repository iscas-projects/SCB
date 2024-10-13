(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1357 0)
(declare-sort var65 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun outerJoinsAfterFrom/34499814 (var1357) String)
(declare-fun cleanRestrictions/-2033667195 (var1357 String) String)
(declare-fun outerJoinsAfterWhere/34499814 (var1357) String)
(declare-fun guesstimatedBufferSize/34499814 (var1357) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1357 var1357)
(declare-const null-String String)
(declare-const var551 var1357) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var551 null-var1357)))
(declare-const var2358 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2358 null-String)))
(declare-const var765 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var765 null-String)))
(declare-const var551!1 var1357)
(assert (not (= var551!1 null-var1357)))
(assert (= (outerJoinsAfterFrom/34499814 var551!1) var2358)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String outerJoinsAfterFrom> = r1 
(assert true)
(define-const var3686 String (cleanRestrictions/-2033667195 var551!1 var765)) ; Statement: r3 = specialinvoke r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String cleanRestrictions(java.lang.String)>(r2) 
(declare-const var551!2 var1357)
(assert (not (= var551!2 null-var1357)))
(assert (= (outerJoinsAfterWhere/34499814 var551!2) var3686)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String outerJoinsAfterWhere> = r3 
(define-const var1771 Int (guesstimatedBufferSize/34499814 var551!2)) ; Statement: $i0 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> 
(assert true)
(define-const var3500 Int (length/-134980193 var2358)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var2752 Int (length/-134980193 var3686)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var1291 Int (+ var3500 var2752)) ; Statement: $i3 = $i2 + $i1 
(define-const var2248 Int (+ var1771 var1291)) ; Statement: $i4 = $i0 + $i3 
(declare-const var551!3 var1357)
(assert (not (= var551!3 null-var1357)))
(assert (= (guesstimatedBufferSize/34499814 var551!3) var2248)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {outerJoinsAfterFrom/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.String), cleanRestrictions/-2033667195=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, java.lang.String], java.lang.String), outerJoinsAfterWhere/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.String), guesstimatedBufferSize/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], int), length/-134980193=([java.lang.String], int)}
; {var1357=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var551=r0, var2358=r1, var65=null_type, var765=r2, var3686=r3, var1771=$i0, var3500=$i2, var2752=$i1, var1291=$i3, var2248=$i4}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var1357, r0=var551, r1=var2358, null_type=var65, r2=var765, r3=var3686, $i0=var1771, $i2=var3500, $i1=var2752, $i3=var1291, $i4=var2248}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String outerJoinsAfterFrom> = r1;	r3 = specialinvoke r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String cleanRestrictions(java.lang.String)>(r2);	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String outerJoinsAfterWhere> = r3;	$i0 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize>;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r3.<java.lang.String: int length()>();	$i3 = $i2 + $i1;	$i4 = $i0 + $i3;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i4;	return
;block_num 1