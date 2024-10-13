(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2244 0)
(declare-sort var1956 0)
(declare-sort var2157 0)
(declare-sort var1958 0)
(declare-sort var3210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun versionAttribute/962040814 (var2244) var1956)
(declare-fun var2157-init () var2157)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getJavaType/745264769 (var1958) ClassObject)
(declare-fun cast-from-var2244-to-var1958 (var2244) var1958)
(declare-fun append/-1031950772 (String var3210) String)
(declare-fun cast-from-ClassObject-to-var3210 (ClassObject) var3210)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2157 String) void)
(declare-const null-var2244 var2244)
(declare-const null-var1956 var1956)
(declare-const var1078 var2244) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType 
(assert (not (= var1078 null-var2244)))
(define-const var2463 var1956 (versionAttribute/962040814 var1078)) ; Statement: $r1 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute versionAttribute> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.IllegalArgumentException 
(assert (= var2463 null-var1956)) ; Cond: $r1 == null 
(define-const var692 var2157 var2157-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1551 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1551)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1551!1 String)
(assert (= var1551!1 ""))
(assert true)
(define-const var1862 String (append/672562846 var1551!1 "The version attribute is not declared by this type [")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The version attribute is not declared by this type [") 
(declare-const var1551!2 String)
(assert (= var1551!2 (str.++ var1551!1 "The version attribute is not declared by this type [")))
(assert true)
(define-const var2778 ClassObject (getJavaType/745264769 (cast-from-var2244-to-var1958 var1078))) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.Class getJavaType()>() 
(assert true)
(define-const var3086 String (append/-1031950772 var1862 (cast-from-ClassObject-to-var3210 var2778))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1862!1 String)
(assert (str.prefixof var1862 var1862!1))
(assert true)
(define-const var1374 String (append/672562846 var3086 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3086!1 String)
(assert (= var3086!1 (str.++ var3086 "]")))
(assert true)
(define-const var721 String (toString/-2075883882 var1374)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var692 var721)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var692!1 var2157)
(declare-const var721!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {versionAttribute/962040814=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute), var2157-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getJavaType/745264769=([org.hibernate.metamodel.model.domain.internal.AbstractType], java.lang.Class), cast-from-var2244-to-var1958=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.metamodel.model.domain.internal.AbstractType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3210=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2244=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var1078=r0, var1956=org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute, var2463=$r1, var2157=java.lang.IllegalArgumentException, var692=$r2, var1551=$r3, var1862=$r5, var1958=org.hibernate.metamodel.model.domain.internal.AbstractType, var2778=$r4, var3210=java.lang.Object, var3086=$r6, var1374=$r7, var721=$r8}
; {org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var2244, r0=var1078, org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute=var1956, $r1=var2463, java.lang.IllegalArgumentException=var2157, $r2=var692, $r3=var1551, $r5=var1862, org.hibernate.metamodel.model.domain.internal.AbstractType=var1958, $r4=var2778, java.lang.Object=var3210, $r6=var3086, $r7=var1374, $r8=var721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType;	$r1 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute versionAttribute>;	if $r1 == null goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The version attribute is not declared by this type [");	$r4 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.Class getJavaType()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2