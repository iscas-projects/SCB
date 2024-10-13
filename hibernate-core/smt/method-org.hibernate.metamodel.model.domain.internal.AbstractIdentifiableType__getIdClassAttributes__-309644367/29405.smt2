(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2468 0)
(declare-sort var2208 0)
(declare-sort var1143 0)
(declare-sort var2311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasIdClass/-1496794222 (var2468) Bool)
(declare-fun var2208-init () var2208)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getJavaType/745264769 (var1143) ClassObject)
(declare-fun cast-from-var2468-to-var1143 (var2468) var1143)
(declare-fun append/-1031950772 (String var2311) String)
(declare-fun cast-from-ClassObject-to-var2311 (ClassObject) var2311)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2208 String) void)
(declare-const null-var2468 var2468)
(declare-const var891 var2468) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType 
(assert (not (= var891 null-var2468)))
(assert true)
(define-const var1139 Bool (hasIdClass/-1496794222 var891)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: boolean hasIdClass()>() 
 ; Statement: if $z0 != 0 goto $r1 = new java.util.HashSet 
(assert (not (not (= (ite var1139 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2412 var2208 var2208-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var1884 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1884)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1884!1 String)
(assert (= var1884!1 ""))
(assert true)
(define-const var3256 String (append/672562846 var1884!1 "This class [")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("This class [") 
(declare-const var1884!2 String)
(assert (= var1884!2 (str.++ var1884!1 "This class [")))
(assert true)
(define-const var1598 ClassObject (getJavaType/745264769 (cast-from-var2468-to-var1143 var891))) ; Statement: $r11 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.Class getJavaType()>() 
(assert true)
(define-const var2971 String (append/-1031950772 var3256 (cast-from-ClassObject-to-var2311 var1598))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var3256!1 String)
(assert (str.prefixof var3256 var3256!1))
(assert true)
(define-const var1391 String (append/672562846 var2971 "] does not define an IdClass")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not define an IdClass") 
(declare-const var2971!1 String)
(assert (= var2971!1 (str.++ var2971 "] does not define an IdClass")))
(assert true)
(define-const var2071 String (toString/-2075883882 var1391)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2412 var2071)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var2412!1 var2208)
(declare-const var2071!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {hasIdClass/-1496794222=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], boolean), var2208-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getJavaType/745264769=([org.hibernate.metamodel.model.domain.internal.AbstractType], java.lang.Class), cast-from-var2468-to-var1143=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.metamodel.model.domain.internal.AbstractType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2311=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2468=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var891=r0, var1139=$z0, var2208=java.lang.IllegalArgumentException, var2412=$r9, var1884=$r10, var3256=$r12, var1143=org.hibernate.metamodel.model.domain.internal.AbstractType, var1598=$r11, var2311=java.lang.Object, var2971=$r13, var1391=$r14, var2071=$r15}
; {org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var2468, r0=var891, $z0=var1139, java.lang.IllegalArgumentException=var2208, $r9=var2412, $r10=var1884, $r12=var3256, org.hibernate.metamodel.model.domain.internal.AbstractType=var1143, $r11=var1598, java.lang.Object=var2311, $r13=var2971, $r14=var1391, $r15=var2071}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType;	$z0 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: boolean hasIdClass()>();	if $z0 != 0 goto $r1 = new java.util.HashSet;	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("This class [");	$r11 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.Class getJavaType()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not define an IdClass");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 2