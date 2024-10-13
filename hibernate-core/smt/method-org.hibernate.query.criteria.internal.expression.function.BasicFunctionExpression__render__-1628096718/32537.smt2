(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var872 0)
(declare-sort var15 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFunctionName/-541231547 (var872) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var872 var872)
(declare-const null-var15 var15)
(declare-const var2338 var872) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression 
(assert (not (= var2338 null-var872)))
(declare-const var3187 var15) ; Statement: r6 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3187 null-var15)))
(define-const var3936 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3936)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3936!1 String)
(assert (= var3936!1 ""))
(assert true)
(define-const var2316 String (getFunctionName/-541231547 var2338)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression: java.lang.String getFunctionName()>() 
(assert true)
(define-const var1561 String (append/672562846 var3936!1 var2316)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3936!2 String)
(assert (= var3936!2 (str.++ var3936!1 var2316)))
(assert true)
(define-const var3389 String (append/672562846 var1561 "()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var1561!1 String)
(assert (= var1561!1 (str.++ var1561 "()")))
(assert true)
(define-const var2840 String (toString/-2075883882 var3389)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFunctionName/-541231547=([org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var872=org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression, var2338=r1, var15=org.hibernate.query.criteria.internal.compile.RenderingContext, var3187=r6, var3936=$r0, var2316=$r2, var1561=$r3, var3389=$r4, var2840=$r5}
; {org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression=var872, r1=var2338, org.hibernate.query.criteria.internal.compile.RenderingContext=var15, r6=var3187, $r0=var3936, $r2=var2316, $r3=var1561, $r4=var3389, $r5=var2840}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression;	r6 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.function.BasicFunctionExpression: java.lang.String getFunctionName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1