(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2864 0)
(declare-sort var1334 0)
(declare-sort var3650 0)
(declare-sort var1310 0)
(declare-sort var3291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1334-init () var1334)
(declare-fun <init>/636888916 (var1334 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var2864) Bool)
(declare-fun add/953529365 (var1334 String) var1334)
(declare-fun maxAge/-1031466238 (var2864) var3650)
(declare-fun maxSize/-1031466238 (var2864) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1310_formatBytesCompact/935598214 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun dumpOnExit/-1031466238 (var2864) Bool)
(declare-fun duration/-1031466238 (var2864) var3650)
(declare-fun destination/-1031466238 (var2864) var3291)
(declare-fun toString/-2140704992 (var1334) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var2864) String)
(declare-fun getId/1256750700 (var2864) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var2864 var2864)
(declare-const null-var3650 var3650)
(declare-const null-var3291 var3291)
(declare-const var2436 var2864) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var2436 null-var2864)))
(define-const var856 var1334 var1334-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var856 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var856!1 var1334)
(declare-const var2658 String)
(define-const var2478 Bool (toDisk/-1031466238 var2436)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (not (= (ite var2478 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (add/953529365 var856!1 (cast-from-String-to-String "disk=false"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false") 

(declare-const var856!2 var1334)
(declare-const var2383 String)
(assert true) ; Non Conditional
(define-const var2921 var3650 (maxAge/-1031466238 var2436)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var2921 null-var3650)) ; Cond: $r2 == null 
(define-const var1346 Int (maxSize/-1031466238 var2436)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var1793 Int (ite (> var1346 0) 1 (ite (< var1346 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (not (= var1793 0))) ; Negate: Cond: $b1 == 0  
(define-const var3616 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3616)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3616!1 String)
(assert (= var3616!1 ""))
(assert true)
(define-const var1534 String (append/672562846 var3616!1 "maxsize=")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=") 
(declare-const var3616!2 String)
(assert (= var3616!2 (str.++ var3616!1 "maxsize=")))
(define-const var3139 Int (maxSize/-1031466238 var2436)) ; Statement: $l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var2319 String (var1310_formatBytesCompact/935598214 var3139)) ; Statement: $r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4) 
(assert true)
(define-const var86 String (append/672562846 var1534 var2319)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var1534!1 String)
(assert (= var1534!1 (str.++ var1534 var2319)))
(assert true)
(define-const var2236 String (toString/-2075883882 var86)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var856!2 (cast-from-String-to-String var2236))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35) 

(declare-const var856!3 var1334)
(declare-const var2236!1 String)
(assert true) ; Non Conditional
(define-const var3621 Bool (dumpOnExit/-1031466238 var2436)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var3621 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2199 var3650 (duration/-1031466238 var2436)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var2199 null-var3650)) ; Cond: $r3 == null 
(define-const var495 var3291 (destination/-1031466238 var2436)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var495 null-var3291)) ; Cond: $r4 == null 
(assert true)
(define-const var3210 String (toString/-2140704992 var856!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var687 String var3210) ; Statement: r42 = $r24 
(assert true)
(define-const var1057 Int (length/-134980193 var3210)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var1057 0)) ; Cond: $i2 == 0 
(define-const var2558 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2558)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2558!1 String)
(assert (= var2558!1 ""))
(assert true)
(define-const var2020 String (append/672562846 var2558!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var2558!2 String)
(assert (= var2558!2 (str.++ var2558!1 "Started recording \u0022")))
(assert true)
(define-const var3018 String (getName/-1213682957 var2436)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var3179 String (append/672562846 var2020 var3018)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2020!1 String)
(assert (= var2020!1 (str.++ var2020 var3018)))
(assert true)
(define-const var1308 String (append/672562846 var3179 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var3179!1 String)
(assert (= var3179!1 (str.++ var3179 "\u0022 (")))
(assert true)
(define-const var1222 Int (getId/1256750700 var2436)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var3173 String (append/-901862667 var1308 var1222)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var1308!1 String)
(assert (str.prefixof var1308 var1308!1))
(assert true)
(define-const var3525 String (append/672562846 var3173 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3173!1 String)
(assert (= var3173!1 (str.++ var3173 ") ")))
(assert true)
(define-const var1836 String (append/672562846 var3525 var687)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3525!1 String)
(assert (= var3525!1 (str.++ var3525 var687)))
(assert true)
(define-const var289 String (toString/-2075883882 var1836)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1334-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1310_formatBytesCompact/935598214=([long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var2864=jdk.jfr.internal.PlatformRecording, var2436=r1, var1334=java.util.StringJoiner, var856=$r0, var2658=", ", var2478=$z0, var2383="disk=false", var3650=java.time.Duration, var2921=$r2, var1346=$l0, var1793=$b1, var3616=$r31, var1534=$r33, var3139=$l4, var1310=jdk.jfr.internal.Utils, var2319=$r32, var86=$r34, var2236=$r35, var3621=$z1, var2199=$r3, var3291=jdk.jfr.internal.WriteableUserPath, var495=$r4, var3210=$r24, var687=r42, var1057=$i2, var2558=$r5, var2020=$r7, var3018=$r6, var3179=$r8, var1308=$r9, var1222=$l3, var3173=$r10, var3525=$r11, var1836=$r12, var289=$r13}
; {jdk.jfr.internal.PlatformRecording=var2864, r1=var2436, java.util.StringJoiner=var1334, $r0=var856, ", "=var2658, $z0=var2478, "disk=false"=var2383, java.time.Duration=var3650, $r2=var2921, $l0=var1346, $b1=var1793, $r31=var3616, $r33=var1534, $l4=var3139, jdk.jfr.internal.Utils=var1310, $r32=var2319, $r34=var86, $r35=var2236, $z1=var3621, $r3=var2199, jdk.jfr.internal.WriteableUserPath=var3291, $r4=var495, $r24=var3210, r42=var687, $i2=var1057, $r5=var2558, $r7=var2020, $r6=var3018, $r8=var3179, $r9=var1308, $l3=var1222, $r10=var3173, $r11=var3525, $r12=var1836, $r13=var289}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false");	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=");	$l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35);	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10