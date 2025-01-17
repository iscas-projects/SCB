(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var2185 0)
(declare-sort var1010 0)
(declare-sort var2860 0)
(declare-sort var1461 0)
(declare-sort var3986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2185_getJVM/-984596898 () var2185)
(declare-fun getPid/817457972 (var2185) String)
(declare-fun var1461_now/1189963953 () var1461)
(declare-fun format/-1646058768 (var1010 var3986) String)
(declare-fun cast-from-var1461-to-var3986 (var1461) var3986)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getId/-1321515190 (var456) Int)
(declare-fun Int_toString/1077016676 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var456 var456)
(declare-const var2860-REPO_DATE_FORMAT var1010)
(declare-const var2407 var456) ; Statement: r5 := @parameter0: jdk.jfr.Recording 
(assert (not (= var2407 null-var456)))
(define-const var3395 var2185 var2185_getJVM/-984596898) ; Statement: $r0 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>() 
(assert true)
(define-const var3368 String (getPid/817457972 var3395)) ; Statement: r1 = virtualinvoke $r0.<jdk.jfr.internal.JVM: java.lang.String getPid()>() 
(define-const var1510 var1010 var2860-REPO_DATE_FORMAT) ; Statement: $r2 = <jdk.jfr.internal.Repository: java.time.format.DateTimeFormatter REPO_DATE_FORMAT> 
(define-const var1097 var1461 var1461_now/1189963953) ; Statement: $r3 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>() 
(assert true)
(define-const var3132 String (format/-1646058768 var1510 (cast-from-var1461-to-var3986 var1097))) ; Statement: r4 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r3) 
 ; Statement: if r5 != null goto $r6 = new java.lang.StringBuilder 
(assert (not (= var2407 null-var456))) ; Cond: r5 != null 
(define-const var649 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var649)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var649!1 String)
(assert (= var649!1 ""))
(assert true)
(define-const var3694 String (append/672562846 var649!1 "-id-")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-id-") 
(declare-const var649!2 String)
(assert (= var649!2 (str.++ var649!1 "-id-")))
(assert true)
(define-const var3739 Int (getId/-1321515190 var2407)) ; Statement: $l0 = virtualinvoke r5.<jdk.jfr.Recording: long getId()>() 
(define-const var3922 String (Int_toString/1077016676 var3739)) ; Statement: $r7 = staticinvoke <java.lang.Long: java.lang.String toString(long)>($l0) 
(assert true)
(define-const var49 String (append/672562846 var3694 var3922)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3694!1 String)
(assert (= var3694!1 (str.++ var3694 var3922)))
(assert true)
(define-const var2092 String (toString/-2075883882 var49)) ; Statement: $r18 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3564 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3564)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3564!1 String)
(assert (= var3564!1 ""))
(assert true)
(define-const var1693 String (append/672562846 var3564!1 "hotspot-pid-")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hotspot-pid-") 
(declare-const var3564!2 String)
(assert (= var3564!2 (str.++ var3564!1 "hotspot-pid-")))
(assert true)
(define-const var1811 String (append/672562846 var1693 var3368)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1693!1 String)
(assert (= var1693!1 (str.++ var1693 var3368)))
(assert true)
(define-const var2107 String (append/672562846 var1811 var2092)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1811!1 String)
(assert (= var1811!1 (str.++ var1811 var2092)))
(assert true)
(define-const var1443 String (append/672562846 var2107 "-")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var2107!1 String)
(assert (= var2107!1 (str.++ var2107 "-")))
(assert true)
(define-const var2801 String (append/672562846 var1443 var3132)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1443!1 String)
(assert (= var1443!1 (str.++ var1443 var3132)))
(assert true)
(define-const var3756 String (append/672562846 var2801 ".jfr")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jfr") 
(declare-const var2801!1 String)
(assert (= var2801!1 (str.++ var2801 ".jfr")))
(assert true)
(define-const var2299 String (toString/-2075883882 var3756)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2185_getJVM/-984596898=([], jdk.jfr.internal.JVM), getPid/817457972=([jdk.jfr.internal.JVM], java.lang.String), var1461_now/1189963953=([], java.time.LocalDateTime), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var1461-to-var3986=([java.time.LocalDateTime], java.time.temporal.TemporalAccessor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getId/-1321515190=([jdk.jfr.Recording], long), Int_toString/1077016676=([long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var456=jdk.jfr.Recording, var2407=r5, var2185=jdk.jfr.internal.JVM, var3395=$r0, var3368=r1, var1010=java.time.format.DateTimeFormatter, var2860=jdk.jfr.internal.Repository, var1510=$r2, var1461=java.time.LocalDateTime, var1097=$r3, var3986=java.time.temporal.TemporalAccessor, var3132=r4, var649=$r6, var3694=$r8, var3739=$l0, var3922=$r7, var49=$r9, var2092=$r18, var3564=$r10, var1693=$r11, var1811=$r12, var2107=$r13, var1443=$r14, var2801=$r15, var3756=$r16, var2299=$r17}
; {jdk.jfr.Recording=var456, r5=var2407, jdk.jfr.internal.JVM=var2185, $r0=var3395, r1=var3368, java.time.format.DateTimeFormatter=var1010, jdk.jfr.internal.Repository=var2860, $r2=var1510, java.time.LocalDateTime=var1461, $r3=var1097, java.time.temporal.TemporalAccessor=var3986, r4=var3132, $r6=var649, $r8=var3694, $l0=var3739, $r7=var3922, $r9=var49, $r18=var2092, $r10=var3564, $r11=var1693, $r12=var1811, $r13=var2107, $r14=var1443, $r15=var2801, $r16=var3756, $r17=var2299}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Long: java.lang.String toString(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r5 := @parameter0: jdk.jfr.Recording;	$r0 = staticinvoke <jdk.jfr.internal.JVM: jdk.jfr.internal.JVM getJVM()>();	r1 = virtualinvoke $r0.<jdk.jfr.internal.JVM: java.lang.String getPid()>();	$r2 = <jdk.jfr.internal.Repository: java.time.format.DateTimeFormatter REPO_DATE_FORMAT>;	$r3 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>();	r4 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r3);	if r5 != null goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-id-");	$l0 = virtualinvoke r5.<jdk.jfr.Recording: long getId()>();	$r7 = staticinvoke <java.lang.Long: java.lang.String toString(long)>($l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r18 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hotspot-pid-");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jfr");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3