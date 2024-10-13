(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2327 0)
(declare-sort var1432 0)
(declare-sort var3396 0)
(declare-sort var1600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3396) void)
(declare-fun cast-from-var2327-to-var3396 (var2327) var3396)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun selectClause/34499814 (var2327) String)
(declare-fun fromClause/34499814 (var2327) String)
(declare-fun var1600-init () var1600)
(declare-fun <init>/-2121252426 (var1600) void)
(declare-fun lockOptions/34499814 (var2327) var1600)
(declare-fun guesstimatedBufferSize/34499814 (var2327) Int)
(declare-fun dialect/34499814 (var2327) var1432)
(declare-const null-var2327 var2327)
(declare-const null-var1432 var1432)
(declare-const var1525 var2327) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var1525 null-var2327)))
(declare-const var2361 var1432) ; Statement: r4 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var2361 null-var1432)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2327-to-var3396 var1525))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1525!1 var2327)
(define-const var1939 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1939)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1939!1 String)
(assert (= var1939!1 ""))
(declare-const var1525!2 var2327)
(assert (not (= var1525!2 null-var2327)))
(assert (= (selectClause/34499814 var1525!2) var1939!1)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause> = $r1 
(define-const var194 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var194)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var194!1 String)
(assert (= var194!1 ""))
(declare-const var1525!3 var2327)
(assert (not (= var1525!3 null-var2327)))
(assert (= (fromClause/34499814 var1525!3) var194!1)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause> = $r2 
(define-const var150 var1600 var1600-init) ; Statement: $r3 = new org.hibernate.LockOptions 
(assert true)
;(assert (<init>/-2121252426 var150)) ; Statement: specialinvoke $r3.<org.hibernate.LockOptions: void <init>()>() 

(declare-const var150!1 var1600)
(declare-const var1525!4 var2327)
(assert (not (= var1525!4 null-var2327)))
(assert (= (lockOptions/34499814 var1525!4) var150!1)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.LockOptions lockOptions> = $r3 
(declare-const var1525!5 var2327)
(assert (not (= var1525!5 null-var2327)))
(assert (= (guesstimatedBufferSize/34499814 var1525!5) 20)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = 20 
(declare-const var1525!6 var2327)
(assert (not (= var1525!6 null-var2327)))
(assert (= (dialect/34499814 var1525!6) var2361)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.dialect.Dialect dialect> = r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2327-to-var3396=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), selectClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), fromClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), var1600-init=([], org.hibernate.LockOptions), <init>/-2121252426=([org.hibernate.LockOptions], void), lockOptions/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], org.hibernate.LockOptions), guesstimatedBufferSize/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], int), dialect/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], org.hibernate.dialect.Dialect)}
; {var2327=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var1525=r0, var1432=org.hibernate.dialect.Dialect, var2361=r4, var3396=java.lang.Object, var1939=$r1, var194=$r2, var1600=org.hibernate.LockOptions, var150=$r3}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var2327, r0=var1525, org.hibernate.dialect.Dialect=var1432, r4=var2361, java.lang.Object=var3396, $r1=var1939, $r2=var194, org.hibernate.LockOptions=var1600, $r3=var150}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r4 := @parameter0: org.hibernate.dialect.Dialect;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause> = $r2;	$r3 = new org.hibernate.LockOptions;	specialinvoke $r3.<org.hibernate.LockOptions: void <init>()>();	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.LockOptions lockOptions> = $r3;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> = 20;	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.dialect.Dialect dialect> = r4;	return
;block_num 1