(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var60 0)
(declare-sort var1451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/918716458 (var1451) String)
(declare-fun cast-from-var60-to-var1451 (var60) var1451)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun clazz/2008543368 (var60) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var60 var60)
(declare-const var1436 var60) ; Statement: r1 := @this: org.hibernate.InstantiationException 
(assert (not (= var1436 null-var60)))
(define-const var1928 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1928)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1928!1 String)
(assert (= var1928!1 ""))
(assert true)
(define-const var3722 String (getMessage/918716458 (cast-from-var60-to-var1451 var1436))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.HibernateException: java.lang.String getMessage()>() 
(assert true)
(define-const var3747 String (append/672562846 var1928!1 var3722)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1928!2 String)
(assert (= var1928!2 (str.++ var1928!1 var3722)))
(assert true)
(define-const var3088 String (append/672562846 var3747 " : ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var3747!1 String)
(assert (= var3747!1 (str.++ var3747 " : ")))
(define-const var3674 ClassObject (clazz/2008543368 var1436)) ; Statement: $r4 = r1.<org.hibernate.InstantiationException: java.lang.Class clazz> 
(assert true)
(define-const var2035 String (getName/-1958580599 var3674)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3062 String (append/672562846 var3088 var2035)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3088!1 String)
(assert (= var3088!1 (str.++ var3088 var2035)))
(assert true)
(define-const var1074 String (toString/-2075883882 var3062)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/918716458=([javax.persistence.PersistenceException], java.lang.String), cast-from-var60-to-var1451=([org.hibernate.InstantiationException], javax.persistence.PersistenceException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), clazz/2008543368=([org.hibernate.InstantiationException], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var60=org.hibernate.InstantiationException, var1436=r1, var1928=$r0, var1451=javax.persistence.PersistenceException, var3722=$r2, var3747=$r3, var3088=$r6, var3674=$r4, var2035=$r5, var3062=$r7, var1074=$r8}
; {org.hibernate.InstantiationException=var60, r1=var1436, $r0=var1928, javax.persistence.PersistenceException=var1451, $r2=var3722, $r3=var3747, $r6=var3088, $r4=var3674, $r5=var2035, $r7=var3062, $r8=var1074}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.InstantiationException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.HibernateException: java.lang.String getMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r4 = r1.<org.hibernate.InstantiationException: java.lang.Class clazz>;	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1