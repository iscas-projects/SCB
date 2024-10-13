(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3753 0)
(declare-sort var796 0)
(declare-sort var687 0)
(declare-sort var3938 0)
(declare-sort var916 0)
(declare-sort var1466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sequences/944490799 (var3753) var687)
(declare-fun var687_containsKey/1715618542 (var687 var3938) Bool)
(declare-fun cast-from-var796-to-var3938 (var796) var3938)
(declare-fun var916-init () var916)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/800574828 (var796) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var916 String) void)
(declare-fun cast-from-var916-to-var1466 (var916) var1466)
(declare-const null-var3753 var3753)
(declare-const null-var796 var796)
(declare-const null-Int Int)
(declare-const var3812 var3753) ; Statement: r0 := @this: org.hibernate.boot.model.relational.Namespace 
(assert (not (= var3812 null-var3753)))
(declare-const var318 var796) ; Statement: r1 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var318 null-var796)))
(declare-const var1534 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1534 null-Int)))
(declare-const var106 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var106 null-Int)))
(define-const var1064 var687 (sequences/944490799 var3812)) ; Statement: $r2 = r0.<org.hibernate.boot.model.relational.Namespace: java.util.Map sequences> 
(define-const var770 Bool (var687_containsKey/1715618542 var1064 (cast-from-var796-to-var3938 var318))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> 
(assert (not (= (ite var770 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2752 var916 var916-init) ; Statement: $r20 = new org.hibernate.HibernateException 
(define-const var2179 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2179)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2179!1 String)
(assert (= var2179!1 ""))
(assert true)
(define-const var3578 String (append/672562846 var2179!1 "Sequence was already registered with that name [")) ; Statement: $r15 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sequence was already registered with that name [") 
(declare-const var2179!2 String)
(assert (= var2179!2 (str.++ var2179!1 "Sequence was already registered with that name [")))
(assert true)
(define-const var397 String (toString/800574828 var318)) ; Statement: $r14 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String toString()>() 
(assert true)
(define-const var3443 String (append/672562846 var3578 var397)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3578!1 String)
(assert (= var3578!1 (str.++ var3578 var397)))
(assert true)
(define-const var3878 String (append/672562846 var3443 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3443!1 String)
(assert (= var3443!1 (str.++ var3443 "]")))
(assert true)
(define-const var1234 String (toString/-2075883882 var3878)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2752 var1234)) ; Statement: specialinvoke $r20.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18) 

(declare-const var2752!1 var916)
(declare-const var1234!1 String)
(define-const var2773 var1466 (cast-from-var916-to-var1466 var2752!1)) ; Statement: $r22 = (java.lang.Throwable) $r20 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {sequences/944490799=([org.hibernate.boot.model.relational.Namespace], java.util.Map), var687_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-var796-to-var3938=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), var916-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/800574828=([org.hibernate.boot.model.naming.Identifier], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var916-to-var1466=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3753=org.hibernate.boot.model.relational.Namespace, var3812=r0, var796=org.hibernate.boot.model.naming.Identifier, var318=r1, var1534=i0, var106=i1, var687=java.util.Map, var1064=$r2, var3938=java.lang.Object, var770=$z0, var916=org.hibernate.HibernateException, var2752=$r20, var2179=$r19, var3578=$r15, var397=$r14, var3443=$r16, var3878=$r17, var1234=$r18, var1466=java.lang.Throwable, var2773=$r22}
; {org.hibernate.boot.model.relational.Namespace=var3753, r0=var3812, org.hibernate.boot.model.naming.Identifier=var796, r1=var318, i0=var1534, i1=var106, java.util.Map=var687, $r2=var1064, java.lang.Object=var3938, $z0=var770, org.hibernate.HibernateException=var916, $r20=var2752, $r19=var2179, $r15=var3578, $r14=var397, $r16=var3443, $r17=var3878, $r18=var1234, java.lang.Throwable=var1466, $r22=var2773}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.naming.Identifier: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.relational.Namespace;	r1 := @parameter0: org.hibernate.boot.model.naming.Identifier;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<org.hibernate.boot.model.relational.Namespace: java.util.Map sequences>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy>;	$r20 = new org.hibernate.HibernateException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sequence was already registered with that name [");	$r14 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String toString()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18);	$r22 = (java.lang.Throwable) $r20;	throw $r22
;block_num 2