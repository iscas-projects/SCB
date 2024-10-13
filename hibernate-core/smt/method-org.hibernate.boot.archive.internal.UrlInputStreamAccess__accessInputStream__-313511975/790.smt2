(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1161 0)
(declare-sort var3839 0)
(declare-sort var3314 0)
(declare-sort var1449 0)
(declare-sort var1019 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3314-init () var3314)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/-903105362 (var1161) var1449)
(declare-fun toExternalForm/431506284 (var1449) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3314 String) void)
(declare-fun cast-from-var3314-to-var1019 (var3314) var1019)
(declare-const null-var1161 var1161)
(declare-const null-var3839 var3839)
(declare-const var869 var1161) ; Statement: r0 := @this: org.hibernate.boot.archive.internal.UrlInputStreamAccess 
(assert (not (= var869 null-var1161)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var931 var3839) ; Statement: $r3 := @caughtexception 
(assert (not (= var931 null-var3839)))
(define-const var1021 var3314 var3314-init) ; Statement: $r12 = new org.hibernate.HibernateException 
(define-const var3937 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3937)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3937!1 String)
(assert (= var3937!1 ""))
(assert true)
(define-const var3361 String (append/672562846 var3937!1 "Could not open url stream : ")) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open url stream : ") 
(declare-const var3937!2 String)
(assert (= var3937!2 (str.++ var3937!1 "Could not open url stream : ")))
(define-const var3890 var1449 (url/-903105362 var869)) ; Statement: $r6 = r0.<org.hibernate.boot.archive.internal.UrlInputStreamAccess: java.net.URL url> 
(assert true)
(define-const var3390 String (toExternalForm/431506284 var3890)) ; Statement: $r7 = virtualinvoke $r6.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
(define-const var3549 String (append/672562846 var3361 var3390)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3361!1 String)
(assert (= var3361!1 (str.++ var3361 var3390)))
(assert true)
(define-const var3621 String (toString/-2075883882 var3549)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1021 var3621)) ; Statement: specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var1021!1 var3314)
(declare-const var3621!1 String)
(define-const var953 var1019 (cast-from-var3314-to-var1019 var1021!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3314-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/-903105362=([org.hibernate.boot.archive.internal.UrlInputStreamAccess], java.net.URL), toExternalForm/431506284=([java.net.URL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3314-to-var1019=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1161=org.hibernate.boot.archive.internal.UrlInputStreamAccess, var869=r0, var3839=java.lang.Exception, var931=$r3, var3314=org.hibernate.HibernateException, var1021=$r12, var3937=$r11, var3361=$r8, var1449=java.net.URL, var3890=$r6, var3390=$r7, var3549=$r9, var3621=$r10, var1019=java.lang.Throwable, var953=$r13}
; {org.hibernate.boot.archive.internal.UrlInputStreamAccess=var1161, r0=var869, java.lang.Exception=var3839, $r3=var931, org.hibernate.HibernateException=var3314, $r12=var1021, $r11=var3937, $r8=var3361, java.net.URL=var1449, $r6=var3890, $r7=var3390, $r9=var3549, $r10=var3621, java.lang.Throwable=var1019, $r13=var953}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.archive.internal.UrlInputStreamAccess;	$r3 := @caughtexception;	$r12 = new org.hibernate.HibernateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open url stream : ");	$r6 = r0.<org.hibernate.boot.archive.internal.UrlInputStreamAccess: java.net.URL url>;	$r7 = virtualinvoke $r6.<java.net.URL: java.lang.String toExternalForm()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2