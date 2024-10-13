(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1524 0)
(declare-sort var1738 0)
(declare-sort var1495 0)
(declare-sort var3944 0)
(declare-sort var3101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1738-init () var1738)
(declare-fun <init>/636888916 (var1738 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1524) Bool)
(declare-fun maxAge/-1031466238 (var1524) var1495)
(declare-fun maxSize/-1031466238 (var1524) Int)
(declare-fun dumpOnExit/-1031466238 (var1524) Bool)
(declare-fun add/953529365 (var1738 String) var1738)
(declare-fun duration/-1031466238 (var1524) var1495)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3944_formatTimespan/-1157398745 (var1495 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun destination/-1031466238 (var1524) var3101)
(declare-fun toString/-2140704992 (var1738) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1524) String)
(declare-fun getId/1256750700 (var1524) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1524 var1524)
(declare-const null-var1495 var1495)
(declare-const null-var3101 var3101)
(declare-const var429 var1524) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var429 null-var1524)))
(define-const var2203 var1738 var1738-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var2203 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var2203!1 var1738)
(declare-const var2958 String)
(define-const var3737 Bool (toDisk/-1031466238 var429)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var3737 1 0) 0))) ; Cond: $z0 != 0 
(define-const var315 var1495 (maxAge/-1031466238 var429)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var315 null-var1495)) ; Cond: $r2 == null 
(define-const var1208 Int (maxSize/-1031466238 var429)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var226 Int (ite (> var1208 0) 1 (ite (< var1208 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var226 0)) ; Cond: $b1 == 0 
(define-const var3451 Bool (dumpOnExit/-1031466238 var429)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (not (= (ite var3451 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (add/953529365 var2203!1 (cast-from-String-to-String "dumponexit=true"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("dumponexit=true") 

(declare-const var2203!2 var1738)
(declare-const var369 String)
(assert true) ; Non Conditional
(define-const var3099 var1495 (duration/-1031466238 var429)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (not (= var3099 null-var1495))) ; Negate: Cond: $r3 == null  
(define-const var2281 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2281)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2281!1 String)
(assert (= var2281!1 ""))
(assert true)
(define-const var798 String (append/672562846 var2281!1 "duration=")) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=") 
(declare-const var2281!2 String)
(assert (= var2281!2 (str.++ var2281!1 "duration=")))
(define-const var3293 var1495 (duration/-1031466238 var429)) ; Statement: $r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(define-const var457 String (var3944_formatTimespan/-1157398745 var3293 "")) ; Statement: $r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "") 
(assert true)
(define-const var878 String (append/672562846 var798 var457)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var798!1 String)
(assert (= var798!1 (str.++ var798 var457)))
(assert true)
(define-const var3341 String (toString/-2075883882 var878)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var2203!2 (cast-from-String-to-String var3341))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30) 

(declare-const var2203!3 var1738)
(declare-const var3341!1 String)
(assert true) ; Non Conditional
(define-const var750 var3101 (destination/-1031466238 var429)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var750 null-var3101)) ; Cond: $r4 == null 
(assert true)
(define-const var2307 String (toString/-2140704992 var2203!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var2226 String var2307) ; Statement: r42 = $r24 
(assert true)
(define-const var2572 Int (length/-134980193 var2307)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var2572 0)) ; Cond: $i2 == 0 
(define-const var977 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var977)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var977!1 String)
(assert (= var977!1 ""))
(assert true)
(define-const var3559 String (append/672562846 var977!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var977!2 String)
(assert (= var977!2 (str.++ var977!1 "Started recording \u0022")))
(assert true)
(define-const var3206 String (getName/-1213682957 var429)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var3122 String (append/672562846 var3559 var3206)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3559!1 String)
(assert (= var3559!1 (str.++ var3559 var3206)))
(assert true)
(define-const var2835 String (append/672562846 var3122 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var3122!1 String)
(assert (= var3122!1 (str.++ var3122 "\u0022 (")))
(assert true)
(define-const var2783 Int (getId/1256750700 var429)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var3076 String (append/-901862667 var2835 var2783)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2835!1 String)
(assert (str.prefixof var2835 var2835!1))
(assert true)
(define-const var3277 String (append/672562846 var3076 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3076!1 String)
(assert (= var3076!1 (str.++ var3076 ") ")))
(assert true)
(define-const var483 String (append/672562846 var3277 var2226)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3277!1 String)
(assert (= var3277!1 (str.++ var3277 var2226)))
(assert true)
(define-const var581 String (toString/-2075883882 var483)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1738-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3944_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1524=jdk.jfr.internal.PlatformRecording, var429=r1, var1738=java.util.StringJoiner, var2203=$r0, var2958=", ", var3737=$z0, var1495=java.time.Duration, var315=$r2, var1208=$l0, var226=$b1, var3451=$z1, var369="dumponexit=true", var3099=$r3, var2281=$r25, var798=$r28, var3293=$r26, var3944=jdk.jfr.internal.Utils, var457=$r27, var878=$r29, var3341=$r30, var3101=jdk.jfr.internal.WriteableUserPath, var750=$r4, var2307=$r24, var2226=r42, var2572=$i2, var977=$r5, var3559=$r7, var3206=$r6, var3122=$r8, var2835=$r9, var2783=$l3, var3076=$r10, var3277=$r11, var483=$r12, var581=$r13}
; {jdk.jfr.internal.PlatformRecording=var1524, r1=var429, java.util.StringJoiner=var1738, $r0=var2203, ", "=var2958, $z0=var3737, java.time.Duration=var1495, $r2=var315, $l0=var1208, $b1=var226, $z1=var3451, "dumponexit=true"=var369, $r3=var3099, $r25=var2281, $r28=var798, $r26=var3293, jdk.jfr.internal.Utils=var3944, $r27=var457, $r29=var878, $r30=var3341, jdk.jfr.internal.WriteableUserPath=var3101, $r4=var750, $r24=var2307, r42=var2226, $i2=var2572, $r5=var977, $r7=var3559, $r6=var3206, $r8=var3122, $r9=var2835, $l3=var2783, $r10=var3076, $r11=var3277, $r12=var483, $r13=var581}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("dumponexit=true");	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=");	$r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30);	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10