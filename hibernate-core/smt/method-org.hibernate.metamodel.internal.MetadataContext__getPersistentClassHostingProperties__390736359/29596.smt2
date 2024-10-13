(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1578 0)
(declare-sort var881 0)
(declare-sort var2833 0)
(declare-sort var3389 0)
(declare-sort var3881 0)
(declare-sort var1711 0)
(declare-sort var1039 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mappedSuperClassTypeToPersistentClass/248942207 (var1578) var2833)
(declare-fun var2833_get/1088891777 (var2833 var3389) var3389)
(declare-fun cast-from-var881-to-var3389 (var881) var3389)
(declare-fun cast-from-var3389-to-var3881 (var3389) var3881)
(declare-fun var1711-init () var1711)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getJavaType/745264769 (var1039) ClassObject)
(declare-fun cast-from-var881-to-var1039 (var881) var1039)
(declare-fun append/-1031950772 (String var3389) String)
(declare-fun cast-from-ClassObject-to-var3389 (ClassObject) var3389)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var1711 String) void)
(declare-const null-var1578 var1578)
(declare-const null-var881 var881)
(declare-const null-var3881 var3881)
(declare-const var3668 var1578) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetadataContext 
(assert (not (= var3668 null-var1578)))
(declare-const var3394 var881) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl 
(assert (not (= var3394 null-var881)))
(define-const var2790 var2833 (mappedSuperClassTypeToPersistentClass/248942207 var3668)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.Map mappedSuperClassTypeToPersistentClass> 
(define-const var2357 var3389 (var2833_get/1088891777 var2790 (cast-from-var881-to-var3389 var3394))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1853 var3881 (cast-from-var3389-to-var3881 var2357)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var1853 null-var3881)))) ; Negate: Cond: r4 != null  
(define-const var1654 var1711 var1711-init) ; Statement: $r5 = new org.hibernate.AssertionFailure 
(define-const var996 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var996)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var996!1 String)
(assert (= var996!1 ""))
(assert true)
(define-const var906 String (append/672562846 var996!1 "Could not find PersistentClass for MappedSuperclassType: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find PersistentClass for MappedSuperclassType: ") 
(declare-const var996!2 String)
(assert (= var996!2 (str.++ var996!1 "Could not find PersistentClass for MappedSuperclassType: ")))
(assert true)
(define-const var3789 ClassObject (getJavaType/745264769 (cast-from-var881-to-var1039 var3394))) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl: java.lang.Class getJavaType()>() 
(assert true)
(define-const var530 String (append/-1031950772 var906 (cast-from-ClassObject-to-var3389 var3789))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var906!1 String)
(assert (str.prefixof var906 var906!1))
(assert true)
(define-const var41 String (toString/-2075883882 var530)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var1654 var41)) ; Statement: specialinvoke $r5.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10) 

(declare-const var1654!1 var1711)
(declare-const var41!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {mappedSuperClassTypeToPersistentClass/248942207=([org.hibernate.metamodel.internal.MetadataContext], java.util.Map), var2833_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var881-to-var3389=([org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl], java.lang.Object), cast-from-var3389-to-var3881=([java.lang.Object], org.hibernate.mapping.PersistentClass), var1711-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getJavaType/745264769=([org.hibernate.metamodel.model.domain.internal.AbstractType], java.lang.Class), cast-from-var881-to-var1039=([org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl], org.hibernate.metamodel.model.domain.internal.AbstractType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3389=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1578=org.hibernate.metamodel.internal.MetadataContext, var3668=r0, var881=org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl, var3394=r1, var2833=java.util.Map, var2790=$r2, var3389=java.lang.Object, var2357=$r3, var3881=org.hibernate.mapping.PersistentClass, var1853=r4, var1711=org.hibernate.AssertionFailure, var1654=$r5, var996=$r6, var906=$r8, var1039=org.hibernate.metamodel.model.domain.internal.AbstractType, var3789=$r7, var530=$r9, var41=$r10}
; {org.hibernate.metamodel.internal.MetadataContext=var1578, r0=var3668, org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl=var881, r1=var3394, java.util.Map=var2833, $r2=var2790, java.lang.Object=var3389, $r3=var2357, org.hibernate.mapping.PersistentClass=var3881, r4=var1853, org.hibernate.AssertionFailure=var1711, $r5=var1654, $r6=var996, $r8=var906, org.hibernate.metamodel.model.domain.internal.AbstractType=var1039, $r7=var3789, $r9=var530, $r10=var41}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetadataContext;	r1 := @parameter0: org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl;	$r2 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.Map mappedSuperClassTypeToPersistentClass>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto return r4;	$r5 = new org.hibernate.AssertionFailure;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find PersistentClass for MappedSuperclassType: ");	$r7 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl: java.lang.Class getJavaType()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2