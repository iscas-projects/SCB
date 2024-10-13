(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2430 0)
(declare-sort var2175 0)
(declare-sort var3255 0)
(declare-sort var3075 0)
(declare-sort var1185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2175-init () var2175)
(declare-fun <init>/636888916 (var2175 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var2430) Bool)
(declare-fun maxAge/-1031466238 (var2430) var3255)
(declare-fun maxSize/-1031466238 (var2430) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3075_formatBytesCompact/935598214 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var2175 String) var2175)
(declare-fun dumpOnExit/-1031466238 (var2430) Bool)
(declare-fun duration/-1031466238 (var2430) var3255)
(declare-fun destination/-1031466238 (var2430) var1185)
(declare-fun getRealPathText/517857763 (var1185) String)
(declare-fun toString/-2140704992 (var2175) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var2430) String)
(declare-fun getId/1256750700 (var2430) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var2430 var2430)
(declare-const null-var3255 var3255)
(declare-const null-var1185 var1185)
(declare-const var1534 var2430) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1534 null-var2430)))
(define-const var2494 var2175 var2175-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var2494 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var2494!1 var2175)
(declare-const var3761 String)
(define-const var2902 Bool (toDisk/-1031466238 var1534)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var2902 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2803 var3255 (maxAge/-1031466238 var1534)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var2803 null-var3255)) ; Cond: $r2 == null 
(define-const var2065 Int (maxSize/-1031466238 var1534)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var3545 Int (ite (> var2065 0) 1 (ite (< var2065 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (not (= var3545 0))) ; Negate: Cond: $b1 == 0  
(define-const var3513 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3513)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3513!1 String)
(assert (= var3513!1 ""))
(assert true)
(define-const var1076 String (append/672562846 var3513!1 "maxsize=")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=") 
(declare-const var3513!2 String)
(assert (= var3513!2 (str.++ var3513!1 "maxsize=")))
(define-const var502 Int (maxSize/-1031466238 var1534)) ; Statement: $l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var754 String (var3075_formatBytesCompact/935598214 var502)) ; Statement: $r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4) 
(assert true)
(define-const var1781 String (append/672562846 var1076 var754)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var1076!1 String)
(assert (= var1076!1 (str.++ var1076 var754)))
(assert true)
(define-const var673 String (toString/-2075883882 var1781)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var2494!1 (cast-from-String-to-String var673))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35) 

(declare-const var2494!2 var2175)
(declare-const var673!1 String)
(assert true) ; Non Conditional
(define-const var2339 Bool (dumpOnExit/-1031466238 var1534)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var2339 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3875 var3255 (duration/-1031466238 var1534)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var3875 null-var3255)) ; Cond: $r3 == null 
(define-const var2170 var1185 (destination/-1031466238 var1534)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (not (= var2170 null-var1185))) ; Negate: Cond: $r4 == null  
(define-const var3634 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3634)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3634!1 String)
(assert (= var3634!1 ""))
(assert true)
(define-const var1296 String (append/672562846 var3634!1 "filename=")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=") 
(declare-const var3634!2 String)
(assert (= var3634!2 (str.++ var3634!1 "filename=")))
(define-const var1465 var1185 (destination/-1031466238 var1534)) ; Statement: $r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert true)
(define-const var1489 String (getRealPathText/517857763 var1465)) ; Statement: $r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>() 
(assert true)
(define-const var2141 String (append/672562846 var1296 var1489)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1296!1 String)
(assert (= var1296!1 (str.++ var1296 var1489)))
(assert true)
(define-const var2191 String (toString/-2075883882 var2141)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var2494!2 (cast-from-String-to-String var2191))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23) 

(declare-const var2494!3 var2175)
(declare-const var2191!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3613 String (toString/-2140704992 var2494!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var3405 String var3613) ; Statement: r42 = $r24 
(assert true)
(define-const var1748 Int (length/-134980193 var3613)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var1748 0)) ; Cond: $i2 == 0 
(define-const var1736 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1736)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1736!1 String)
(assert (= var1736!1 ""))
(assert true)
(define-const var638 String (append/672562846 var1736!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1736!2 String)
(assert (= var1736!2 (str.++ var1736!1 "Started recording \u0022")))
(assert true)
(define-const var3716 String (getName/-1213682957 var1534)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var1918 String (append/672562846 var638 var3716)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var638!1 String)
(assert (= var638!1 (str.++ var638 var3716)))
(assert true)
(define-const var2977 String (append/672562846 var1918 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var1918!1 String)
(assert (= var1918!1 (str.++ var1918 "\u0022 (")))
(assert true)
(define-const var127 Int (getId/1256750700 var1534)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var142 String (append/-901862667 var2977 var127)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2977!1 String)
(assert (str.prefixof var2977 var2977!1))
(assert true)
(define-const var793 String (append/672562846 var142 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var142!1 String)
(assert (= var142!1 (str.++ var142 ") ")))
(assert true)
(define-const var3342 String (append/672562846 var793 var3405)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var793!1 String)
(assert (= var793!1 (str.++ var793 var3405)))
(assert true)
(define-const var3787 String (toString/-2075883882 var3342)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2175-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3075_formatBytesCompact/935598214=([long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), getRealPathText/517857763=([jdk.jfr.internal.WriteableUserPath], java.lang.String), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var2430=jdk.jfr.internal.PlatformRecording, var1534=r1, var2175=java.util.StringJoiner, var2494=$r0, var3761=", ", var2902=$z0, var3255=java.time.Duration, var2803=$r2, var2065=$l0, var3545=$b1, var3513=$r31, var1076=$r33, var502=$l4, var3075=jdk.jfr.internal.Utils, var754=$r32, var1781=$r34, var673=$r35, var2339=$z1, var3875=$r3, var1185=jdk.jfr.internal.WriteableUserPath, var2170=$r4, var3634=$r18, var1296=$r21, var1465=$r19, var1489=$r20, var2141=$r22, var2191=$r23, var3613=$r24, var3405=r42, var1748=$i2, var1736=$r5, var638=$r7, var3716=$r6, var1918=$r8, var2977=$r9, var127=$l3, var142=$r10, var793=$r11, var3342=$r12, var3787=$r13}
; {jdk.jfr.internal.PlatformRecording=var2430, r1=var1534, java.util.StringJoiner=var2175, $r0=var2494, ", "=var3761, $z0=var2902, java.time.Duration=var3255, $r2=var2803, $l0=var2065, $b1=var3545, $r31=var3513, $r33=var1076, $l4=var502, jdk.jfr.internal.Utils=var3075, $r32=var754, $r34=var1781, $r35=var673, $z1=var2339, $r3=var3875, jdk.jfr.internal.WriteableUserPath=var1185, $r4=var2170, $r18=var3634, $r21=var1296, $r19=var1465, $r20=var1489, $r22=var2141, $r23=var2191, $r24=var3613, r42=var3405, $i2=var1748, $r5=var1736, $r7=var638, $r6=var3716, $r8=var1918, $r9=var2977, $l3=var127, $r10=var142, $r11=var793, $r12=var3342, $r13=var3787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=");	$l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35);	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=");	$r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23);	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10