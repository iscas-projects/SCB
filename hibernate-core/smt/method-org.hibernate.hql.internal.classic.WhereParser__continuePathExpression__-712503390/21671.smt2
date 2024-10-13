(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var27 0)
(declare-sort var3794 0)
(declare-sort var2040 0)
(declare-sort var2478 0)
(declare-sort var2551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun expectingPathContinuation/258954410 (var27) Bool)
(declare-fun pathExpressionParser/258954410 (var27) var2478)
(declare-fun lastCollectionElement/-1492227227 (var2478) var2551)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getElementName/-1278717123 (var27 var2551 var2040) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun doPathExpression/-251913214 (var27 String var2040) void)
(declare-fun addToCurrentJoin/1052333382 (var27 var2551) void)
(declare-const null-var27 var27)
(declare-const null-String String)
(declare-const null-var2040 var2040)
(declare-const var125 var27) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var125 null-var27)))
(declare-const var1175 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1175 null-String)))
(declare-const var798 var2040) ; Statement: r5 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var798 null-var2040)))
(declare-const var125!1 var27)
(assert (not (= var125!1 null-var27)))
(assert (= (expectingPathContinuation/258954410 var125!1) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.hql.internal.classic.WhereParser: boolean expectingPathContinuation> = 0 
(define-const var2095 var2478 (pathExpressionParser/258954410 var125!1)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.WhereParser: org.hibernate.hql.internal.classic.PathExpressionParser pathExpressionParser> 
(assert true)
(define-const var2883 var2551 (lastCollectionElement/-1492227227 var2095)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement lastCollectionElement()>() 
(assert true)
(define-const var868 Bool (startsWith/-1785782452 var1175 ".")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r4 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: java.lang.String[] elementColumns> 
(assert (not (= (ite var868 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1956 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1956)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1956!1 String)
(assert (= var1956!1 ""))
(assert true)
(define-const var1051 String (getElementName/-1278717123 var125!1 var2883 var798)) ; Statement: $r10 = specialinvoke r0.<org.hibernate.hql.internal.classic.WhereParser: java.lang.String getElementName(org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement,org.hibernate.hql.internal.classic.QueryTranslatorImpl)>(r2, r5) 
(assert true)
(define-const var3860 String (append/672562846 var1956!1 var1051)) ; Statement: $r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1956!2 String)
(assert (= var1956!2 (str.++ var1956!1 var1051)))
(assert true)
(define-const var1735 String (append/672562846 var3860 var1175)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3860!1 String)
(assert (= var3860!1 (str.++ var3860 var1175)))
(assert true)
(define-const var3987 String (toString/-2075883882 var1735)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (doPathExpression/-251913214 var125!1 var3987 var798)) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.classic.WhereParser: void doPathExpression(java.lang.String,org.hibernate.hql.internal.classic.QueryTranslatorImpl)>($r13, r5) 

(declare-const var125!2 var27)
(declare-const var3987!1 String)
(declare-const var798!1 var2040)
(assert true)
;(assert (addToCurrentJoin/1052333382 var125!2 var2883)) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.classic.WhereParser: void addToCurrentJoin(org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement)>(r2) 

(declare-const var125!3 var27)
(declare-const var2883!1 var2551)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {expectingPathContinuation/258954410=([org.hibernate.hql.internal.classic.WhereParser], boolean), pathExpressionParser/258954410=([org.hibernate.hql.internal.classic.WhereParser], org.hibernate.hql.internal.classic.PathExpressionParser), lastCollectionElement/-1492227227=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getElementName/-1278717123=([org.hibernate.hql.internal.classic.WhereParser, org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement, org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), doPathExpression/-251913214=([org.hibernate.hql.internal.classic.WhereParser, java.lang.String, org.hibernate.hql.internal.classic.QueryTranslatorImpl], void), addToCurrentJoin/1052333382=([org.hibernate.hql.internal.classic.WhereParser, org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement], void)}
; {var27=org.hibernate.hql.internal.classic.WhereParser, var125=r0, var1175=r3, var3794=null_type, var2040=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var798=r5, var2478=org.hibernate.hql.internal.classic.PathExpressionParser, var2095=$r1, var2551=org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement, var2883=r2, var868=$z0, var1956=$r14, var1051=$r10, var3860=$r11, var1735=$r12, var3987=$r13}
; {org.hibernate.hql.internal.classic.WhereParser=var27, r0=var125, r3=var1175, null_type=var3794, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var2040, r5=var798, org.hibernate.hql.internal.classic.PathExpressionParser=var2478, $r1=var2095, org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement=var2551, r2=var2883, $z0=var868, $r14=var1956, $r10=var1051, $r11=var3860, $r12=var1735, $r13=var3987}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.WhereParser;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r0.<org.hibernate.hql.internal.classic.WhereParser: boolean expectingPathContinuation> = 0;	$r1 = r0.<org.hibernate.hql.internal.classic.WhereParser: org.hibernate.hql.internal.classic.PathExpressionParser pathExpressionParser>;	r2 = virtualinvoke $r1.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement lastCollectionElement()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".");	if $z0 == 0 goto $r4 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: java.lang.String[] elementColumns>;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r10 = specialinvoke r0.<org.hibernate.hql.internal.classic.WhereParser: java.lang.String getElementName(org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement,org.hibernate.hql.internal.classic.QueryTranslatorImpl)>(r2, r5);	$r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.hql.internal.classic.WhereParser: void doPathExpression(java.lang.String,org.hibernate.hql.internal.classic.QueryTranslatorImpl)>($r13, r5);	specialinvoke r0.<org.hibernate.hql.internal.classic.WhereParser: void addToCurrentJoin(org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement)>(r2);	return 1
;block_num 2