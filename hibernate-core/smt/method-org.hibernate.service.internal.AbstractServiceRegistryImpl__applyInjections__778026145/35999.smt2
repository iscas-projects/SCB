(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2172 0)
(declare-sort var2719 0)
(declare-sort var1924 0)
(declare-sort var380 0)
(declare-sort var2027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2027) ClassObject)
(declare-fun cast-from-var2719-to-var2027 (var2719) var2027)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var380_error/-1331544699 (var380 var2027) void)
(declare-fun cast-from-String-to-var2027 (String) var2027)
(declare-const null-var2172 var2172)
(declare-const null-var2719 var2719)
(declare-const null-var1924 var1924)
(declare-const var2172-log var380)
(declare-const var403 var2172) ; Statement: r5 := @this: org.hibernate.service.internal.AbstractServiceRegistryImpl 
(assert (not (= var403 null-var2172)))
(declare-const var963 var2719) ; Statement: r0 := @parameter0: org.hibernate.service.Service 
(assert (not (= var963 null-var2719)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1710 var1924) ; Statement: $r6 := @caughtexception 
(assert (not (= var1710 null-var1924)))
(define-const var1977 var380 var2172-log) ; Statement: $r8 = <org.hibernate.service.internal.AbstractServiceRegistryImpl: org.hibernate.internal.CoreMessageLogger log> 
(define-const var2069 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2069)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2069!1 String)
(assert (= var2069!1 ""))
(assert true)
(define-const var2812 String (append/672562846 var2069!1 "NPE injecting service deps : ")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NPE injecting service deps : ") 
(declare-const var2069!2 String)
(assert (= var2069!2 (str.++ var2069!1 "NPE injecting service deps : ")))
(assert true)
(define-const var2293 ClassObject (getClass/1258963082 (cast-from-var2719-to-var2027 var963))) ; Statement: $r9 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1281 String (getName/-1958580599 var2293)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3043 String (append/672562846 var2812 var1281)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2812!1 String)
(assert (= var2812!1 (str.++ var2812 var1281)))
(assert true)
(define-const var1755 String (toString/-2075883882 var3043)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var380_error/-1331544699 var1977 (cast-from-String-to-var2027 var1755))) ; Statement: interfaceinvoke $r8.<org.hibernate.internal.CoreMessageLogger: void error(java.lang.Object)>($r13) 

(declare-const var1977!1 var380)
(declare-const var1755!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2719-to-var2027=([org.hibernate.service.Service], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var380_error/-1331544699=([org.hibernate.internal.CoreMessageLogger, java.lang.Object], void), cast-from-String-to-var2027=([java.lang.String], java.lang.Object)}
; {var2172=org.hibernate.service.internal.AbstractServiceRegistryImpl, var403=r5, var2719=org.hibernate.service.Service, var963=r0, var1924=java.lang.NullPointerException, var1710=$r6, var380=org.hibernate.internal.CoreMessageLogger, var1977=$r8, var2069=$r7, var2812=$r11, var2027=java.lang.Object, var2293=$r9, var1281=$r10, var3043=$r12, var1755=$r13}
; {org.hibernate.service.internal.AbstractServiceRegistryImpl=var2172, r5=var403, org.hibernate.service.Service=var2719, r0=var963, java.lang.NullPointerException=var1924, $r6=var1710, org.hibernate.internal.CoreMessageLogger=var380, $r8=var1977, $r7=var2069, $r11=var2812, java.lang.Object=var2027, $r9=var2293, $r10=var1281, $r12=var3043, $r13=var1755}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.service.internal.AbstractServiceRegistryImpl;	r0 := @parameter0: org.hibernate.service.Service;	$r6 := @caughtexception;	$r8 = <org.hibernate.service.internal.AbstractServiceRegistryImpl: org.hibernate.internal.CoreMessageLogger log>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NPE injecting service deps : ");	$r9 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r8.<org.hibernate.internal.CoreMessageLogger: void error(java.lang.Object)>($r13);	return
;block_num 3