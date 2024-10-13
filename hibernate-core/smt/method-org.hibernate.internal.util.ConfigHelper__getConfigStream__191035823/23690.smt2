(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3540 0)
(declare-sort var968 0)
(declare-sort var3193 0)
(declare-sort var3442 0)
(declare-sort var3368 0)
(declare-sort var1562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3193_locateConfig/-1031606509 (String) var968)
(declare-fun var3368-init () var3368)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3368 String var1562) void)
(declare-fun cast-from-var3442-to-var1562 (var3442) var1562)
(declare-fun cast-from-var3368-to-var1562 (var3368) var1562)
(declare-const null-String String)
(declare-const null-var968 var968)
(declare-const null-var3442 var3442)
(declare-const var1500 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1500 null-String)))
(define-const var2040 var968 (var3193_locateConfig/-1031606509 var1500)) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.ConfigHelper: java.net.URL locateConfig(java.lang.String)>(r0) 
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var2040 null-var968)))) ; Negate: Cond: r1 != null  
(declare-const var1869 var3442) ; Statement: $r6 := @caughtexception 
(assert (not (= var1869 null-var3442)))
(define-const var51 var3368 var3368-init) ; Statement: $r15 = new org.hibernate.HibernateException 
(define-const var890 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var890)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var890!1 String)
(assert (= var890!1 ""))
(assert true)
(define-const var1069 String (append/672562846 var890!1 "Unable to open config file: ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open config file: ") 
(declare-const var890!2 String)
(assert (= var890!2 (str.++ var890!1 "Unable to open config file: ")))
(assert true)
(define-const var563 String (append/672562846 var1069 var1500)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1069!1 String)
(assert (= var1069!1 (str.++ var1069 var1500)))
(assert true)
(define-const var2088 String (toString/-2075883882 var563)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var51 var2088 (cast-from-var3442-to-var1562 var1869))) ; Statement: specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6) 

(declare-const var51!1 var3368)
(declare-const var2088!1 String)
(declare-const var1869!1 var3442)
(define-const var2813 var1562 (cast-from-var3368-to-var1562 var51!1)) ; Statement: $r17 = (java.lang.Throwable) $r15 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var3193_locateConfig/-1031606509=([java.lang.String], java.net.URL), var3368-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3442-to-var1562=([java.io.IOException], java.lang.Throwable), cast-from-var3368-to-var1562=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1500=r0, var3540=null_type, var968=java.net.URL, var3193=org.hibernate.internal.util.ConfigHelper, var2040=r1, var3442=java.io.IOException, var1869=$r6, var3368=org.hibernate.HibernateException, var51=$r15, var890=$r14, var1069=$r9, var563=$r10, var2088=$r11, var1562=java.lang.Throwable, var2813=$r17}
; {r0=var1500, null_type=var3540, java.net.URL=var968, org.hibernate.internal.util.ConfigHelper=var3193, r1=var2040, java.io.IOException=var3442, $r6=var1869, org.hibernate.HibernateException=var3368, $r15=var51, $r14=var890, $r9=var1069, $r10=var563, $r11=var2088, java.lang.Throwable=var1562, $r17=var2813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.hibernate.internal.util.ConfigHelper: java.net.URL locateConfig(java.lang.String)>(r0);	if r1 != null goto $r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>();	$r6 := @caughtexception;	$r15 = new org.hibernate.HibernateException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to open config file: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6);	$r17 = (java.lang.Throwable) $r15;	throw $r17
;block_num 2