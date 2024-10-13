(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var951 0)
(declare-sort var3322 0)
(declare-sort var509 0)
(declare-sort var3047 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPathSource/866111099 (var951) var509)
(declare-fun getAttribute/-484022654 (var951) var3047)
(declare-fun getName/-1293480967 (var3047) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var951 var951)
(declare-const null-var3322 var3322)
(declare-const null-var509 var509)
(declare-const var418 var951) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath 
(assert (not (= var418 null-var951)))
(declare-const var1918 var3322) ; Statement: r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1918 null-var3322)))
(assert true)
(define-const var1562 var509 (getPathSource/866111099 var418)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource getPathSource()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute getAttribute()>() 
(assert (= var1562 null-var509)) ; Cond: r1 == null 
(assert true)
(define-const var3781 var3047 (getAttribute/-484022654 var418)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute getAttribute()>() 
(assert true)
(define-const var1534 String (getName/-1293480967 var3781)) ; Statement: r9 = virtualinvoke $r2.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var43 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var43)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var43!1 String)
(assert (= var43!1 ""))
(assert true)
(define-const var2115 String (append/672562846 var43!1 "key(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key(") 
(declare-const var43!2 String)
(assert (= var43!2 (str.++ var43!1 "key(")))
(assert true)
(define-const var3778 String (append/672562846 var2115 var1534)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var2115!1 String)
(assert (= var2115!1 (str.++ var2115 var1534)))
(assert true)
(define-const var313 String (append/672562846 var3778 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3778!1 String)
(assert (= var3778!1 (str.++ var3778 ")")))
(assert true)
(define-const var1384 String (toString/-2075883882 var313)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getPathSource/866111099=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath], org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource), getAttribute/-484022654=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath], org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute), getName/-1293480967=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var951=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath, var418=r0, var3322=org.hibernate.query.criteria.internal.compile.RenderingContext, var1918=r8, var509=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource, var1562=r1, var3047=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute, var3781=$r2, var1534=r9, var43=$r3, var2115=$r4, var3778=$r5, var313=$r6, var1384=$r7}
; {org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath=var951, r0=var418, org.hibernate.query.criteria.internal.compile.RenderingContext=var3322, r8=var1918, org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource=var509, r1=var1562, org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute=var3047, $r2=var3781, r9=var1534, $r3=var43, $r4=var2115, $r5=var3778, $r6=var313, $r7=var1384}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath;	r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource getPathSource()>();	if r1 == null goto $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute getAttribute()>();	$r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute getAttribute()>();	r9 = virtualinvoke $r2.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.String getName()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3