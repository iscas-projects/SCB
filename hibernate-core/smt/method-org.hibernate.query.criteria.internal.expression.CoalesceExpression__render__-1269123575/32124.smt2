(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3455 0)
(declare-sort var2572 0)
(declare-sort var2837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getExpressions/285582599 (var3455) var2837)
(declare-fun var2837_iterator/-912451715 (var2837) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3455 var3455)
(declare-const null-var2572 var2572)
(declare-const var2275 var3455) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.CoalesceExpression 
(assert (not (= var2275 null-var3455)))
(declare-const var737 var2572) ; Statement: r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var737 null-var2572)))
(define-const var769 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var769 "coalesce(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("coalesce(") 
(declare-const var769!1 String)
(assert (= var769!1 "coalesce("))
(define-const var3818 String "") ; Statement: r12 = "" 
(assert true)
(define-const var939 var2837 (getExpressions/285582599 var2275)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.CoalesceExpression: java.util.List getExpressions()>() 
(define-const var3200 Iterator (var2837_iterator/-912451715 var939)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3379 Bool (Iterator_hasNext/-1669924200 var3200)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var3379 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1589 String (append/672562846 var769!1 ")")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var769!2 String)
(assert (= var769!2 (str.++ var769!1 ")")))
(assert true)
(define-const var3961 String (toString/-2075883882 var1589)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getExpressions/285582599=([org.hibernate.query.criteria.internal.expression.CoalesceExpression], java.util.List), var2837_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3455=org.hibernate.query.criteria.internal.expression.CoalesceExpression, var2275=r1, var2572=org.hibernate.query.criteria.internal.compile.RenderingContext, var737=r8, var769=$r0, var3818=r12, var2837=java.util.List, var939=$r2, var3200=r3, var3379=$z0, var1589=$r4, var3961=$r5}
; {org.hibernate.query.criteria.internal.expression.CoalesceExpression=var3455, r1=var2275, org.hibernate.query.criteria.internal.compile.RenderingContext=var2572, r8=var737, $r0=var769, r12=var3818, java.util.List=var2837, $r2=var939, r3=var3200, $z0=var3379, $r4=var1589, $r5=var3961}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.CoalesceExpression;	r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("coalesce(");	r12 = "";	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.CoalesceExpression: java.util.List getExpressions()>();	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3