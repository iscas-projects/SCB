(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1342 0)
(declare-sort var3396 0)
(declare-sort var2396 0)
(declare-sort var1508 0)
(declare-sort var462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3396-init () var3396)
(declare-fun <init>/636888916 (var3396 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1342) Bool)
(declare-fun maxAge/-1031466238 (var1342) var2396)
(declare-fun maxSize/-1031466238 (var1342) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1508_formatBytesCompact/935598214 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var3396 String) var3396)
(declare-fun dumpOnExit/-1031466238 (var1342) Bool)
(declare-fun duration/-1031466238 (var1342) var2396)
(declare-fun destination/-1031466238 (var1342) var462)
(declare-fun toString/-2140704992 (var3396) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1342) String)
(declare-fun getId/1256750700 (var1342) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1342 var1342)
(declare-const null-var2396 var2396)
(declare-const null-var462 var462)
(declare-const var1214 var1342) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1214 null-var1342)))
(define-const var3732 var3396 var3396-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var3732 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var3732!1 var3396)
(declare-const var2755 String)
(define-const var783 Bool (toDisk/-1031466238 var1214)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var783 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1085 var2396 (maxAge/-1031466238 var1214)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var1085 null-var2396)) ; Cond: $r2 == null 
(define-const var395 Int (maxSize/-1031466238 var1214)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var1354 Int (ite (> var395 0) 1 (ite (< var395 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (not (= var1354 0))) ; Negate: Cond: $b1 == 0  
(define-const var2719 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2719)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2719!1 String)
(assert (= var2719!1 ""))
(assert true)
(define-const var2636 String (append/672562846 var2719!1 "maxsize=")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=") 
(declare-const var2719!2 String)
(assert (= var2719!2 (str.++ var2719!1 "maxsize=")))
(define-const var206 Int (maxSize/-1031466238 var1214)) ; Statement: $l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var169 String (var1508_formatBytesCompact/935598214 var206)) ; Statement: $r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4) 
(assert true)
(define-const var1487 String (append/672562846 var2636 var169)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var2636!1 String)
(assert (= var2636!1 (str.++ var2636 var169)))
(assert true)
(define-const var2491 String (toString/-2075883882 var1487)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var3732!1 (cast-from-String-to-String var2491))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35) 

(declare-const var3732!2 var3396)
(declare-const var2491!1 String)
(assert true) ; Non Conditional
(define-const var3361 Bool (dumpOnExit/-1031466238 var1214)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (not (= (ite var3361 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (add/953529365 var3732!2 (cast-from-String-to-String "dumponexit=true"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("dumponexit=true") 

(declare-const var3732!3 var3396)
(declare-const var2152 String)
(assert true) ; Non Conditional
(define-const var3274 var2396 (duration/-1031466238 var1214)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var3274 null-var2396)) ; Cond: $r3 == null 
(define-const var3667 var462 (destination/-1031466238 var1214)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var3667 null-var462)) ; Cond: $r4 == null 
(assert true)
(define-const var1667 String (toString/-2140704992 var3732!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var2893 String var1667) ; Statement: r42 = $r24 
(assert true)
(define-const var927 Int (length/-134980193 var1667)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var927 0)) ; Cond: $i2 == 0 
(define-const var2138 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2138)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2138!1 String)
(assert (= var2138!1 ""))
(assert true)
(define-const var2609 String (append/672562846 var2138!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var2138!2 String)
(assert (= var2138!2 (str.++ var2138!1 "Started recording \u0022")))
(assert true)
(define-const var3475 String (getName/-1213682957 var1214)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var2653 String (append/672562846 var2609 var3475)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2609!1 String)
(assert (= var2609!1 (str.++ var2609 var3475)))
(assert true)
(define-const var361 String (append/672562846 var2653 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var2653!1 String)
(assert (= var2653!1 (str.++ var2653 "\u0022 (")))
(assert true)
(define-const var1091 Int (getId/1256750700 var1214)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var3986 String (append/-901862667 var361 var1091)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var361!1 String)
(assert (str.prefixof var361 var361!1))
(assert true)
(define-const var52 String (append/672562846 var3986 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3986!1 String)
(assert (= var3986!1 (str.++ var3986 ") ")))
(assert true)
(define-const var1659 String (append/672562846 var52 var2893)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var52!1 String)
(assert (= var52!1 (str.++ var52 var2893)))
(assert true)
(define-const var3606 String (toString/-2075883882 var1659)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3396-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1508_formatBytesCompact/935598214=([long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1342=jdk.jfr.internal.PlatformRecording, var1214=r1, var3396=java.util.StringJoiner, var3732=$r0, var2755=", ", var783=$z0, var2396=java.time.Duration, var1085=$r2, var395=$l0, var1354=$b1, var2719=$r31, var2636=$r33, var206=$l4, var1508=jdk.jfr.internal.Utils, var169=$r32, var1487=$r34, var2491=$r35, var3361=$z1, var2152="dumponexit=true", var3274=$r3, var462=jdk.jfr.internal.WriteableUserPath, var3667=$r4, var1667=$r24, var2893=r42, var927=$i2, var2138=$r5, var2609=$r7, var3475=$r6, var2653=$r8, var361=$r9, var1091=$l3, var3986=$r10, var52=$r11, var1659=$r12, var3606=$r13}
; {jdk.jfr.internal.PlatformRecording=var1342, r1=var1214, java.util.StringJoiner=var3396, $r0=var3732, ", "=var2755, $z0=var783, java.time.Duration=var2396, $r2=var1085, $l0=var395, $b1=var1354, $r31=var2719, $r33=var2636, $l4=var206, jdk.jfr.internal.Utils=var1508, $r32=var169, $r34=var1487, $r35=var2491, $z1=var3361, "dumponexit=true"=var2152, $r3=var3274, jdk.jfr.internal.WriteableUserPath=var462, $r4=var3667, $r24=var1667, r42=var2893, $i2=var927, $r5=var2138, $r7=var2609, $r6=var3475, $r8=var2653, $r9=var361, $l3=var1091, $r10=var3986, $r11=var52, $r12=var1659, $r13=var3606}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=");	$l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35);	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("dumponexit=true");	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10