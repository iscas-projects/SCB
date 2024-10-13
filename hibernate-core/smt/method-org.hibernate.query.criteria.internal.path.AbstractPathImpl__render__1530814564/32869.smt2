(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3977 0)
(declare-sort var1851 0)
(declare-sort var3351 0)
(declare-sort var3923 0)
(declare-sort var467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPathSource/-787522163 (var3977) var3351)
(declare-fun var3351_prepareAlias/1784826276 (var3351 var1851) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3351_getPathIdentifier/-1280971676 (var3351) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAttribute/-112258107 (var467) var3923)
(declare-fun cast-from-var3977-to-var467 (var3977) var467)
(declare-fun var3923_getName/782728034 (var3923) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3977 var3977)
(declare-const null-var1851 var1851)
(declare-const null-var3351 var3351)
(declare-const var1981 var3977) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl 
(assert (not (= var1981 null-var3977)))
(declare-const var3730 var1851) ; Statement: r4 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3730 null-var1851)))
(assert true)
(define-const var2424 var3351 (getPathSource/-787522163 var1981)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: org.hibernate.query.criteria.internal.PathSource getPathSource()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>() 
(assert (not (= var2424 null-var3351))) ; Negate: Cond: r1 == null  
;(assert (var3351_prepareAlias/1784826276 var2424 var3730)) ; Statement: interfaceinvoke r1.<org.hibernate.query.criteria.internal.PathSource: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r4) 

(declare-const var2424!1 var3351)
(declare-const var3730!1 var1851)
(define-const var600 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var600)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var600!1 String)
(assert (= var600!1 ""))
(define-const var718 String (var3351_getPathIdentifier/-1280971676 var2424!1)) ; Statement: $r6 = interfaceinvoke r1.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var113 String (append/672562846 var600!1 var718)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var600!2 String)
(assert (= var600!2 (str.++ var600!1 var718)))
(assert true)
(define-const var3394 String (append/672562846 var113 ".")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var113!1 String)
(assert (= var113!1 (str.++ var113 ".")))
(assert true)
(define-const var3479 var3923 (getAttribute/-112258107 (cast-from-var3977-to-var467 var1981))) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>() 
(define-const var2394 String (var3923_getName/782728034 var3479)) ; Statement: $r9 = interfaceinvoke $r8.<javax.persistence.metamodel.Attribute: java.lang.String getName()>() 
(assert true)
(define-const var2141 String (append/672562846 var3394 var2394)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3394!1 String)
(assert (= var3394!1 (str.++ var3394 var2394)))
(assert true)
(define-const var1577 String (toString/-2075883882 var2141)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getPathSource/-787522163=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], org.hibernate.query.criteria.internal.PathSource), var3351_prepareAlias/1784826276=([org.hibernate.query.criteria.internal.PathSource, org.hibernate.query.criteria.internal.compile.RenderingContext], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3351_getPathIdentifier/-1280971676=([org.hibernate.query.criteria.internal.PathSource], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAttribute/-112258107=([org.hibernate.query.criteria.internal.PathImplementor], javax.persistence.metamodel.Attribute), cast-from-var3977-to-var467=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], org.hibernate.query.criteria.internal.PathImplementor), var3923_getName/782728034=([javax.persistence.metamodel.Attribute], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3977=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var1981=r0, var1851=org.hibernate.query.criteria.internal.compile.RenderingContext, var3730=r4, var3351=org.hibernate.query.criteria.internal.PathSource, var2424=r1, var600=$r5, var718=$r6, var113=$r7, var3394=$r10, var3923=javax.persistence.metamodel.Attribute, var467=org.hibernate.query.criteria.internal.PathImplementor, var3479=$r8, var2394=$r9, var2141=$r11, var1577=$r12}
; {org.hibernate.query.criteria.internal.path.AbstractPathImpl=var3977, r0=var1981, org.hibernate.query.criteria.internal.compile.RenderingContext=var1851, r4=var3730, org.hibernate.query.criteria.internal.PathSource=var3351, r1=var2424, $r5=var600, $r6=var718, $r7=var113, $r10=var3394, javax.persistence.metamodel.Attribute=var3923, org.hibernate.query.criteria.internal.PathImplementor=var467, $r8=var3479, $r9=var2394, $r11=var2141, $r12=var1577}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl;	r4 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: org.hibernate.query.criteria.internal.PathSource getPathSource()>();	if r1 == null goto $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>();	interfaceinvoke r1.<org.hibernate.query.criteria.internal.PathSource: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r4);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = interfaceinvoke r1.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: javax.persistence.metamodel.Attribute getAttribute()>();	$r9 = interfaceinvoke $r8.<javax.persistence.metamodel.Attribute: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2