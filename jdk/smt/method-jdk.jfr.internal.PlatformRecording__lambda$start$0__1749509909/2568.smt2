(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2385 0)
(declare-sort var3898 0)
(declare-sort var3242 0)
(declare-sort var29 0)
(declare-sort var3998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3898-init () var3898)
(declare-fun <init>/636888916 (var3898 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var2385) Bool)
(declare-fun maxAge/-1031466238 (var2385) var3242)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var29_formatTimespan/-1157398745 (var3242 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var3898 String) var3898)
(declare-fun maxSize/-1031466238 (var2385) Int)
(declare-fun dumpOnExit/-1031466238 (var2385) Bool)
(declare-fun duration/-1031466238 (var2385) var3242)
(declare-fun destination/-1031466238 (var2385) var3998)
(declare-fun toString/-2140704992 (var3898) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var2385) String)
(declare-fun getId/1256750700 (var2385) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var2385 var2385)
(declare-const null-var3242 var3242)
(declare-const null-var3998 var3998)
(declare-const var785 var2385) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var785 null-var2385)))
(define-const var1716 var3898 var3898-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var1716 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var1716!1 var3898)
(declare-const var1059 String)
(define-const var869 Bool (toDisk/-1031466238 var785)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var869 1 0) 0))) ; Cond: $z0 != 0 
(define-const var328 var3242 (maxAge/-1031466238 var785)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (not (= var328 null-var3242))) ; Negate: Cond: $r2 == null  
(define-const var3009 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3009)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3009!1 String)
(assert (= var3009!1 ""))
(assert true)
(define-const var3779 String (append/672562846 var3009!1 "maxage=")) ; Statement: $r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=") 
(declare-const var3009!2 String)
(assert (= var3009!2 (str.++ var3009!1 "maxage=")))
(define-const var59 var3242 (maxAge/-1031466238 var785)) ; Statement: $r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(define-const var3049 String (var29_formatTimespan/-1157398745 var59 "")) ; Statement: $r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "") 
(assert true)
(define-const var3030 String (append/672562846 var3779 var3049)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var3779!1 String)
(assert (= var3779!1 (str.++ var3779 var3049)))
(assert true)
(define-const var2372 String (toString/-2075883882 var3030)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var1716!1 (cast-from-String-to-String var2372))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41) 

(declare-const var1716!2 var3898)
(declare-const var2372!1 String)
(assert true) ; Non Conditional
(define-const var2095 Int (maxSize/-1031466238 var785)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var3829 Int (ite (> var2095 0) 1 (ite (< var2095 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var3829 0)) ; Cond: $b1 == 0 
(define-const var444 Bool (dumpOnExit/-1031466238 var785)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var444 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1474 var3242 (duration/-1031466238 var785)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (not (= var1474 null-var3242))) ; Negate: Cond: $r3 == null  
(define-const var649 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var649)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var649!1 String)
(assert (= var649!1 ""))
(assert true)
(define-const var3695 String (append/672562846 var649!1 "duration=")) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=") 
(declare-const var649!2 String)
(assert (= var649!2 (str.++ var649!1 "duration=")))
(define-const var2431 var3242 (duration/-1031466238 var785)) ; Statement: $r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(define-const var861 String (var29_formatTimespan/-1157398745 var2431 "")) ; Statement: $r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "") 
(assert true)
(define-const var3461 String (append/672562846 var3695 var861)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3695!1 String)
(assert (= var3695!1 (str.++ var3695 var861)))
(assert true)
(define-const var2800 String (toString/-2075883882 var3461)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var1716!2 (cast-from-String-to-String var2800))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30) 

(declare-const var1716!3 var3898)
(declare-const var2800!1 String)
(assert true) ; Non Conditional
(define-const var144 var3998 (destination/-1031466238 var785)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var144 null-var3998)) ; Cond: $r4 == null 
(assert true)
(define-const var1338 String (toString/-2140704992 var1716!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var1409 String var1338) ; Statement: r42 = $r24 
(assert true)
(define-const var2917 Int (length/-134980193 var1338)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var2917 0)) ; Cond: $i2 == 0 
(define-const var923 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var923)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var923!1 String)
(assert (= var923!1 ""))
(assert true)
(define-const var3614 String (append/672562846 var923!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var923!2 String)
(assert (= var923!2 (str.++ var923!1 "Started recording \u0022")))
(assert true)
(define-const var2760 String (getName/-1213682957 var785)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var2243 String (append/672562846 var3614 var2760)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3614!1 String)
(assert (= var3614!1 (str.++ var3614 var2760)))
(assert true)
(define-const var1086 String (append/672562846 var2243 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var2243!1 String)
(assert (= var2243!1 (str.++ var2243 "\u0022 (")))
(assert true)
(define-const var657 Int (getId/1256750700 var785)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var2287 String (append/-901862667 var1086 var657)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var1086!1 String)
(assert (str.prefixof var1086 var1086!1))
(assert true)
(define-const var3292 String (append/672562846 var2287 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2287!1 String)
(assert (= var2287!1 (str.++ var2287 ") ")))
(assert true)
(define-const var546 String (append/672562846 var3292 var1409)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3292!1 String)
(assert (= var3292!1 (str.++ var3292 var1409)))
(assert true)
(define-const var3738 String (toString/-2075883882 var546)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3898-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var29_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var2385=jdk.jfr.internal.PlatformRecording, var785=r1, var3898=java.util.StringJoiner, var1716=$r0, var1059=", ", var869=$z0, var3242=java.time.Duration, var328=$r2, var3009=$r36, var3779=$r39, var59=$r37, var29=jdk.jfr.internal.Utils, var3049=$r38, var3030=$r40, var2372=$r41, var2095=$l0, var3829=$b1, var444=$z1, var1474=$r3, var649=$r25, var3695=$r28, var2431=$r26, var861=$r27, var3461=$r29, var2800=$r30, var3998=jdk.jfr.internal.WriteableUserPath, var144=$r4, var1338=$r24, var1409=r42, var2917=$i2, var923=$r5, var3614=$r7, var2760=$r6, var2243=$r8, var1086=$r9, var657=$l3, var2287=$r10, var3292=$r11, var546=$r12, var3738=$r13}
; {jdk.jfr.internal.PlatformRecording=var2385, r1=var785, java.util.StringJoiner=var3898, $r0=var1716, ", "=var1059, $z0=var869, java.time.Duration=var3242, $r2=var328, $r36=var3009, $r39=var3779, $r37=var59, jdk.jfr.internal.Utils=var29, $r38=var3049, $r40=var3030, $r41=var2372, $l0=var2095, $b1=var3829, $z1=var444, $r3=var1474, $r25=var649, $r28=var3695, $r26=var2431, $r27=var861, $r29=var3461, $r30=var2800, jdk.jfr.internal.WriteableUserPath=var3998, $r4=var144, $r24=var1338, r42=var1409, $i2=var2917, $r5=var923, $r7=var3614, $r6=var2760, $r8=var2243, $r9=var1086, $l3=var657, $r10=var2287, $r11=var3292, $r12=var546, $r13=var3738}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=");	$r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41);	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=");	$r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30);	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10