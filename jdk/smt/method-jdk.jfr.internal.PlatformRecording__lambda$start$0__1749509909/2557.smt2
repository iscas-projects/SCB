(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var676 0)
(declare-sort var3864 0)
(declare-sort var2752 0)
(declare-sort var3888 0)
(declare-sort var1675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3864-init () var3864)
(declare-fun <init>/636888916 (var3864 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var676) Bool)
(declare-fun maxAge/-1031466238 (var676) var2752)
(declare-fun maxSize/-1031466238 (var676) Int)
(declare-fun dumpOnExit/-1031466238 (var676) Bool)
(declare-fun duration/-1031466238 (var676) var2752)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3888_formatTimespan/-1157398745 (var2752 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var3864 String) var3864)
(declare-fun destination/-1031466238 (var676) var1675)
(declare-fun toString/-2140704992 (var3864) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var676) String)
(declare-fun getId/1256750700 (var676) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var676 var676)
(declare-const null-var2752 var2752)
(declare-const null-var1675 var1675)
(declare-const var1383 var676) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1383 null-var676)))
(define-const var1365 var3864 var3864-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var1365 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var1365!1 var3864)
(declare-const var1403 String)
(define-const var3910 Bool (toDisk/-1031466238 var1383)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var3910 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3416 var2752 (maxAge/-1031466238 var1383)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var3416 null-var2752)) ; Cond: $r2 == null 
(define-const var3453 Int (maxSize/-1031466238 var1383)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var133 Int (ite (> var3453 0) 1 (ite (< var3453 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var133 0)) ; Cond: $b1 == 0 
(define-const var2828 Bool (dumpOnExit/-1031466238 var1383)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var2828 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3271 var2752 (duration/-1031466238 var1383)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (not (= var3271 null-var2752))) ; Negate: Cond: $r3 == null  
(define-const var1009 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1009)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1009!1 String)
(assert (= var1009!1 ""))
(assert true)
(define-const var2283 String (append/672562846 var1009!1 "duration=")) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=") 
(declare-const var1009!2 String)
(assert (= var1009!2 (str.++ var1009!1 "duration=")))
(define-const var2319 var2752 (duration/-1031466238 var1383)) ; Statement: $r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(define-const var1151 String (var3888_formatTimespan/-1157398745 var2319 "")) ; Statement: $r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "") 
(assert true)
(define-const var1295 String (append/672562846 var2283 var1151)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2283!1 String)
(assert (= var2283!1 (str.++ var2283 var1151)))
(assert true)
(define-const var523 String (toString/-2075883882 var1295)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var1365!1 (cast-from-String-to-String var523))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30) 

(declare-const var1365!2 var3864)
(declare-const var523!1 String)
(assert true) ; Non Conditional
(define-const var678 var1675 (destination/-1031466238 var1383)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var678 null-var1675)) ; Cond: $r4 == null 
(assert true)
(define-const var1538 String (toString/-2140704992 var1365!2)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var2230 String var1538) ; Statement: r42 = $r24 
(assert true)
(define-const var1754 Int (length/-134980193 var1538)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var1754 0)) ; Cond: $i2 == 0 
(define-const var1741 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1741)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1741!1 String)
(assert (= var1741!1 ""))
(assert true)
(define-const var3002 String (append/672562846 var1741!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1741!2 String)
(assert (= var1741!2 (str.++ var1741!1 "Started recording \u0022")))
(assert true)
(define-const var216 String (getName/-1213682957 var1383)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var2054 String (append/672562846 var3002 var216)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3002!1 String)
(assert (= var3002!1 (str.++ var3002 var216)))
(assert true)
(define-const var1263 String (append/672562846 var2054 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var2054!1 String)
(assert (= var2054!1 (str.++ var2054 "\u0022 (")))
(assert true)
(define-const var3048 Int (getId/1256750700 var1383)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var584 String (append/-901862667 var1263 var3048)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var1263!1 String)
(assert (str.prefixof var1263 var1263!1))
(assert true)
(define-const var2566 String (append/672562846 var584 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var584!1 String)
(assert (= var584!1 (str.++ var584 ") ")))
(assert true)
(define-const var750 String (append/672562846 var2566 var2230)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var2566!1 String)
(assert (= var2566!1 (str.++ var2566 var2230)))
(assert true)
(define-const var1563 String (toString/-2075883882 var750)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3864-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3888_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var676=jdk.jfr.internal.PlatformRecording, var1383=r1, var3864=java.util.StringJoiner, var1365=$r0, var1403=", ", var3910=$z0, var2752=java.time.Duration, var3416=$r2, var3453=$l0, var133=$b1, var2828=$z1, var3271=$r3, var1009=$r25, var2283=$r28, var2319=$r26, var3888=jdk.jfr.internal.Utils, var1151=$r27, var1295=$r29, var523=$r30, var1675=jdk.jfr.internal.WriteableUserPath, var678=$r4, var1538=$r24, var2230=r42, var1754=$i2, var1741=$r5, var3002=$r7, var216=$r6, var2054=$r8, var1263=$r9, var3048=$l3, var584=$r10, var2566=$r11, var750=$r12, var1563=$r13}
; {jdk.jfr.internal.PlatformRecording=var676, r1=var1383, java.util.StringJoiner=var3864, $r0=var1365, ", "=var1403, $z0=var3910, java.time.Duration=var2752, $r2=var3416, $l0=var3453, $b1=var133, $z1=var2828, $r3=var3271, $r25=var1009, $r28=var2283, $r26=var2319, jdk.jfr.internal.Utils=var3888, $r27=var1151, $r29=var1295, $r30=var523, jdk.jfr.internal.WriteableUserPath=var1675, $r4=var678, $r24=var1538, r42=var2230, $i2=var1754, $r5=var1741, $r7=var3002, $r6=var216, $r8=var2054, $r9=var1263, $l3=var3048, $r10=var584, $r11=var2566, $r12=var750, $r13=var1563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=");	$r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30);	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 9