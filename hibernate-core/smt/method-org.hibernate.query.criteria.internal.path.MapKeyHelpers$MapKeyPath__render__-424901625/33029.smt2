(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2984 0)
(declare-sort var2877 0)
(declare-sort var1502 0)
(declare-sort var3682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPathSource/866111099 (var2984) var1502)
(declare-fun var3682_prepareAlias/1784826276 (var3682 var2877) void)
(declare-fun cast-from-var1502-to-var3682 (var1502) var3682)
(declare-fun var3682_getPathIdentifier/-1280971676 (var3682) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2984 var2984)
(declare-const null-var2877 var2877)
(declare-const null-var1502 var1502)
(declare-const var716 var2984) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath 
(assert (not (= var716 null-var2984)))
(declare-const var2718 var2877) ; Statement: r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2718 null-var2877)))
(assert true)
(define-const var3274 var1502 (getPathSource/866111099 var716)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource getPathSource()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute getAttribute()>() 
(assert (not (= var3274 null-var1502))) ; Negate: Cond: r1 == null  
;(assert (var3682_prepareAlias/1784826276 (cast-from-var1502-to-var3682 var3274) var2718)) ; Statement: interfaceinvoke r1.<org.hibernate.query.criteria.internal.PathSource: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r8) 

(declare-const var3274!1 var1502)
(declare-const var2718!1 var2877)
(define-const var2072 String (var3682_getPathIdentifier/-1280971676 (cast-from-var1502-to-var3682 var3274!1))) ; Statement: r9 = interfaceinvoke r1.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>() 
 ; Statement: goto [?= $r3 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var959 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var959)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var959!1 String)
(assert (= var959!1 ""))
(assert true)
(define-const var3971 String (append/672562846 var959!1 "key(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key(") 
(declare-const var959!2 String)
(assert (= var959!2 (str.++ var959!1 "key(")))
(assert true)
(define-const var109 String (append/672562846 var3971 var2072)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3971!1 String)
(assert (= var3971!1 (str.++ var3971 var2072)))
(assert true)
(define-const var3886 String (append/672562846 var109 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var109!1 String)
(assert (= var109!1 (str.++ var109 ")")))
(assert true)
(define-const var2048 String (toString/-2075883882 var3886)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getPathSource/866111099=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath], org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource), var3682_prepareAlias/1784826276=([org.hibernate.query.criteria.internal.PathSource, org.hibernate.query.criteria.internal.compile.RenderingContext], void), cast-from-var1502-to-var3682=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource], org.hibernate.query.criteria.internal.PathSource), var3682_getPathIdentifier/-1280971676=([org.hibernate.query.criteria.internal.PathSource], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2984=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath, var716=r0, var2877=org.hibernate.query.criteria.internal.compile.RenderingContext, var2718=r8, var1502=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource, var3274=r1, var3682=org.hibernate.query.criteria.internal.PathSource, var2072=r9, var959=$r3, var3971=$r4, var109=$r5, var3886=$r6, var2048=$r7}
; {org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath=var2984, r0=var716, org.hibernate.query.criteria.internal.compile.RenderingContext=var2877, r8=var2718, org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource=var1502, r1=var3274, org.hibernate.query.criteria.internal.PathSource=var3682, r9=var2072, $r3=var959, $r4=var3971, $r5=var109, $r6=var3886, $r7=var2048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath;	r8 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource getPathSource()>();	if r1 == null goto $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute getAttribute()>();	interfaceinvoke r1.<org.hibernate.query.criteria.internal.PathSource: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r8);	r9 = interfaceinvoke r1.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>();	goto [?= $r3 = new java.lang.StringBuilder];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3