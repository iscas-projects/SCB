(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var807 0)
(declare-sort var3329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fromClause/34499814 (var807) String)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun guesstimatedBufferSize/34499814 (var807) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var807 var807)
(declare-const null-String String)
(declare-const var1495 var807) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var1495 null-var807)))
(declare-const var467 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var467 null-String)))
(define-const var1243 String (fromClause/34499814 var1495)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause> 
(assert true)
(define-const var2155 Int (length/-171891354 var1243)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause> 
(assert (<= var2155 0)) ; Cond: $i0 <= 0 
(define-const var837 String (fromClause/34499814 var1495)) ; Statement: $r3 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause> 
(assert true)
;(assert (append/672562846 var837 var467)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var837!1 String)
(assert (= var837!1 (str.++ var837 var467)))
(define-const var2661 Int (guesstimatedBufferSize/34499814 var1495)) ; Statement: $i1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> 
(assert true)
(define-const var1218 Int (length/-134980193 var467)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var122 Int (+ var2661 var1218)) ; Statement: $i3 = $i1 + $i2 
(declare-const var1495!1 var807)
(assert (not (= var1495!1 null-var807)))
(assert (= (guesstimatedBufferSize/34499814 var1495!1) var122)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {fromClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), guesstimatedBufferSize/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], int), length/-134980193=([java.lang.String], int)}
; {var807=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var1495=r0, var467=r2, var3329=null_type, var1243=$r1, var2155=$i0, var837=$r3, var2661=$i1, var1218=$i2, var122=$i3}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var807, r0=var1495, r2=var467, null_type=var3329, $r1=var1243, $i0=var2155, $r3=var837, $i1=var2661, $i2=var1218, $i3=var122}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause>;	$r3 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$i1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize>;	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	$i3 = $i1 + $i2;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i3;	return
;block_num 2