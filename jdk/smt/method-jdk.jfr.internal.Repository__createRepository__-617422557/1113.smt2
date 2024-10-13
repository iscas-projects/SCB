(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2947 0)
(declare-sort var1430 0)
(declare-sort var3816 0)
(declare-sort var3965 0)
(declare-sort var246 0)
(declare-sort var74 0)
(declare-sort var518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1430_createRealBasePath/-971800851 (var2947) var2947)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3965_now/1189963953 () var3965)
(declare-fun format/-1646058768 (var3816 var246) String)
(declare-fun cast-from-var3965-to-var246 (var3965) var246)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var74_getJVM/-984596898 () var74)
(declare-fun getPid/817457972 (var74) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var518_toRealPath/1294304992 (var2947) var2947)
(declare-const null-var2947 var2947)
(declare-const var1430-REPO_DATE_FORMAT var3816)
(declare-const var1024 var2947) ; Statement: r0 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath 
(assert (not (= var1024 null-var2947)))
(define-const var3647 var2947 (var1430_createRealBasePath/-971800851 var1024)) ; Statement: r1 = staticinvoke <jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath createRealBasePath(jdk.jfr.internal.SecuritySupport$SafePath)>(r0) 
(define-const var2976 var2947 null-var2947) ; Statement: r26 = null 
(define-const var3903 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3903)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3903!1 String)
(assert (= var3903!1 ""))
(define-const var2725 var3816 var1430-REPO_DATE_FORMAT) ; Statement: $r3 = <jdk.jfr.internal.Repository: java.time.format.DateTimeFormatter REPO_DATE_FORMAT> 
(define-const var2602 var3965 var3965_now/1189963953) ; Statement: $r4 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>() 
(assert true)
(define-const var3568 String (format/-1646058768 var2725 (cast-from-var3965-to-var246 var2602))) ; Statement: $r5 = virtualinvoke $r3.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r4) 
(assert true)
(define-const var2493 String (append/672562846 var3903!1 var3568)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3903!2 String)
(assert (= var3903!2 (str.++ var3903!1 var3568)))
(assert true)
(define-const var3462 String (append/672562846 var2493 "_")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2493!1 String)
(assert (= var2493!1 (str.++ var2493 "_")))
(define-const var1313 var74 var74_getJVM/-984596898) ; Statement: $r7 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>() 
(assert true)
(define-const var218 String (getPid/817457972 var1313)) ; Statement: $r8 = virtualinvoke $r7.<jdk.jfr.internal.JVM: java.lang.String getPid()>() 
(assert true)
(define-const var1528 String (append/672562846 var3462 var218)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3462!1 String)
(assert (= var3462!1 (str.++ var3462 var218)))
(assert true)
(define-const var2391 String (toString/-2075883882 var1528)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2088 String var2391) ; Statement: r27 = r11 
(define-const var3389 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 1000 goto (branch) 
(assert (>= var3389 1000)) ; Cond: i0 >= 1000 
 ; Statement: if i0 != 1000 goto r12 = staticinvoke <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath toRealPath(jdk.jfr.internal.SecuritySupport$SafePath)>(r26) 
(assert (not (= var3389 1000))) ; Cond: i0 != 1000 
(define-const var107 var2947 (var518_toRealPath/1294304992 var2976)) ; Statement: r12 = staticinvoke <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath toRealPath(jdk.jfr.internal.SecuritySupport$SafePath)>(r26) 
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1430_createRealBasePath/-971800851=([jdk.jfr.internal.SecuritySupport$SafePath], jdk.jfr.internal.SecuritySupport$SafePath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3965_now/1189963953=([], java.time.LocalDateTime), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var3965-to-var246=([java.time.LocalDateTime], java.time.temporal.TemporalAccessor), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var74_getJVM/-984596898=([], jdk.jfr.internal.JVM), getPid/817457972=([jdk.jfr.internal.JVM], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var518_toRealPath/1294304992=([jdk.jfr.internal.SecuritySupport$SafePath], jdk.jfr.internal.SecuritySupport$SafePath)}
; {var2947=jdk.jfr.internal.SecuritySupport$SafePath, var1024=r0, var1430=jdk.jfr.internal.Repository, var3647=r1, var2976=r26, var3903=$r2, var3816=java.time.format.DateTimeFormatter, var2725=$r3, var3965=java.time.LocalDateTime, var2602=$r4, var246=java.time.temporal.TemporalAccessor, var3568=$r5, var2493=$r6, var3462=$r9, var74=jdk.jfr.internal.JVM, var1313=$r7, var218=$r8, var1528=$r10, var2391=r11, var2088=r27, var3389=i0, var518=jdk.jfr.internal.SecuritySupport, var107=r12}
; {jdk.jfr.internal.SecuritySupport$SafePath=var2947, r0=var1024, jdk.jfr.internal.Repository=var1430, r1=var3647, r26=var2976, $r2=var3903, java.time.format.DateTimeFormatter=var3816, $r3=var2725, java.time.LocalDateTime=var3965, $r4=var2602, java.time.temporal.TemporalAccessor=var246, $r5=var3568, $r6=var2493, $r9=var3462, jdk.jfr.internal.JVM=var74, $r7=var1313, $r8=var218, $r10=var1528, r11=var2391, r27=var2088, i0=var3389, jdk.jfr.internal.SecuritySupport=var518, r12=var107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath;	r1 = staticinvoke <jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath createRealBasePath(jdk.jfr.internal.SecuritySupport$SafePath)>(r0);	r26 = null;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = <jdk.jfr.internal.Repository: java.time.format.DateTimeFormatter REPO_DATE_FORMAT>;	$r4 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>();	$r5 = virtualinvoke $r3.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r4);	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>();	$r8 = virtualinvoke $r7.<jdk.jfr.internal.JVM: java.lang.String getPid()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	r27 = r11;	i0 = 0;	if i0 >= 1000 goto (branch);	if i0 != 1000 goto r12 = staticinvoke <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath toRealPath(jdk.jfr.internal.SecuritySupport$SafePath)>(r26);	r12 = staticinvoke <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath toRealPath(jdk.jfr.internal.SecuritySupport$SafePath)>(r26);	return r12
;block_num 4