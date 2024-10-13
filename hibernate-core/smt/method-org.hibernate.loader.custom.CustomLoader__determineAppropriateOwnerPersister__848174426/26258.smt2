(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2092 0)
(declare-sort var1580 0)
(declare-sort var396 0)
(declare-sort var2777 0)
(declare-sort var1286 0)
(declare-sort var774 0)
(declare-sort var2124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1580-to-var2777 (var1580) var2777)
(declare-fun getEntityName/-55892200 (var2777) String)
(declare-fun var1286-init () var1286)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var774) String)
(declare-fun cast-from-var1580-to-var774 (var1580) var774)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1286 String) void)
(declare-fun cast-from-var1286-to-var2124 (var1286) var2124)
(declare-const null-var2092 var2092)
(declare-const null-var1580 var1580)
(declare-const null-String String)
(declare-const var3167 var2092) ; Statement: r1 := @this: org.hibernate.loader.custom.CustomLoader 
(assert (not (= var3167 null-var2092)))
(declare-const var1234 var1580) ; Statement: r0 := @parameter0: org.hibernate.loader.custom.NonScalarReturn 
(assert (not (= var1234 null-var1580)))
(define-const var1669 String null-String) ; Statement: r30 = null 
(define-const var106 Bool false) ; Statement: $z0 = r0 instanceof org.hibernate.loader.custom.RootReturn 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.hibernate.loader.custom.CollectionReturn 
(assert (not (= (ite var106 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var388 var2777 (cast-from-var1580-to-var2777 var1234)) ; Statement: $r29 = (org.hibernate.loader.custom.RootReturn) r0 
(assert true)
(define-const var1669!1 String (getEntityName/-55892200 var388)) ; Statement: r30 = virtualinvoke $r29.<org.hibernate.loader.custom.RootReturn: java.lang.String getEntityName()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r30 != null goto $r2 = virtualinvoke r1.<org.hibernate.loader.custom.CustomLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (not (not (= var1669!1 null-String)))) ; Negate: Cond: r30 != null  
(define-const var3395 var1286 var1286-init) ; Statement: $r41 = new org.hibernate.HibernateException 
(define-const var148 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var148)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var148!1 String)
(assert (= var148!1 ""))
(assert true)
(define-const var1051 String (append/672562846 var148!1 "Could not determine fetch owner : ")) ; Statement: $r8 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine fetch owner : ") 
(declare-const var148!2 String)
(assert (= var148!2 (str.++ var148!1 "Could not determine fetch owner : ")))
(assert true)
(define-const var1316 String (append/-1031950772 var1051 (cast-from-var1580-to-var774 var1234))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1051!1 String)
(assert (str.prefixof var1051 var1051!1))
(assert true)
(define-const var3688 String (toString/-2075883882 var1316)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3395 var3688)) ; Statement: specialinvoke $r41.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var3395!1 var1286)
(declare-const var3688!1 String)
(define-const var2952 var2124 (cast-from-var1286-to-var2124 var3395!1)) ; Statement: $r42 = (java.lang.Throwable) $r41 
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1580-to-var2777=([org.hibernate.loader.custom.NonScalarReturn], org.hibernate.loader.custom.RootReturn), getEntityName/-55892200=([org.hibernate.loader.custom.RootReturn], java.lang.String), var1286-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1580-to-var774=([org.hibernate.loader.custom.NonScalarReturn], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1286-to-var2124=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2092=org.hibernate.loader.custom.CustomLoader, var3167=r1, var1580=org.hibernate.loader.custom.NonScalarReturn, var1234=r0, var396=null_type, var1669=r30, var106=$z0, var2777=org.hibernate.loader.custom.RootReturn, var388=$r29, var1286=org.hibernate.HibernateException, var3395=$r41, var148=$r40, var1051=$r8, var774=java.lang.Object, var1316=$r9, var3688=$r10, var2124=java.lang.Throwable, var2952=$r42}
; {org.hibernate.loader.custom.CustomLoader=var2092, r1=var3167, org.hibernate.loader.custom.NonScalarReturn=var1580, r0=var1234, null_type=var396, r30=var1669, $z0=var106, org.hibernate.loader.custom.RootReturn=var2777, $r29=var388, org.hibernate.HibernateException=var1286, $r41=var3395, $r40=var148, $r8=var1051, java.lang.Object=var774, $r9=var1316, $r10=var3688, java.lang.Throwable=var2124, $r42=var2952}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.custom.CustomLoader;	r0 := @parameter0: org.hibernate.loader.custom.NonScalarReturn;	r30 = null;	$z0 = r0 instanceof org.hibernate.loader.custom.RootReturn;	if $z0 == 0 goto $z1 = r0 instanceof org.hibernate.loader.custom.CollectionReturn;	$r29 = (org.hibernate.loader.custom.RootReturn) r0;	r30 = virtualinvoke $r29.<org.hibernate.loader.custom.RootReturn: java.lang.String getEntityName()>();	goto [?= (branch)];	if r30 != null goto $r2 = virtualinvoke r1.<org.hibernate.loader.custom.CustomLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r41 = new org.hibernate.HibernateException;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine fetch owner : ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r41.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r42 = (java.lang.Throwable) $r41;	throw $r42
;block_num 4