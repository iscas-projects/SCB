(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3148 0)
(declare-sort var1634 0)
(declare-sort var1341 0)
(declare-sort var3090 0)
(declare-sort var1644 0)
(declare-sort var3061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1634_getClauseStack/1048601114 (var1634) var1341)
(declare-fun var1341_getCurrent/1301638501 (var1341) var3090)
(declare-fun cast-from-var1644-to-var3090 (var1644) var3090)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getJavaType/565869263 (var3061) ClassObject)
(declare-fun cast-from-var3148-to-var3061 (var3148) var3061)
(declare-fun var1634_getCastType/427650931 (var1634 ClassObject) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3148 var3148)
(declare-const null-var1634 var1634)
(declare-const var1644-SELECT var1644)
(declare-const var321 var3148) ; Statement: r5 := @this: org.hibernate.query.criteria.internal.expression.NullLiteralExpression 
(assert (not (= var321 null-var3148)))
(declare-const var466 var1634) ; Statement: r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var466 null-var1634)))
(define-const var1061 var1341 (var1634_getClauseStack/1048601114 var466)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>() 
(define-const var2078 var3090 (var1341_getCurrent/1301638501 var1061)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object getCurrent()>() 
(define-const var1962 var1644 var1644-SELECT) ; Statement: $r2 = <org.hibernate.sql.ast.Clause: org.hibernate.sql.ast.Clause SELECT> 
 ; Statement: if $r3 != $r2 goto return "null" 
(assert (not (not (= var2078 (cast-from-var1644-to-var3090 var1962))))) ; Negate: Cond: $r3 != $r2  
(define-const var70 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var70)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var70!1 String)
(assert (= var70!1 ""))
(assert true)
(define-const var1491 String (append/672562846 var70!1 "cast( \tnull  as ")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast( \tnull  as ") 
(declare-const var70!2 String)
(assert (= var70!2 (str.++ var70!1 "cast( \tnull  as ")))
(assert true)
(define-const var1752 ClassObject (getJavaType/565869263 (cast-from-var3148-to-var3061 var321))) ; Statement: $r6 = virtualinvoke r5.<org.hibernate.query.criteria.internal.expression.NullLiteralExpression: java.lang.Class getJavaType()>() 
(define-const var3983 String (var1634_getCastType/427650931 var466 var1752)) ; Statement: $r7 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: java.lang.String getCastType(java.lang.Class)>($r6) 
(assert true)
(define-const var2844 String (append/672562846 var1491 var3983)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1491!1 String)
(assert (= var1491!1 (str.++ var1491 var3983)))
(assert true)
(define-const var2561 String (append/-1166366385 var2844 41)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2844!1 String)
(assert (str.prefixof var2844 var2844!1))
(assert true)
(define-const var3822 String (toString/-2075883882 var2561)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1634_getClauseStack/1048601114=([org.hibernate.query.criteria.internal.compile.RenderingContext], org.hibernate.internal.util.collections.Stack), var1341_getCurrent/1301638501=([org.hibernate.internal.util.collections.Stack], java.lang.Object), cast-from-var1644-to-var3090=([org.hibernate.sql.ast.Clause], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getJavaType/565869263=([org.hibernate.query.criteria.internal.expression.AbstractTupleElement], java.lang.Class), cast-from-var3148-to-var3061=([org.hibernate.query.criteria.internal.expression.NullLiteralExpression], org.hibernate.query.criteria.internal.expression.AbstractTupleElement), var1634_getCastType/427650931=([org.hibernate.query.criteria.internal.compile.RenderingContext, java.lang.Class], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3148=org.hibernate.query.criteria.internal.expression.NullLiteralExpression, var321=r5, var1634=org.hibernate.query.criteria.internal.compile.RenderingContext, var466=r0, var1341=org.hibernate.internal.util.collections.Stack, var1061=$r1, var3090=java.lang.Object, var2078=$r3, var1644=org.hibernate.sql.ast.Clause, var1962=$r2, var70=$r4, var1491=$r8, var3061=org.hibernate.query.criteria.internal.expression.AbstractTupleElement, var1752=$r6, var3983=$r7, var2844=$r9, var2561=$r10, var3822=$r11}
; {org.hibernate.query.criteria.internal.expression.NullLiteralExpression=var3148, r5=var321, org.hibernate.query.criteria.internal.compile.RenderingContext=var1634, r0=var466, org.hibernate.internal.util.collections.Stack=var1341, $r1=var1061, java.lang.Object=var3090, $r3=var2078, org.hibernate.sql.ast.Clause=var1644, $r2=var1962, $r4=var70, $r8=var1491, org.hibernate.query.criteria.internal.expression.AbstractTupleElement=var3061, $r6=var1752, $r7=var3983, $r9=var2844, $r10=var2561, $r11=var3822}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.query.criteria.internal.expression.NullLiteralExpression;	r0 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r1 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>();	$r3 = interfaceinvoke $r1.<org.hibernate.internal.util.collections.Stack: java.lang.Object getCurrent()>();	$r2 = <org.hibernate.sql.ast.Clause: org.hibernate.sql.ast.Clause SELECT>;	if $r3 != $r2 goto return "null";	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast( \tnull  as ");	$r6 = virtualinvoke r5.<org.hibernate.query.criteria.internal.expression.NullLiteralExpression: java.lang.Class getJavaType()>();	$r7 = interfaceinvoke r0.<org.hibernate.query.criteria.internal.compile.RenderingContext: java.lang.String getCastType(java.lang.Class)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2