(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1892 0)
(declare-sort var897 0)
(declare-sort var2166 0)
(declare-sort var262 0)
(declare-sort var2496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var897-init () var897)
(declare-fun <init>/636888916 (var897 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1892) Bool)
(declare-fun maxAge/-1031466238 (var1892) var2166)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var262_formatTimespan/-1157398745 (var2166 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var897 String) var897)
(declare-fun maxSize/-1031466238 (var1892) Int)
(declare-fun dumpOnExit/-1031466238 (var1892) Bool)
(declare-fun duration/-1031466238 (var1892) var2166)
(declare-fun destination/-1031466238 (var1892) var2496)
(declare-fun toString/-2140704992 (var897) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1892) String)
(declare-fun getId/1256750700 (var1892) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1892 var1892)
(declare-const null-var2166 var2166)
(declare-const null-var2496 var2496)
(declare-const var882 var1892) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var882 null-var1892)))
(define-const var645 var897 var897-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var645 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var645!1 var897)
(declare-const var2721 String)
(define-const var402 Bool (toDisk/-1031466238 var882)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var402 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1726 var2166 (maxAge/-1031466238 var882)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (not (= var1726 null-var2166))) ; Negate: Cond: $r2 == null  
(define-const var1682 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1682)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1682!1 String)
(assert (= var1682!1 ""))
(assert true)
(define-const var3843 String (append/672562846 var1682!1 "maxage=")) ; Statement: $r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=") 
(declare-const var1682!2 String)
(assert (= var1682!2 (str.++ var1682!1 "maxage=")))
(define-const var2223 var2166 (maxAge/-1031466238 var882)) ; Statement: $r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(define-const var3156 String (var262_formatTimespan/-1157398745 var2223 "")) ; Statement: $r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "") 
(assert true)
(define-const var125 String (append/672562846 var3843 var3156)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var3843!1 String)
(assert (= var3843!1 (str.++ var3843 var3156)))
(assert true)
(define-const var1486 String (toString/-2075883882 var125)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var645!1 (cast-from-String-to-String var1486))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41) 

(declare-const var645!2 var897)
(declare-const var1486!1 String)
(assert true) ; Non Conditional
(define-const var2973 Int (maxSize/-1031466238 var882)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var3256 Int (ite (> var2973 0) 1 (ite (< var2973 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var3256 0)) ; Cond: $b1 == 0 
(define-const var1292 Bool (dumpOnExit/-1031466238 var882)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var1292 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2127 var2166 (duration/-1031466238 var882)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var2127 null-var2166)) ; Cond: $r3 == null 
(define-const var339 var2496 (destination/-1031466238 var882)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var339 null-var2496)) ; Cond: $r4 == null 
(assert true)
(define-const var3728 String (toString/-2140704992 var645!2)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var773 String var3728) ; Statement: r42 = $r24 
(assert true)
(define-const var2782 Int (length/-134980193 var3728)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var2782 0)) ; Cond: $i2 == 0 
(define-const var2430 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2430)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2430!1 String)
(assert (= var2430!1 ""))
(assert true)
(define-const var1288 String (append/672562846 var2430!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var2430!2 String)
(assert (= var2430!2 (str.++ var2430!1 "Started recording \u0022")))
(assert true)
(define-const var3030 String (getName/-1213682957 var882)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var1551 String (append/672562846 var1288 var3030)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 var3030)))
(assert true)
(define-const var3633 String (append/672562846 var1551 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var1551!1 String)
(assert (= var1551!1 (str.++ var1551 "\u0022 (")))
(assert true)
(define-const var1094 Int (getId/1256750700 var882)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var800 String (append/-901862667 var3633 var1094)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var3633!1 String)
(assert (str.prefixof var3633 var3633!1))
(assert true)
(define-const var1827 String (append/672562846 var800 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var800!1 String)
(assert (= var800!1 (str.++ var800 ") ")))
(assert true)
(define-const var3929 String (append/672562846 var1827 var773)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var1827!1 String)
(assert (= var1827!1 (str.++ var1827 var773)))
(assert true)
(define-const var2713 String (toString/-2075883882 var3929)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var897-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var262_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1892=jdk.jfr.internal.PlatformRecording, var882=r1, var897=java.util.StringJoiner, var645=$r0, var2721=", ", var402=$z0, var2166=java.time.Duration, var1726=$r2, var1682=$r36, var3843=$r39, var2223=$r37, var262=jdk.jfr.internal.Utils, var3156=$r38, var125=$r40, var1486=$r41, var2973=$l0, var3256=$b1, var1292=$z1, var2127=$r3, var2496=jdk.jfr.internal.WriteableUserPath, var339=$r4, var3728=$r24, var773=r42, var2782=$i2, var2430=$r5, var1288=$r7, var3030=$r6, var1551=$r8, var3633=$r9, var1094=$l3, var800=$r10, var1827=$r11, var3929=$r12, var2713=$r13}
; {jdk.jfr.internal.PlatformRecording=var1892, r1=var882, java.util.StringJoiner=var897, $r0=var645, ", "=var2721, $z0=var402, java.time.Duration=var2166, $r2=var1726, $r36=var1682, $r39=var3843, $r37=var2223, jdk.jfr.internal.Utils=var262, $r38=var3156, $r40=var125, $r41=var1486, $l0=var2973, $b1=var3256, $z1=var1292, $r3=var2127, jdk.jfr.internal.WriteableUserPath=var2496, $r4=var339, $r24=var3728, r42=var773, $i2=var2782, $r5=var2430, $r7=var1288, $r6=var3030, $r8=var1551, $r9=var3633, $l3=var1094, $r10=var800, $r11=var1827, $r12=var3929, $r13=var2713}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=");	$r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41);	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 9