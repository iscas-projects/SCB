(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2681 0)
(declare-sort var1769 0)
(declare-sort var3402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pathImpl/-295274145 (var2681) var3402)
(declare-fun getPathIdentifier/1584846728 (var3402) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2681 var2681)
(declare-const null-var1769 var1769)
(declare-const var1366 var2681) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.PathTypeExpression 
(assert (not (= var1366 null-var2681)))
(declare-const var642 var1769) ; Statement: r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var642 null-var1769)))
(define-const var3529 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3529)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3529!1 String)
(assert (= var3529!1 ""))
(assert true)
(define-const var2326 String (append/672562846 var3529!1 "type(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("type(") 
(declare-const var3529!2 String)
(assert (= var3529!2 (str.++ var3529!1 "type(")))
(define-const var3911 var3402 (pathImpl/-295274145 var1366)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.expression.PathTypeExpression: org.hibernate.query.criteria.internal.path.AbstractPathImpl pathImpl> 
(assert true)
(define-const var3549 String (getPathIdentifier/1584846728 var3911)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var1766 String (append/672562846 var2326 var3549)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2326!1 String)
(assert (= var2326!1 (str.++ var2326 var3549)))
(assert true)
(define-const var946 String (append/672562846 var1766 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1766!1 String)
(assert (= var1766!1 (str.++ var1766 ")")))
(assert true)
(define-const var3726 String (toString/-2075883882 var946)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pathImpl/-295274145=([org.hibernate.query.criteria.internal.expression.PathTypeExpression], org.hibernate.query.criteria.internal.path.AbstractPathImpl), getPathIdentifier/1584846728=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2681=org.hibernate.query.criteria.internal.expression.PathTypeExpression, var1366=r1, var1769=org.hibernate.query.criteria.internal.compile.RenderingContext, var642=r8, var3529=$r0, var2326=$r4, var3402=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var3911=$r2, var3549=$r3, var1766=$r5, var946=$r6, var3726=$r7}
; {org.hibernate.query.criteria.internal.expression.PathTypeExpression=var2681, r1=var1366, org.hibernate.query.criteria.internal.compile.RenderingContext=var1769, r8=var642, $r0=var3529, $r4=var2326, org.hibernate.query.criteria.internal.path.AbstractPathImpl=var3402, $r2=var3911, $r3=var3549, $r5=var1766, $r6=var946, $r7=var3726}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.PathTypeExpression;	r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("type(");	$r2 = r1.<org.hibernate.query.criteria.internal.expression.PathTypeExpression: org.hibernate.query.criteria.internal.path.AbstractPathImpl pathImpl>;	$r3 = virtualinvoke $r2.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: java.lang.String getPathIdentifier()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1