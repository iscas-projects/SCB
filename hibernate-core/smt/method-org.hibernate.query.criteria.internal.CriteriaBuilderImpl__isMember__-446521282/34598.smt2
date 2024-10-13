(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2055 0)
(declare-sort var2281 0)
(declare-sort var896 0)
(declare-sort var3483 0)
(declare-sort var931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var896!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var3483) Bool)
(declare-fun cast-from-var2281-to-var3483 (var2281) var3483)
(declare-fun var931-init () var931)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3483) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var931 String) void)
(declare-const null-var2055 var2055)
(declare-const null-var2281 var2281)
(declare-const var213 var2055) ; Statement: r3 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var213 null-var2055)))
(declare-const var2605 var2281) ; Statement: r4 := @parameter0: javax.persistence.criteria.Expression 
(assert (not (= var2605 null-var2281)))
(declare-const var345 var2281) ; Statement: r0 := @parameter1: javax.persistence.criteria.Expression 
(assert (not (= var345 null-var2281)))
(define-const var72 ClassObject var896!class) ; Statement: $r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;" 
(assert true)
(define-const var3432 Bool (isInstance/451912363 var72 (cast-from-var2281-to-var3483 var345))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate 
(assert (not (not (= (ite var3432 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3518 var931 var931-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var708 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var708)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var708!1 String)
(assert (= var708!1 ""))
(assert true)
(define-const var469 String (append/672562846 var708!1 "unknown collection expression type [")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown collection expression type [") 
(declare-const var708!2 String)
(assert (= var708!2 (str.++ var708!1 "unknown collection expression type [")))
(assert true)
(define-const var3290 ClassObject (getClass/1258963082 (cast-from-var2281-to-var3483 var345))) ; Statement: $r8 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var423 String (getName/-1958580599 var3290)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2037 String (append/672562846 var469 var423)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var469!1 String)
(assert (= var469!1 (str.++ var469 var423)))
(assert true)
(define-const var3578 String (append/672562846 var2037 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2037!1 String)
(assert (= var2037!1 (str.++ var2037 "]")))
(assert true)
(define-const var2083 String (toString/-2075883882 var3578)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3518 var2083)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var3518!1 var931)
(declare-const var2083!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2281-to-var3483=([javax.persistence.criteria.Expression], java.lang.Object), var931-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2055=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var213=r3, var2281=javax.persistence.criteria.Expression, var2605=r4, var345=r0, var896=org.hibernate.query.criteria.internal.path.PluralAttributePath, var72=$r1, var3483=java.lang.Object, var3432=$z0, var931=java.lang.IllegalArgumentException, var3518=$r6, var708=$r7, var469=$r10, var3290=$r8, var423=$r9, var2037=$r11, var3578=$r12, var2083=$r13}
; {org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var2055, r3=var213, javax.persistence.criteria.Expression=var2281, r4=var2605, r0=var345, org.hibernate.query.criteria.internal.path.PluralAttributePath=var896, $r1=var72, java.lang.Object=var3483, $z0=var3432, java.lang.IllegalArgumentException=var931, $r6=var3518, $r7=var708, $r10=var469, $r8=var3290, $r9=var423, $r11=var2037, $r12=var3578, $r13=var2083}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r4 := @parameter0: javax.persistence.criteria.Expression;	r0 := @parameter1: javax.persistence.criteria.Expression;	$r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown collection expression type [");	$r8 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r6
;block_num 2