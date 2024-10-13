(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2754 0)
(declare-sort var3493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun orderByClause/34499814 (var2754) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2754 var2754)
(declare-const null-String String)
(declare-const var3948 var2754) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var3948 null-var2754)))
(declare-const var3207 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3207 null-String)))
(define-const var2104 String (orderByClause/34499814 var3948)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
(assert (not (not (= var2104 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var349 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var349)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var349!1 String)
(assert (= var349!1 ""))
(declare-const var3948!1 var2754)
(assert (not (= var3948!1 null-var2754)))
(assert (= (orderByClause/34499814 var3948!1) var349!1)) ; Statement: r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> = $r5 
 ; Statement: goto [?= $r4 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>] 
(assert true) ; Non Conditional
(define-const var769 String (orderByClause/34499814 var3948!1)) ; Statement: $r4 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
(assert true)
;(assert (append/672562846 var769 var3207)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var769!1 String)
(assert (= var769!1 (str.++ var769 var3207)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {orderByClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2754=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var3948=r0, var3207=r3, var3493=null_type, var2104=$r1, var349=$r5, var769=$r4}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var2754, r0=var3948, r3=var3207, null_type=var3493, $r1=var2104, $r5=var349, $r4=var769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	if $r1 != null goto $r2 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> = $r5;	goto [?= $r4 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>];	$r4 = r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	return
;block_num 3