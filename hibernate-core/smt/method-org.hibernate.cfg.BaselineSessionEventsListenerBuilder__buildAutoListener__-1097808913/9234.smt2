(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1436 0)
(declare-sort var3676 0)
(declare-sort var710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3676-init () var3676)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3676 String var710) void)
(declare-fun cast-from-var1436-to-var710 (var1436) var710)
(declare-fun cast-from-var3676-to-var710 (var3676) var710)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1436 var1436)
(declare-const var1292 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1292 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3480 var1436) ; Statement: $r3 := @caughtexception 
(assert (not (= var3480 null-var1436)))
(define-const var978 var3676 var3676-init) ; Statement: $r11 = new org.hibernate.HibernateException 
(define-const var3037 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3037)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3037!1 String)
(assert (= var3037!1 ""))
(assert true)
(define-const var2922 String (append/672562846 var3037!1 "Unable to instantiate specified auto SessionEventListener : ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate specified auto SessionEventListener : ") 
(declare-const var3037!2 String)
(assert (= var3037!2 (str.++ var3037!1 "Unable to instantiate specified auto SessionEventListener : ")))
(assert true)
(define-const var2632 String (getName/-1958580599 var1292)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2962 String (append/672562846 var2922 var2632)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2922!1 String)
(assert (= var2922!1 (str.++ var2922 var2632)))
(assert true)
(define-const var904 String (toString/-2075883882 var2962)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var978 var904 (cast-from-var1436-to-var710 var3480))) ; Statement: specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3) 

(declare-const var978!1 var3676)
(declare-const var904!1 String)
(declare-const var3480!1 var1436)
(define-const var608 var710 (cast-from-var3676-to-var710 var978!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3676-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var1436-to-var710=([java.lang.Exception], java.lang.Throwable), cast-from-var3676-to-var710=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1292=r0, var1436=java.lang.Exception, var3480=$r3, var3676=org.hibernate.HibernateException, var978=$r11, var3037=$r10, var2922=$r7, var2632=$r6, var2962=$r8, var904=$r9, var710=java.lang.Throwable, var608=$r12}
; {r0=var1292, java.lang.Exception=var1436, $r3=var3480, org.hibernate.HibernateException=var3676, $r11=var978, $r10=var3037, $r7=var2922, $r6=var2632, $r8=var2962, $r9=var904, java.lang.Throwable=var710, $r12=var608}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r3 := @caughtexception;	$r11 = new org.hibernate.HibernateException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate specified auto SessionEventListener : ");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2