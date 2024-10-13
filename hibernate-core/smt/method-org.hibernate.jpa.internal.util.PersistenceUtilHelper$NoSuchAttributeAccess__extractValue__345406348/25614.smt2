(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3595 0)
(declare-sort var1636 0)
(declare-sort var2467 0)
(declare-sort var2557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2467-init () var2467)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun clazz/1310156463 (var3595) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun attributeName/1310156463 (var3595) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/920375003 (var2467 String) void)
(declare-fun cast-from-var2467-to-var2557 (var2467) var2557)
(declare-const null-var3595 var3595)
(declare-const null-var1636 var1636)
(declare-const var3976 var3595) ; Statement: r2 := @this: org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess 
(assert (not (= var3976 null-var3595)))
(declare-const var2819 var1636) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var2819 null-var1636)))
(define-const var3838 var2467 var2467-init) ; Statement: $r13 = new org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException 
(define-const var819 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var819)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var819!1 String)
(assert (= var819!1 ""))
(assert true)
(define-const var2351 String (append/672562846 var819!1 "No such attribute : ")) ; Statement: $r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such attribute : ") 
(declare-const var819!2 String)
(assert (= var819!2 (str.++ var819!1 "No such attribute : ")))
(define-const var2854 ClassObject (clazz/1310156463 var3976)) ; Statement: $r3 = r2.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess: java.lang.Class clazz> 
(assert true)
(define-const var1588 String (getName/-1958580599 var2854)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2961 String (append/672562846 var2351 var1588)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2351!1 String)
(assert (= var2351!1 (str.++ var2351 var1588)))
(assert true)
(define-const var133 String (append/672562846 var2961 "#")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2961!1 String)
(assert (= var2961!1 (str.++ var2961 "#")))
(define-const var2748 String (attributeName/1310156463 var3976)) ; Statement: $r7 = r2.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess: java.lang.String attributeName> 
(assert true)
(define-const var1773 String (append/672562846 var133 var2748)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var133!1 String)
(assert (= var133!1 (str.++ var133 var2748)))
(assert true)
(define-const var252 String (toString/-2075883882 var1773)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/920375003 var3838 var252)) ; Statement: specialinvoke $r13.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException: void <init>(java.lang.String)>($r10) 

(declare-const var3838!1 var2467)
(declare-const var252!1 String)
(define-const var1262 var2557 (cast-from-var2467-to-var2557 var3838!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2467-init=([], org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), clazz/1310156463=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), attributeName/1310156463=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/920375003=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException, java.lang.String], void), cast-from-var2467-to-var2557=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException], java.lang.Throwable)}
; {var3595=org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess, var3976=r2, var1636=java.lang.Object, var2819=r11, var2467=org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException, var3838=$r13, var819=$r12, var2351=$r5, var2854=$r3, var1588=$r4, var2961=$r6, var133=$r8, var2748=$r7, var1773=$r9, var252=$r10, var2557=java.lang.Throwable, var1262=$r14}
; {org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess=var3595, r2=var3976, java.lang.Object=var1636, r11=var2819, org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException=var2467, $r13=var3838, $r12=var819, $r5=var2351, $r3=var2854, $r4=var1588, $r6=var2961, $r8=var133, $r7=var2748, $r9=var1773, $r10=var252, java.lang.Throwable=var2557, $r14=var1262}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess;	r11 := @parameter0: java.lang.Object;	$r13 = new org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such attribute : ");	$r3 = r2.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess: java.lang.Class clazz>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r7 = r2.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$NoSuchAttributeAccess: java.lang.String attributeName>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException: void <init>(java.lang.String)>($r10);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 1