(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort var915 0)
(declare-sort var3565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyNames/-499268631 (var2795) (Array Int String))
(declare-fun var915_toString/850831938 ((Array Int var3565)) String)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3565__ ((Array Int String)) (Array Int var3565))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2795 var2795)
(declare-const var3359 var2795) ; Statement: r1 := @this: org.hibernate.type.ComponentType 
(assert (not (= var3359 null-var2795)))
(define-const var1524 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1524)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1524!1 String)
(assert (= var1524!1 ""))
(assert true)
(define-const var1143 String (append/672562846 var1524!1 "component")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("component") 
(declare-const var1524!2 String)
(assert (= var1524!2 (str.++ var1524!1 "component")))
(define-const var2873 (Array Int String) (propertyNames/-499268631 var3359)) ; Statement: $r2 = r1.<org.hibernate.type.ComponentType: java.lang.String[] propertyNames> 
(define-const var989 String (var915_toString/850831938 (cast-from-__Array__Int__String__-to-__Array__Int__var3565__ var2873))) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>($r2) 
(assert true)
(define-const var2495 String (append/672562846 var1143 var989)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1143!1 String)
(assert (= var1143!1 (str.++ var1143 var989)))
(assert true)
(define-const var629 String (toString/-2075883882 var2495)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyNames/-499268631=([org.hibernate.type.ComponentType], java.lang.String[]), var915_toString/850831938=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__String__-to-__Array__Int__var3565__=([java.lang.String[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2795=org.hibernate.type.ComponentType, var3359=r1, var1524=$r0, var1143=$r4, var2873=$r2, var915=org.hibernate.internal.util.collections.ArrayHelper, var3565=java.lang.Object, var989=$r3, var2495=$r5, var629=$r6}
; {org.hibernate.type.ComponentType=var2795, r1=var3359, $r0=var1524, $r4=var1143, $r2=var2873, org.hibernate.internal.util.collections.ArrayHelper=var915, java.lang.Object=var3565, $r3=var989, $r5=var2495, $r6=var629}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.ComponentType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("component");	$r2 = r1.<org.hibernate.type.ComponentType: java.lang.String[] propertyNames>;	$r3 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1