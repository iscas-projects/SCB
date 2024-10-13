(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1301 0)
(declare-sort var1334 0)
(declare-sort var1979 0)
(declare-sort var3473 0)
(declare-sort var3594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1334-init () var1334)
(declare-fun <init>/636888916 (var1334 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1301) Bool)
(declare-fun maxAge/-1031466238 (var1301) var1979)
(declare-fun maxSize/-1031466238 (var1301) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3473_formatBytesCompact/935598214 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var1334 String) var1334)
(declare-fun dumpOnExit/-1031466238 (var1301) Bool)
(declare-fun duration/-1031466238 (var1301) var1979)
(declare-fun var3473_formatTimespan/-1157398745 (var1979 String) String)
(declare-fun destination/-1031466238 (var1301) var3594)
(declare-fun toString/-2140704992 (var1334) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1301) String)
(declare-fun getId/1256750700 (var1301) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1301 var1301)
(declare-const null-var1979 var1979)
(declare-const null-var3594 var3594)
(declare-const var977 var1301) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var977 null-var1301)))
(define-const var2117 var1334 var1334-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var2117 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var2117!1 var1334)
(declare-const var319 String)
(define-const var1797 Bool (toDisk/-1031466238 var977)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var1797 1 0) 0))) ; Cond: $z0 != 0 
(define-const var531 var1979 (maxAge/-1031466238 var977)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var531 null-var1979)) ; Cond: $r2 == null 
(define-const var1428 Int (maxSize/-1031466238 var977)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var2281 Int (ite (> var1428 0) 1 (ite (< var1428 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (not (= var2281 0))) ; Negate: Cond: $b1 == 0  
(define-const var3847 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3847)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3847!1 String)
(assert (= var3847!1 ""))
(assert true)
(define-const var532 String (append/672562846 var3847!1 "maxsize=")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=") 
(declare-const var3847!2 String)
(assert (= var3847!2 (str.++ var3847!1 "maxsize=")))
(define-const var2570 Int (maxSize/-1031466238 var977)) ; Statement: $l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var1791 String (var3473_formatBytesCompact/935598214 var2570)) ; Statement: $r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4) 
(assert true)
(define-const var3363 String (append/672562846 var532 var1791)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var532!1 String)
(assert (= var532!1 (str.++ var532 var1791)))
(assert true)
(define-const var1164 String (toString/-2075883882 var3363)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var2117!1 (cast-from-String-to-String var1164))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35) 

(declare-const var2117!2 var1334)
(declare-const var1164!1 String)
(assert true) ; Non Conditional
(define-const var1358 Bool (dumpOnExit/-1031466238 var977)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var1358 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3848 var1979 (duration/-1031466238 var977)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (not (= var3848 null-var1979))) ; Negate: Cond: $r3 == null  
(define-const var3896 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3896)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3896!1 String)
(assert (= var3896!1 ""))
(assert true)
(define-const var1329 String (append/672562846 var3896!1 "duration=")) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=") 
(declare-const var3896!2 String)
(assert (= var3896!2 (str.++ var3896!1 "duration=")))
(define-const var3977 var1979 (duration/-1031466238 var977)) ; Statement: $r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(define-const var278 String (var3473_formatTimespan/-1157398745 var3977 "")) ; Statement: $r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "") 
(assert true)
(define-const var244 String (append/672562846 var1329 var278)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1329!1 String)
(assert (= var1329!1 (str.++ var1329 var278)))
(assert true)
(define-const var122 String (toString/-2075883882 var244)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var2117!2 (cast-from-String-to-String var122))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30) 

(declare-const var2117!3 var1334)
(declare-const var122!1 String)
(assert true) ; Non Conditional
(define-const var3713 var3594 (destination/-1031466238 var977)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var3713 null-var3594)) ; Cond: $r4 == null 
(assert true)
(define-const var114 String (toString/-2140704992 var2117!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var2913 String var114) ; Statement: r42 = $r24 
(assert true)
(define-const var539 Int (length/-134980193 var114)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var539 0)) ; Cond: $i2 == 0 
(define-const var3051 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3051)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3051!1 String)
(assert (= var3051!1 ""))
(assert true)
(define-const var2287 String (append/672562846 var3051!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var3051!2 String)
(assert (= var3051!2 (str.++ var3051!1 "Started recording \u0022")))
(assert true)
(define-const var2564 String (getName/-1213682957 var977)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var1610 String (append/672562846 var2287 var2564)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2287!1 String)
(assert (= var2287!1 (str.++ var2287 var2564)))
(assert true)
(define-const var1812 String (append/672562846 var1610 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var1610!1 String)
(assert (= var1610!1 (str.++ var1610 "\u0022 (")))
(assert true)
(define-const var3826 Int (getId/1256750700 var977)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var1738 String (append/-901862667 var1812 var3826)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var1812!1 String)
(assert (str.prefixof var1812 var1812!1))
(assert true)
(define-const var3165 String (append/672562846 var1738 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var1738!1 String)
(assert (= var1738!1 (str.++ var1738 ") ")))
(assert true)
(define-const var1917 String (append/672562846 var3165 var2913)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3165!1 String)
(assert (= var3165!1 (str.++ var3165 var2913)))
(assert true)
(define-const var3011 String (toString/-2075883882 var1917)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1334-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3473_formatBytesCompact/935598214=([long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), var3473_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1301=jdk.jfr.internal.PlatformRecording, var977=r1, var1334=java.util.StringJoiner, var2117=$r0, var319=", ", var1797=$z0, var1979=java.time.Duration, var531=$r2, var1428=$l0, var2281=$b1, var3847=$r31, var532=$r33, var2570=$l4, var3473=jdk.jfr.internal.Utils, var1791=$r32, var3363=$r34, var1164=$r35, var1358=$z1, var3848=$r3, var3896=$r25, var1329=$r28, var3977=$r26, var278=$r27, var244=$r29, var122=$r30, var3594=jdk.jfr.internal.WriteableUserPath, var3713=$r4, var114=$r24, var2913=r42, var539=$i2, var3051=$r5, var2287=$r7, var2564=$r6, var1610=$r8, var1812=$r9, var3826=$l3, var1738=$r10, var3165=$r11, var1917=$r12, var3011=$r13}
; {jdk.jfr.internal.PlatformRecording=var1301, r1=var977, java.util.StringJoiner=var1334, $r0=var2117, ", "=var319, $z0=var1797, java.time.Duration=var1979, $r2=var531, $l0=var1428, $b1=var2281, $r31=var3847, $r33=var532, $l4=var2570, jdk.jfr.internal.Utils=var3473, $r32=var1791, $r34=var3363, $r35=var1164, $z1=var1358, $r3=var3848, $r25=var3896, $r28=var1329, $r26=var3977, $r27=var278, $r29=var244, $r30=var122, jdk.jfr.internal.WriteableUserPath=var3594, $r4=var3713, $r24=var114, r42=var2913, $i2=var539, $r5=var3051, $r7=var2287, $r6=var2564, $r8=var1610, $r9=var1812, $l3=var3826, $r10=var1738, $r11=var3165, $r12=var1917, $r13=var3011}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=");	$l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35);	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=");	$r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30);	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10