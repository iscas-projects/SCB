(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2313 0)
(declare-sort var2601 0)
(declare-sort var259 0)
(declare-sort var1777 0)
(declare-sort var473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var259!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1777) Bool)
(declare-fun cast-from-var2601-to-var1777 (var2601) var1777)
(declare-fun var473-init () var473)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1777) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var473 String) void)
(declare-const null-var2313 var2313)
(declare-const null-var2601 var2601)
(declare-const var2736 var2313) ; Statement: r11 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var2736 null-var2313)))
(declare-const var1003 var2601) ; Statement: r0 := @parameter0: javax.persistence.criteria.Expression 
(assert (not (= var1003 null-var2601)))
(define-const var787 ClassObject var259!class) ; Statement: $r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;" 
(assert true)
(define-const var1591 Bool (isInstance/451912363 var787 (cast-from-var2601-to-var1777 var1003))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (= (ite var1591 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3119 var473 var473-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var3968 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3968)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3968!1 String)
(assert (= var3968!1 ""))
(assert true)
(define-const var3896 String (append/672562846 var3968!1 "unknown collection expression type [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown collection expression type [") 
(declare-const var3968!2 String)
(assert (= var3968!2 (str.++ var3968!1 "unknown collection expression type [")))
(assert true)
(define-const var2906 ClassObject (getClass/1258963082 (cast-from-var2601-to-var1777 var1003))) ; Statement: $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var159 String (getName/-1958580599 var2906)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2328 String (append/672562846 var3896 var159)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3896!1 String)
(assert (= var3896!1 (str.++ var3896 var159)))
(assert true)
(define-const var799 String (append/672562846 var2328 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2328!1 String)
(assert (= var2328!1 (str.++ var2328 "]")))
(assert true)
(define-const var2989 String (toString/-2075883882 var799)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3119 var2989)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3119!1 var473)
(declare-const var2989!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2601-to-var1777=([javax.persistence.criteria.Expression], java.lang.Object), var473-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2313=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var2736=r11, var2601=javax.persistence.criteria.Expression, var1003=r0, var259=org.hibernate.query.criteria.internal.path.PluralAttributePath, var787=$r1, var1777=java.lang.Object, var1591=$z0, var473=java.lang.IllegalArgumentException, var3119=$r2, var3968=$r3, var3896=$r6, var2906=$r4, var159=$r5, var2328=$r7, var799=$r8, var2989=$r9}
; {org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var2313, r11=var2736, javax.persistence.criteria.Expression=var2601, r0=var1003, org.hibernate.query.criteria.internal.path.PluralAttributePath=var259, $r1=var787, java.lang.Object=var1777, $z0=var1591, java.lang.IllegalArgumentException=var473, $r2=var3119, $r3=var3968, $r6=var3896, $r4=var2906, $r5=var159, $r7=var2328, $r8=var799, $r9=var2989}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r0 := @parameter0: javax.persistence.criteria.Expression;	$r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown collection expression type [");	$r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2