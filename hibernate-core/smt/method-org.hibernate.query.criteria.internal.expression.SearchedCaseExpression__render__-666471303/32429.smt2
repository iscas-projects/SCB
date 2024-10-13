(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3340 0)
(declare-sort var1299 0)
(declare-sort var2093 0)
(declare-sort var3732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getWhenClauses/2026664360 (var3340) var2093)
(declare-fun var2093_iterator/-912451715 (var2093) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getOtherwiseResult/-56918431 (var3340) var3732)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3340 var3340)
(declare-const null-var1299 var1299)
(declare-const null-var3732 var3732)
(declare-const var3982 var3340) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.SearchedCaseExpression 
(assert (not (= var3982 null-var3340)))
(declare-const var3551 var1299) ; Statement: r4 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3551 null-var1299)))
(define-const var2786 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2786 "case")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("case") 
(declare-const var2786!1 String)
(assert (= var2786!1 "case"))
(assert true)
(define-const var3848 var2093 (getWhenClauses/2026664360 var3982)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SearchedCaseExpression: java.util.List getWhenClauses()>() 
(define-const var173 Iterator (var2093_iterator/-912451715 var3848)) ; Statement: r19 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3691 Bool (Iterator_hasNext/-1669924200 var173)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r20 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SearchedCaseExpression: javax.persistence.criteria.Expression getOtherwiseResult()>() 
(assert (= (ite var3691 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1018 var3732 (getOtherwiseResult/-56918431 var3982)) ; Statement: r20 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SearchedCaseExpression: javax.persistence.criteria.Expression getOtherwiseResult()>() 
 ; Statement: if r20 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end") 
(assert (= var1018 null-var3732)) ; Cond: r20 == null 
(assert true)
;(assert (append/672562846 var2786!1 " end")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end") 
(declare-const var2786!2 String)
(assert (= var2786!2 (str.++ var2786!1 " end")))
(assert true)
(define-const var1777 String (toString/-2075883882 var2786!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getWhenClauses/2026664360=([org.hibernate.query.criteria.internal.expression.SearchedCaseExpression], java.util.List), var2093_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getOtherwiseResult/-56918431=([org.hibernate.query.criteria.internal.expression.SearchedCaseExpression], javax.persistence.criteria.Expression), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3340=org.hibernate.query.criteria.internal.expression.SearchedCaseExpression, var3982=r1, var1299=org.hibernate.query.criteria.internal.compile.RenderingContext, var3551=r4, var2786=$r0, var2093=java.util.List, var3848=$r2, var173=r19, var3691=$z0, var3732=javax.persistence.criteria.Expression, var1018=r20, var1777=$r3}
; {org.hibernate.query.criteria.internal.expression.SearchedCaseExpression=var3340, r1=var3982, org.hibernate.query.criteria.internal.compile.RenderingContext=var1299, r4=var3551, $r0=var2786, java.util.List=var2093, $r2=var3848, r19=var173, $z0=var3691, javax.persistence.criteria.Expression=var3732, r20=var1018, $r3=var1777}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.SearchedCaseExpression;	r4 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("case");	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SearchedCaseExpression: java.util.List getWhenClauses()>();	r19 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r20 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SearchedCaseExpression: javax.persistence.criteria.Expression getOtherwiseResult()>();	r20 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.SearchedCaseExpression: javax.persistence.criteria.Expression getOtherwiseResult()>();	if r20 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4