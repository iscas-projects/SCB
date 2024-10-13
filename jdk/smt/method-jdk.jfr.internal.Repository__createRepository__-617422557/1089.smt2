(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3928 0)
(declare-sort var454 0)
(declare-sort var2619 0)
(declare-sort var553 0)
(declare-sort var1291 0)
(declare-sort var1896 0)
(declare-sort var2257 0)
(declare-sort var3290 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var454_createRealBasePath/-971800851 (var3928) var3928)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var553_now/1189963953 () var553)
(declare-fun format/-1646058768 (var2619 var1291) String)
(declare-fun cast-from-var553-to-var1291 (var553) var1291)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1896_getJVM/-984596898 () var1896)
(declare-fun getPid/817457972 (var1896) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2257-init () var2257)
(declare-fun append/-1031950772 (String var3290) String)
(declare-fun cast-from-var3928-to-var3290 (var3928) var3290)
(declare-fun <init>/-8765015 (var2257 String) void)
(declare-const null-var3928 var3928)
(declare-const var454-REPO_DATE_FORMAT var2619)
(declare-const var3419 var3928) ; Statement: r0 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath 
(assert (not (= var3419 null-var3928)))
(define-const var74 var3928 (var454_createRealBasePath/-971800851 var3419)) ; Statement: r1 = staticinvoke <jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath createRealBasePath(jdk.jfr.internal.SecuritySupport$SafePath)>(r0) 
(define-const var1379 var3928 null-var3928) ; Statement: r26 = null 
(define-const var625 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var625)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var625!1 String)
(assert (= var625!1 ""))
(define-const var1747 var2619 var454-REPO_DATE_FORMAT) ; Statement: $r3 = <jdk.jfr.internal.Repository: java.time.format.DateTimeFormatter REPO_DATE_FORMAT> 
(define-const var3096 var553 var553_now/1189963953) ; Statement: $r4 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>() 
(assert true)
(define-const var1908 String (format/-1646058768 var1747 (cast-from-var553-to-var1291 var3096))) ; Statement: $r5 = virtualinvoke $r3.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r4) 
(assert true)
(define-const var2673 String (append/672562846 var625!1 var1908)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var625!2 String)
(assert (= var625!2 (str.++ var625!1 var1908)))
(assert true)
(define-const var842 String (append/672562846 var2673 "_")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2673!1 String)
(assert (= var2673!1 (str.++ var2673 "_")))
(define-const var3341 var1896 var1896_getJVM/-984596898) ; Statement: $r7 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>() 
(assert true)
(define-const var2585 String (getPid/817457972 var3341)) ; Statement: $r8 = virtualinvoke $r7.<jdk.jfr.internal.JVM: java.lang.String getPid()>() 
(assert true)
(define-const var1201 String (append/672562846 var842 var2585)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var842!1 String)
(assert (= var842!1 (str.++ var842 var2585)))
(assert true)
(define-const var246 String (toString/-2075883882 var1201)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2092 String var246) ; Statement: r27 = r11 
(define-const var3091 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 1000 goto (branch) 
(assert (>= var3091 1000)) ; Cond: i0 >= 1000 
 ; Statement: if i0 != 1000 goto r12 = staticinvoke <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath toRealPath(jdk.jfr.internal.SecuritySupport$SafePath)>(r26) 
(assert (not (not (= var3091 1000)))) ; Negate: Cond: i0 != 1000  
(define-const var2040 var2257 var2257-init) ; Statement: $r13 = new java.lang.Exception 
(define-const var1734 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1734)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1734!1 String)
(assert (= var1734!1 ""))
(assert true)
(define-const var2899 String (append/672562846 var1734!1 "Unable to create JFR repository directory using base location (")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create JFR repository directory using base location (") 
(declare-const var1734!2 String)
(assert (= var1734!2 (str.++ var1734!1 "Unable to create JFR repository directory using base location (")))
(assert true)
(define-const var480 String (append/-1031950772 var2899 (cast-from-var3928-to-var3290 var3419))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2899!1 String)
(assert (str.prefixof var2899 var2899!1))
(assert true)
(define-const var218 String (append/672562846 var480 ")")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var480!1 String)
(assert (= var480!1 (str.++ var480 ")")))
(assert true)
(define-const var1332 String (toString/-2075883882 var218)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var2040 var1332)) ; Statement: specialinvoke $r13.<java.lang.Exception: void <init>(java.lang.String)>($r18) 

(declare-const var2040!1 var2257)
(declare-const var1332!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var454_createRealBasePath/-971800851=([jdk.jfr.internal.SecuritySupport$SafePath], jdk.jfr.internal.SecuritySupport$SafePath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var553_now/1189963953=([], java.time.LocalDateTime), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var553-to-var1291=([java.time.LocalDateTime], java.time.temporal.TemporalAccessor), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1896_getJVM/-984596898=([], jdk.jfr.internal.JVM), getPid/817457972=([jdk.jfr.internal.JVM], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2257-init=([], java.lang.Exception), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3928-to-var3290=([jdk.jfr.internal.SecuritySupport$SafePath], java.lang.Object), <init>/-8765015=([java.lang.Exception, java.lang.String], void)}
; {var3928=jdk.jfr.internal.SecuritySupport$SafePath, var3419=r0, var454=jdk.jfr.internal.Repository, var74=r1, var1379=r26, var625=$r2, var2619=java.time.format.DateTimeFormatter, var1747=$r3, var553=java.time.LocalDateTime, var3096=$r4, var1291=java.time.temporal.TemporalAccessor, var1908=$r5, var2673=$r6, var842=$r9, var1896=jdk.jfr.internal.JVM, var3341=$r7, var2585=$r8, var1201=$r10, var246=r11, var2092=r27, var3091=i0, var2257=java.lang.Exception, var2040=$r13, var1734=$r14, var2899=$r15, var3290=java.lang.Object, var480=$r16, var218=$r17, var1332=$r18}
; {jdk.jfr.internal.SecuritySupport$SafePath=var3928, r0=var3419, jdk.jfr.internal.Repository=var454, r1=var74, r26=var1379, $r2=var625, java.time.format.DateTimeFormatter=var2619, $r3=var1747, java.time.LocalDateTime=var553, $r4=var3096, java.time.temporal.TemporalAccessor=var1291, $r5=var1908, $r6=var2673, $r9=var842, jdk.jfr.internal.JVM=var1896, $r7=var3341, $r8=var2585, $r10=var1201, r11=var246, r27=var2092, i0=var3091, java.lang.Exception=var2257, $r13=var2040, $r14=var1734, $r15=var2899, java.lang.Object=var3290, $r16=var480, $r17=var218, $r18=var1332}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath;	r1 = staticinvoke <jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath createRealBasePath(jdk.jfr.internal.SecuritySupport$SafePath)>(r0);	r26 = null;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = <jdk.jfr.internal.Repository: java.time.format.DateTimeFormatter REPO_DATE_FORMAT>;	$r4 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>();	$r5 = virtualinvoke $r3.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r4);	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>();	$r8 = virtualinvoke $r7.<jdk.jfr.internal.JVM: java.lang.String getPid()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	r27 = r11;	i0 = 0;	if i0 >= 1000 goto (branch);	if i0 != 1000 goto r12 = staticinvoke <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath toRealPath(jdk.jfr.internal.SecuritySupport$SafePath)>(r26);	$r13 = new java.lang.Exception;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create JFR repository directory using base location (");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.Exception: void <init>(java.lang.String)>($r18);	throw $r13
;block_num 4