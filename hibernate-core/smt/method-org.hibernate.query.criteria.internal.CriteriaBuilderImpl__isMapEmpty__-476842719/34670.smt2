(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3376 0)
(declare-sort var3201 0)
(declare-sort var3464 0)
(declare-sort var3286 0)
(declare-sort var3413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3464!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var3286) Bool)
(declare-fun cast-from-var3201-to-var3286 (var3201) var3286)
(declare-fun var3413-init () var3413)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3286) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3413 String) void)
(declare-const null-var3376 var3376)
(declare-const null-var3201 var3201)
(declare-const var2250 var3376) ; Statement: r11 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var2250 null-var3376)))
(declare-const var2503 var3201) ; Statement: r0 := @parameter0: javax.persistence.criteria.Expression 
(assert (not (= var2503 null-var3201)))
(define-const var103 ClassObject var3464!class) ; Statement: $r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;" 
(assert true)
(define-const var2028 Bool (isInstance/451912363 var103 (cast-from-var3201-to-var3286 var2503))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (= (ite var2028 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2348 var3413 var3413-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1338 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1338)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1338!1 String)
(assert (= var1338!1 ""))
(assert true)
(define-const var755 String (append/672562846 var1338!1 "unknown collection expression type [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown collection expression type [") 
(declare-const var1338!2 String)
(assert (= var1338!2 (str.++ var1338!1 "unknown collection expression type [")))
(assert true)
(define-const var2493 ClassObject (getClass/1258963082 (cast-from-var3201-to-var3286 var2503))) ; Statement: $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3302 String (getName/-1958580599 var2493)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var924 String (append/672562846 var755 var3302)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var755!1 String)
(assert (= var755!1 (str.++ var755 var3302)))
(assert true)
(define-const var3354 String (append/672562846 var924 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var924!1 String)
(assert (= var924!1 (str.++ var924 "]")))
(assert true)
(define-const var2451 String (toString/-2075883882 var3354)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2348 var2451)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2348!1 var3413)
(declare-const var2451!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var3201-to-var3286=([javax.persistence.criteria.Expression], java.lang.Object), var3413-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3376=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var2250=r11, var3201=javax.persistence.criteria.Expression, var2503=r0, var3464=org.hibernate.query.criteria.internal.path.PluralAttributePath, var103=$r1, var3286=java.lang.Object, var2028=$z0, var3413=java.lang.IllegalArgumentException, var2348=$r2, var1338=$r3, var755=$r6, var2493=$r4, var3302=$r5, var924=$r7, var3354=$r8, var2451=$r9}
; {org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var3376, r11=var2250, javax.persistence.criteria.Expression=var3201, r0=var2503, org.hibernate.query.criteria.internal.path.PluralAttributePath=var3464, $r1=var103, java.lang.Object=var3286, $z0=var2028, java.lang.IllegalArgumentException=var3413, $r2=var2348, $r3=var1338, $r6=var755, $r4=var2493, $r5=var3302, $r7=var924, $r8=var3354, $r9=var2451}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r0 := @parameter0: javax.persistence.criteria.Expression;	$r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown collection expression type [");	$r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2