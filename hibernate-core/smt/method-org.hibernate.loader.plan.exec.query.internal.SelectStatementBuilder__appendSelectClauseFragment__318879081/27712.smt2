(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2305 0)
(declare-sort var115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selectClause/34499814 (var2305) String)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun guesstimatedBufferSize/34499814 (var2305) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2305 var2305)
(declare-const null-String String)
(declare-const var1389 var2305) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var1389 null-var2305)))
(declare-const var1735 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1735 null-String)))
(define-const var1177 String (selectClause/34499814 var1389)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause> 
(assert true)
(define-const var1556 Int (length/-171891354 var1177)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause> 
(assert (<= var1556 0)) ; Cond: $i0 <= 0 
(define-const var158 String (selectClause/34499814 var1389)) ; Statement: $r3 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause> 
(assert true)
;(assert (append/672562846 var158 var1735)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var158!1 String)
(assert (= var158!1 (str.++ var158 var1735)))
(define-const var367 Int (guesstimatedBufferSize/34499814 var1389)) ; Statement: $i1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> 
(assert true)
(define-const var962 Int (length/-134980193 var1735)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var1814 Int (+ var367 var962)) ; Statement: $i3 = $i1 + $i2 
(declare-const var1389!1 var2305)
(assert (not (= var1389!1 null-var2305)))
(assert (= (guesstimatedBufferSize/34499814 var1389!1) var1814)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {selectClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), guesstimatedBufferSize/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], int), length/-134980193=([java.lang.String], int)}
; {var2305=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var1389=r0, var1735=r2, var115=null_type, var1177=$r1, var1556=$i0, var158=$r3, var367=$i1, var962=$i2, var1814=$i3}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var2305, r0=var1389, r2=var1735, null_type=var115, $r1=var1177, $i0=var1556, $r3=var158, $i1=var367, $i2=var962, $i3=var1814}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause>;	$r3 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$i1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize>;	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	$i3 = $i1 + $i2;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = $i3;	return
;block_num 2