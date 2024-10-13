(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2210 0)
(declare-sort var3464 0)
(declare-sort var3677 0)
(declare-sort var1002 0)
(declare-sort var3754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3464-init () var3464)
(declare-fun <init>/636888916 (var3464 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var2210) Bool)
(declare-fun maxAge/-1031466238 (var2210) var3677)
(declare-fun maxSize/-1031466238 (var2210) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1002_formatBytesCompact/935598214 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var3464 String) var3464)
(declare-fun dumpOnExit/-1031466238 (var2210) Bool)
(declare-fun duration/-1031466238 (var2210) var3677)
(declare-fun destination/-1031466238 (var2210) var3754)
(declare-fun toString/-2140704992 (var3464) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var2210) String)
(declare-fun getId/1256750700 (var2210) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var2210 var2210)
(declare-const null-var3677 var3677)
(declare-const null-var3754 var3754)
(declare-const var3428 var2210) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var3428 null-var2210)))
(define-const var1409 var3464 var3464-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var1409 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var1409!1 var3464)
(declare-const var1136 String)
(define-const var871 Bool (toDisk/-1031466238 var3428)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var871 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1520 var3677 (maxAge/-1031466238 var3428)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var1520 null-var3677)) ; Cond: $r2 == null 
(define-const var2957 Int (maxSize/-1031466238 var3428)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var3740 Int (ite (> var2957 0) 1 (ite (< var2957 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (not (= var3740 0))) ; Negate: Cond: $b1 == 0  
(define-const var3411 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3411)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3411!1 String)
(assert (= var3411!1 ""))
(assert true)
(define-const var1040 String (append/672562846 var3411!1 "maxsize=")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=") 
(declare-const var3411!2 String)
(assert (= var3411!2 (str.++ var3411!1 "maxsize=")))
(define-const var2637 Int (maxSize/-1031466238 var3428)) ; Statement: $l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var2669 String (var1002_formatBytesCompact/935598214 var2637)) ; Statement: $r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4) 
(assert true)
(define-const var3344 String (append/672562846 var1040 var2669)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var1040!1 String)
(assert (= var1040!1 (str.++ var1040 var2669)))
(assert true)
(define-const var3337 String (toString/-2075883882 var3344)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var1409!1 (cast-from-String-to-String var3337))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35) 

(declare-const var1409!2 var3464)
(declare-const var3337!1 String)
(assert true) ; Non Conditional
(define-const var2883 Bool (dumpOnExit/-1031466238 var3428)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var2883 1 0) 0)) ; Cond: $z1 == 0 
(define-const var424 var3677 (duration/-1031466238 var3428)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var424 null-var3677)) ; Cond: $r3 == null 
(define-const var123 var3754 (destination/-1031466238 var3428)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var123 null-var3754)) ; Cond: $r4 == null 
(assert true)
(define-const var654 String (toString/-2140704992 var1409!2)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var198 String var654) ; Statement: r42 = $r24 
(assert true)
(define-const var3201 Int (length/-134980193 var654)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= var3201 0))) ; Negate: Cond: $i2 == 0  
(define-const var2240 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2240)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2240!1 String)
(assert (= var2240!1 ""))
(assert true)
(define-const var2243 String (append/672562846 var2240!1 "{")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var2240!2 String)
(assert (= var2240!2 (str.++ var2240!1 "{")))
(assert true)
(define-const var528 String (append/672562846 var2243 var654)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2243!1 String)
(assert (= var2243!1 (str.++ var2243 var654)))
(assert true)
(define-const var997 String (append/672562846 var528 "}")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var528!1 String)
(assert (= var528!1 (str.++ var528 "}")))
(assert true)
(define-const var198!1 String (toString/-2075883882 var997)) ; Statement: r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1049 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1049)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1049!1 String)
(assert (= var1049!1 ""))
(assert true)
(define-const var3138 String (append/672562846 var1049!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1049!2 String)
(assert (= var1049!2 (str.++ var1049!1 "Started recording \u0022")))
(assert true)
(define-const var3133 String (getName/-1213682957 var3428)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var1781 String (append/672562846 var3138 var3133)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3138!1 String)
(assert (= var3138!1 (str.++ var3138 var3133)))
(assert true)
(define-const var2348 String (append/672562846 var1781 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var1781!1 String)
(assert (= var1781!1 (str.++ var1781 "\u0022 (")))
(assert true)
(define-const var3632 Int (getId/1256750700 var3428)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var3345 String (append/-901862667 var2348 var3632)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2348!1 String)
(assert (str.prefixof var2348 var2348!1))
(assert true)
(define-const var1547 String (append/672562846 var3345 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3345!1 String)
(assert (= var3345!1 (str.++ var3345 ") ")))
(assert true)
(define-const var2521 String (append/672562846 var1547 var198!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var1547!1 String)
(assert (= var1547!1 (str.++ var1547 var198!1)))
(assert true)
(define-const var61 String (toString/-2075883882 var2521)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3464-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1002_formatBytesCompact/935598214=([long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var2210=jdk.jfr.internal.PlatformRecording, var3428=r1, var3464=java.util.StringJoiner, var1409=$r0, var1136=", ", var871=$z0, var3677=java.time.Duration, var1520=$r2, var2957=$l0, var3740=$b1, var3411=$r31, var1040=$r33, var2637=$l4, var1002=jdk.jfr.internal.Utils, var2669=$r32, var3344=$r34, var3337=$r35, var2883=$z1, var424=$r3, var3754=jdk.jfr.internal.WriteableUserPath, var123=$r4, var654=$r24, var198=r42, var3201=$i2, var2240=$r14, var2243=$r15, var528=$r16, var997=$r17, var1049=$r5, var3138=$r7, var3133=$r6, var1781=$r8, var2348=$r9, var3632=$l3, var3345=$r10, var1547=$r11, var2521=$r12, var61=$r13}
; {jdk.jfr.internal.PlatformRecording=var2210, r1=var3428, java.util.StringJoiner=var3464, $r0=var1409, ", "=var1136, $z0=var871, java.time.Duration=var3677, $r2=var1520, $l0=var2957, $b1=var3740, $r31=var3411, $r33=var1040, $l4=var2637, jdk.jfr.internal.Utils=var1002, $r32=var2669, $r34=var3344, $r35=var3337, $z1=var2883, $r3=var424, jdk.jfr.internal.WriteableUserPath=var3754, $r4=var123, $r24=var654, r42=var198, $i2=var3201, $r14=var2240, $r15=var2243, $r16=var528, $r17=var997, $r5=var1049, $r7=var3138, $r6=var3133, $r8=var1781, $r9=var2348, $l3=var3632, $r10=var3345, $r11=var1547, $r12=var2521, $r13=var61}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=");	$l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35);	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10