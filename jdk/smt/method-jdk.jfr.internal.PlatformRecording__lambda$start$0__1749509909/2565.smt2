(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1767 0)
(declare-sort var1187 0)
(declare-sort var2498 0)
(declare-sort var3268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1187-init () var1187)
(declare-fun <init>/636888916 (var1187 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1767) Bool)
(declare-fun add/953529365 (var1187 String) var1187)
(declare-fun maxAge/-1031466238 (var1767) var2498)
(declare-fun maxSize/-1031466238 (var1767) Int)
(declare-fun dumpOnExit/-1031466238 (var1767) Bool)
(declare-fun duration/-1031466238 (var1767) var2498)
(declare-fun destination/-1031466238 (var1767) var3268)
(declare-fun toString/-2140704992 (var1187) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getName/-1213682957 (var1767) String)
(declare-fun getId/1256750700 (var1767) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1767 var1767)
(declare-const null-var2498 var2498)
(declare-const null-var3268 var3268)
(declare-const var1849 var1767) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1849 null-var1767)))
(define-const var750 var1187 var1187-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var750 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var750!1 var1187)
(declare-const var2611 String)
(define-const var909 Bool (toDisk/-1031466238 var1849)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (not (= (ite var909 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (add/953529365 var750!1 (cast-from-String-to-String "disk=false"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false") 

(declare-const var750!2 var1187)
(declare-const var801 String)
(assert true) ; Non Conditional
(define-const var903 var2498 (maxAge/-1031466238 var1849)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var903 null-var2498)) ; Cond: $r2 == null 
(define-const var192 Int (maxSize/-1031466238 var1849)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var2446 Int (ite (> var192 0) 1 (ite (< var192 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var2446 0)) ; Cond: $b1 == 0 
(define-const var1178 Bool (dumpOnExit/-1031466238 var1849)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var1178 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2070 var2498 (duration/-1031466238 var1849)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var2070 null-var2498)) ; Cond: $r3 == null 
(define-const var3594 var3268 (destination/-1031466238 var1849)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var3594 null-var3268)) ; Cond: $r4 == null 
(assert true)
(define-const var1276 String (toString/-2140704992 var750!2)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var1108 String var1276) ; Statement: r42 = $r24 
(assert true)
(define-const var3240 Int (length/-134980193 var1276)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= var3240 0))) ; Negate: Cond: $i2 == 0  
(define-const var83 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var83)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var83!1 String)
(assert (= var83!1 ""))
(assert true)
(define-const var2112 String (append/672562846 var83!1 "{")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var83!2 String)
(assert (= var83!2 (str.++ var83!1 "{")))
(assert true)
(define-const var1974 String (append/672562846 var2112 var1276)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2112!1 String)
(assert (= var2112!1 (str.++ var2112 var1276)))
(assert true)
(define-const var3951 String (append/672562846 var1974 "}")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1974!1 String)
(assert (= var1974!1 (str.++ var1974 "}")))
(assert true)
(define-const var1108!1 String (toString/-2075883882 var3951)) ; Statement: r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2062 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2062)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2062!1 String)
(assert (= var2062!1 ""))
(assert true)
(define-const var3198 String (append/672562846 var2062!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var2062!2 String)
(assert (= var2062!2 (str.++ var2062!1 "Started recording \u0022")))
(assert true)
(define-const var1506 String (getName/-1213682957 var1849)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var1078 String (append/672562846 var3198 var1506)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3198!1 String)
(assert (= var3198!1 (str.++ var3198 var1506)))
(assert true)
(define-const var1510 String (append/672562846 var1078 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var1078!1 String)
(assert (= var1078!1 (str.++ var1078 "\u0022 (")))
(assert true)
(define-const var2445 Int (getId/1256750700 var1849)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var1352 String (append/-901862667 var1510 var2445)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var1510!1 String)
(assert (str.prefixof var1510 var1510!1))
(assert true)
(define-const var2447 String (append/672562846 var1352 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var1352!1 String)
(assert (= var1352!1 (str.++ var1352 ") ")))
(assert true)
(define-const var1731 String (append/672562846 var2447 var1108!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var2447!1 String)
(assert (= var2447!1 (str.++ var2447 var1108!1)))
(assert true)
(define-const var160 String (toString/-2075883882 var1731)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1187-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1767=jdk.jfr.internal.PlatformRecording, var1849=r1, var1187=java.util.StringJoiner, var750=$r0, var2611=", ", var909=$z0, var801="disk=false", var2498=java.time.Duration, var903=$r2, var192=$l0, var2446=$b1, var1178=$z1, var2070=$r3, var3268=jdk.jfr.internal.WriteableUserPath, var3594=$r4, var1276=$r24, var1108=r42, var3240=$i2, var83=$r14, var2112=$r15, var1974=$r16, var3951=$r17, var2062=$r5, var3198=$r7, var1506=$r6, var1078=$r8, var1510=$r9, var2445=$l3, var1352=$r10, var2447=$r11, var1731=$r12, var160=$r13}
; {jdk.jfr.internal.PlatformRecording=var1767, r1=var1849, java.util.StringJoiner=var1187, $r0=var750, ", "=var2611, $z0=var909, "disk=false"=var801, java.time.Duration=var2498, $r2=var903, $l0=var192, $b1=var2446, $z1=var1178, $r3=var2070, jdk.jfr.internal.WriteableUserPath=var3268, $r4=var3594, $r24=var1276, r42=var1108, $i2=var3240, $r14=var83, $r15=var2112, $r16=var1974, $r17=var3951, $r5=var2062, $r7=var3198, $r6=var1506, $r8=var1078, $r9=var1510, $l3=var2445, $r10=var1352, $r11=var2447, $r12=var1731, $r13=var160}
;seq <java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false");	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10