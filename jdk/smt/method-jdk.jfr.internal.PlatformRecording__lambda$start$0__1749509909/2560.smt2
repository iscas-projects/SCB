(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1614 0)
(declare-sort var171 0)
(declare-sort var2175 0)
(declare-sort var953 0)
(declare-sort var2720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var171-init () var171)
(declare-fun <init>/636888916 (var171 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1614) Bool)
(declare-fun add/953529365 (var171 String) var171)
(declare-fun maxAge/-1031466238 (var1614) var2175)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var953_formatTimespan/-1157398745 (var2175 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun maxSize/-1031466238 (var1614) Int)
(declare-fun dumpOnExit/-1031466238 (var1614) Bool)
(declare-fun duration/-1031466238 (var1614) var2175)
(declare-fun destination/-1031466238 (var1614) var2720)
(declare-fun toString/-2140704992 (var171) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1614) String)
(declare-fun getId/1256750700 (var1614) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1614 var1614)
(declare-const null-var2175 var2175)
(declare-const null-var2720 var2720)
(declare-const var1572 var1614) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1572 null-var1614)))
(define-const var1246 var171 var171-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var1246 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var1246!1 var171)
(declare-const var2941 String)
(define-const var3728 Bool (toDisk/-1031466238 var1572)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (not (= (ite var3728 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (add/953529365 var1246!1 (cast-from-String-to-String "disk=false"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false") 

(declare-const var1246!2 var171)
(declare-const var415 String)
(assert true) ; Non Conditional
(define-const var3067 var2175 (maxAge/-1031466238 var1572)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (not (= var3067 null-var2175))) ; Negate: Cond: $r2 == null  
(define-const var732 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var732)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var732!1 String)
(assert (= var732!1 ""))
(assert true)
(define-const var284 String (append/672562846 var732!1 "maxage=")) ; Statement: $r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=") 
(declare-const var732!2 String)
(assert (= var732!2 (str.++ var732!1 "maxage=")))
(define-const var1084 var2175 (maxAge/-1031466238 var1572)) ; Statement: $r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(define-const var103 String (var953_formatTimespan/-1157398745 var1084 "")) ; Statement: $r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "") 
(assert true)
(define-const var2710 String (append/672562846 var284 var103)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var284!1 String)
(assert (= var284!1 (str.++ var284 var103)))
(assert true)
(define-const var47 String (toString/-2075883882 var2710)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var1246!2 (cast-from-String-to-String var47))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41) 

(declare-const var1246!3 var171)
(declare-const var47!1 String)
(assert true) ; Non Conditional
(define-const var603 Int (maxSize/-1031466238 var1572)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var803 Int (ite (> var603 0) 1 (ite (< var603 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var803 0)) ; Cond: $b1 == 0 
(define-const var2995 Bool (dumpOnExit/-1031466238 var1572)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var2995 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3350 var2175 (duration/-1031466238 var1572)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var3350 null-var2175)) ; Cond: $r3 == null 
(define-const var2495 var2720 (destination/-1031466238 var1572)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var2495 null-var2720)) ; Cond: $r4 == null 
(assert true)
(define-const var187 String (toString/-2140704992 var1246!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var496 String var187) ; Statement: r42 = $r24 
(assert true)
(define-const var2149 Int (length/-134980193 var187)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var2149 0)) ; Cond: $i2 == 0 
(define-const var1913 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1913)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1913!1 String)
(assert (= var1913!1 ""))
(assert true)
(define-const var751 String (append/672562846 var1913!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1913!2 String)
(assert (= var1913!2 (str.++ var1913!1 "Started recording \u0022")))
(assert true)
(define-const var709 String (getName/-1213682957 var1572)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var2242 String (append/672562846 var751 var709)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var751!1 String)
(assert (= var751!1 (str.++ var751 var709)))
(assert true)
(define-const var2754 String (append/672562846 var2242 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var2242!1 String)
(assert (= var2242!1 (str.++ var2242 "\u0022 (")))
(assert true)
(define-const var1000 Int (getId/1256750700 var1572)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var2395 String (append/-901862667 var2754 var1000)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2754!1 String)
(assert (str.prefixof var2754 var2754!1))
(assert true)
(define-const var412 String (append/672562846 var2395 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2395!1 String)
(assert (= var2395!1 (str.++ var2395 ") ")))
(assert true)
(define-const var3359 String (append/672562846 var412 var496)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var412!1 String)
(assert (= var412!1 (str.++ var412 var496)))
(assert true)
(define-const var3415 String (toString/-2075883882 var3359)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var171-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var953_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1614=jdk.jfr.internal.PlatformRecording, var1572=r1, var171=java.util.StringJoiner, var1246=$r0, var2941=", ", var3728=$z0, var415="disk=false", var2175=java.time.Duration, var3067=$r2, var732=$r36, var284=$r39, var1084=$r37, var953=jdk.jfr.internal.Utils, var103=$r38, var2710=$r40, var47=$r41, var603=$l0, var803=$b1, var2995=$z1, var3350=$r3, var2720=jdk.jfr.internal.WriteableUserPath, var2495=$r4, var187=$r24, var496=r42, var2149=$i2, var1913=$r5, var751=$r7, var709=$r6, var2242=$r8, var2754=$r9, var1000=$l3, var2395=$r10, var412=$r11, var3359=$r12, var3415=$r13}
; {jdk.jfr.internal.PlatformRecording=var1614, r1=var1572, java.util.StringJoiner=var171, $r0=var1246, ", "=var2941, $z0=var3728, "disk=false"=var415, java.time.Duration=var2175, $r2=var3067, $r36=var732, $r39=var284, $r37=var1084, jdk.jfr.internal.Utils=var953, $r38=var103, $r40=var2710, $r41=var47, $l0=var603, $b1=var803, $z1=var2995, $r3=var3350, jdk.jfr.internal.WriteableUserPath=var2720, $r4=var2495, $r24=var187, r42=var496, $i2=var2149, $r5=var1913, $r7=var751, $r6=var709, $r8=var2242, $r9=var2754, $l3=var1000, $r10=var2395, $r11=var412, $r12=var3359, $r13=var3415}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false");	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=");	$r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41);	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10