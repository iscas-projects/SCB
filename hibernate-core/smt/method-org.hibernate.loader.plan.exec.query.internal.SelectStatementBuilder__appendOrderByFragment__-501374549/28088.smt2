(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1999 0)
(declare-sort var441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun orderByClause/34499814 (var1999) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun guesstimatedBufferSize/34499814 (var1999) Int)
(declare-const null-var1999 var1999)
(declare-const null-String String)
(declare-const var2907 var1999) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var2907 null-var1999)))
(declare-const var1816 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1816 null-String)))
(define-const var403 String (orderByClause/34499814 var2907)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
(assert (not (= var403 null-String))) ; Cond: $r1 != null 
(define-const var3595 String (orderByClause/34499814 var2907)) ; Statement: $r2 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
(assert true)
;(assert (append/672562846 var3595 ", ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 ", ")))
(define-const var3481 Int (guesstimatedBufferSize/34499814 var2907)) ; Statement: $i0 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> 
(define-const var3463 Int (+ var3481 2)) ; Statement: $i1 = $i0 + 2 
(declare-const var2907!1 var1999)
(assert (not (= var2907!1 null-var1999)))
(assert (= (guesstimatedBufferSize/34499814 var2907!1) var3463)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i1 
(assert true) ; Non Conditional
(define-const var1799 String (orderByClause/34499814 var2907!1)) ; Statement: $r4 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
(assert true)
;(assert (append/672562846 var1799 var1816)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1799!1 String)
(assert (= var1799!1 (str.++ var1799 var1816)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {orderByClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), guesstimatedBufferSize/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], int)}
; {var1999=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var2907=r0, var1816=r3, var441=null_type, var403=$r1, var3595=$r2, var3481=$i0, var3463=$i1, var1799=$r4}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var1999, r0=var2907, r3=var1816, null_type=var441, $r1=var403, $r2=var3595, $i0=var3481, $i1=var3463, $r4=var1799}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	if $r1 != null goto $r2 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	$r2 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i0 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize>;	$i1 = $i0 + 2;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i1;	$r4 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	return
;block_num 3