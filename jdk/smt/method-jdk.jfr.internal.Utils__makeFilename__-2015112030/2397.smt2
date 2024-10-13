(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var711 0)
(declare-sort var2501 0)
(declare-sort var549 0)
(declare-sort var3796 0)
(declare-sort var986 0)
(declare-sort var3205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2501_getJVM/-984596898 () var2501)
(declare-fun getPid/817457972 (var2501) String)
(declare-fun var986_now/1189963953 () var986)
(declare-fun format/-1646058768 (var549 var3205) String)
(declare-fun cast-from-var986-to-var3205 (var986) var3205)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var711 var711)
(declare-const var3796-REPO_DATE_FORMAT var549)
(declare-const var2864 var711) ; Statement: r5 := @parameter0: jdk.jfr.Recording 
(assert (not (= var2864 null-var711)))
(define-const var710 var2501 var2501_getJVM/-984596898) ; Statement: $r0 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>() 
(assert true)
(define-const var444 String (getPid/817457972 var710)) ; Statement: r1 = virtualinvoke $r0.<jdk.jfr.internal.JVM: java.lang.String getPid()>() 
(define-const var1973 var549 var3796-REPO_DATE_FORMAT) ; Statement: $r2 = <jdk.jfr.internal.Repository: java.time.format.DateTimeFormatter REPO_DATE_FORMAT> 
(define-const var897 var986 var986_now/1189963953) ; Statement: $r3 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>() 
(assert true)
(define-const var3257 String (format/-1646058768 var1973 (cast-from-var986-to-var3205 var897))) ; Statement: r4 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r3) 
 ; Statement: if r5 != null goto $r6 = new java.lang.StringBuilder 
(assert (not (not (= var2864 null-var711)))) ; Negate: Cond: r5 != null  
(define-const var2496 String "") ; Statement: $r18 = "" 
 ; Statement: goto [?= $r10 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var194 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var194)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var194!1 String)
(assert (= var194!1 ""))
(assert true)
(define-const var2612 String (append/672562846 var194!1 "hotspot-pid-")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hotspot-pid-") 
(declare-const var194!2 String)
(assert (= var194!2 (str.++ var194!1 "hotspot-pid-")))
(assert true)
(define-const var1062 String (append/672562846 var2612 var444)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2612!1 String)
(assert (= var2612!1 (str.++ var2612 var444)))
(assert true)
(define-const var2455 String (append/672562846 var1062 var2496)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1062!1 String)
(assert (= var1062!1 (str.++ var1062 var2496)))
(assert true)
(define-const var1872 String (append/672562846 var2455 "-")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var2455!1 String)
(assert (= var2455!1 (str.++ var2455 "-")))
(assert true)
(define-const var3309 String (append/672562846 var1872 var3257)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1872!1 String)
(assert (= var1872!1 (str.++ var1872 var3257)))
(assert true)
(define-const var2582 String (append/672562846 var3309 ".jfr")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jfr") 
(declare-const var3309!1 String)
(assert (= var3309!1 (str.++ var3309 ".jfr")))
(assert true)
(define-const var3135 String (toString/-2075883882 var2582)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2501_getJVM/-984596898=([], jdk.jfr.internal.JVM), getPid/817457972=([jdk.jfr.internal.JVM], java.lang.String), var986_now/1189963953=([], java.time.LocalDateTime), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var986-to-var3205=([java.time.LocalDateTime], java.time.temporal.TemporalAccessor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var711=jdk.jfr.Recording, var2864=r5, var2501=jdk.jfr.internal.JVM, var710=$r0, var444=r1, var549=java.time.format.DateTimeFormatter, var3796=jdk.jfr.internal.Repository, var1973=$r2, var986=java.time.LocalDateTime, var897=$r3, var3205=java.time.temporal.TemporalAccessor, var3257=r4, var2496=$r18, var194=$r10, var2612=$r11, var1062=$r12, var2455=$r13, var1872=$r14, var3309=$r15, var2582=$r16, var3135=$r17}
; {jdk.jfr.Recording=var711, r5=var2864, jdk.jfr.internal.JVM=var2501, $r0=var710, r1=var444, java.time.format.DateTimeFormatter=var549, jdk.jfr.internal.Repository=var3796, $r2=var1973, java.time.LocalDateTime=var986, $r3=var897, java.time.temporal.TemporalAccessor=var3205, r4=var3257, $r18=var2496, $r10=var194, $r11=var2612, $r12=var1062, $r13=var2455, $r14=var1872, $r15=var3309, $r16=var2582, $r17=var3135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @parameter0: jdk.jfr.Recording;	$r0 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>();	r1 = virtualinvoke $r0.<jdk.jfr.internal.JVM: java.lang.String getPid()>();	$r2 = <jdk.jfr.internal.Repository: java.time.format.DateTimeFormatter REPO_DATE_FORMAT>;	$r3 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>();	r4 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r3);	if r5 != null goto $r6 = new java.lang.StringBuilder;	$r18 = "";	goto [?= $r10 = new java.lang.StringBuilder];	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hotspot-pid-");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jfr");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3