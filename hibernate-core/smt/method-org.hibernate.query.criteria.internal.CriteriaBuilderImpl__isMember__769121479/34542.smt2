(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1186 0)
(declare-sort var3115 0)
(declare-sort var2481 0)
(declare-sort var383 0)
(declare-sort var663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var383!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var3115) Bool)
(declare-fun cast-from-var2481-to-var3115 (var2481) var3115)
(declare-fun var663-init () var663)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3115) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var663 String) void)
(declare-const null-var1186 var1186)
(declare-const null-var3115 var3115)
(declare-const null-var2481 var2481)
(declare-const var1236 var1186) ; Statement: r3 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var1236 null-var1186)))
(declare-const var2423 var3115) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2423 null-var3115)))
(declare-const var2177 var2481) ; Statement: r0 := @parameter1: javax.persistence.criteria.Expression 
(assert (not (= var2177 null-var2481)))
(define-const var1782 ClassObject var383!class) ; Statement: $r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;" 
(assert true)
(define-const var2818 Bool (isInstance/451912363 var1782 (cast-from-var2481-to-var3115 var2177))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate 
(assert (not (not (= (ite var2818 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1873 var663 var663-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var167 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var167)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var167!1 String)
(assert (= var167!1 ""))
(assert true)
(define-const var212 String (append/672562846 var167!1 "unknown collection expression type [")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown collection expression type [") 
(declare-const var167!2 String)
(assert (= var167!2 (str.++ var167!1 "unknown collection expression type [")))
(assert true)
(define-const var2835 ClassObject (getClass/1258963082 (cast-from-var2481-to-var3115 var2177))) ; Statement: $r8 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2543 String (getName/-1958580599 var2835)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3947 String (append/672562846 var212 var2543)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var212!1 String)
(assert (= var212!1 (str.++ var212 var2543)))
(assert true)
(define-const var2784 String (append/672562846 var3947 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3947!1 String)
(assert (= var3947!1 (str.++ var3947 "]")))
(assert true)
(define-const var3776 String (toString/-2075883882 var2784)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1873 var3776)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var1873!1 var663)
(declare-const var3776!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2481-to-var3115=([javax.persistence.criteria.Expression], java.lang.Object), var663-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1186=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var1236=r3, var3115=java.lang.Object, var2423=r4, var2481=javax.persistence.criteria.Expression, var2177=r0, var383=org.hibernate.query.criteria.internal.path.PluralAttributePath, var1782=$r1, var2818=$z0, var663=java.lang.IllegalArgumentException, var1873=$r6, var167=$r7, var212=$r10, var2835=$r8, var2543=$r9, var3947=$r11, var2784=$r12, var3776=$r13}
; {org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var1186, r3=var1236, java.lang.Object=var3115, r4=var2423, javax.persistence.criteria.Expression=var2481, r0=var2177, org.hibernate.query.criteria.internal.path.PluralAttributePath=var383, $r1=var1782, $z0=var2818, java.lang.IllegalArgumentException=var663, $r6=var1873, $r7=var167, $r10=var212, $r8=var2835, $r9=var2543, $r11=var3947, $r12=var2784, $r13=var3776}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: javax.persistence.criteria.Expression;	$r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown collection expression type [");	$r8 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r6
;block_num 2