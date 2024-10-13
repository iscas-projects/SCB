(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3783 0)
(declare-sort var1208 0)
(declare-sort var291 0)
(declare-sort var3496 0)
(declare-sort var141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1208-init () var1208)
(declare-fun <init>/636888916 (var1208 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var3783) Bool)
(declare-fun maxAge/-1031466238 (var3783) var291)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3496_formatTimespan/-1157398745 (var291 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var1208 String) var1208)
(declare-fun maxSize/-1031466238 (var3783) Int)
(declare-fun var3496_formatBytesCompact/935598214 (Int) String)
(declare-fun dumpOnExit/-1031466238 (var3783) Bool)
(declare-fun duration/-1031466238 (var3783) var291)
(declare-fun destination/-1031466238 (var3783) var141)
(declare-fun toString/-2140704992 (var1208) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var3783) String)
(declare-fun getId/1256750700 (var3783) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var3783 var3783)
(declare-const null-var291 var291)
(declare-const null-var141 var141)
(declare-const var3959 var3783) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var3959 null-var3783)))
(define-const var2983 var1208 var1208-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var2983 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var2983!1 var1208)
(declare-const var3799 String)
(define-const var3750 Bool (toDisk/-1031466238 var3959)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var3750 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2102 var291 (maxAge/-1031466238 var3959)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (not (= var2102 null-var291))) ; Negate: Cond: $r2 == null  
(define-const var2606 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2606)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2606!1 String)
(assert (= var2606!1 ""))
(assert true)
(define-const var483 String (append/672562846 var2606!1 "maxage=")) ; Statement: $r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=") 
(declare-const var2606!2 String)
(assert (= var2606!2 (str.++ var2606!1 "maxage=")))
(define-const var1421 var291 (maxAge/-1031466238 var3959)) ; Statement: $r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(define-const var312 String (var3496_formatTimespan/-1157398745 var1421 "")) ; Statement: $r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "") 
(assert true)
(define-const var2118 String (append/672562846 var483 var312)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var483!1 String)
(assert (= var483!1 (str.++ var483 var312)))
(assert true)
(define-const var1934 String (toString/-2075883882 var2118)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var2983!1 (cast-from-String-to-String var1934))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41) 

(declare-const var2983!2 var1208)
(declare-const var1934!1 String)
(assert true) ; Non Conditional
(define-const var2465 Int (maxSize/-1031466238 var3959)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var2622 Int (ite (> var2465 0) 1 (ite (< var2465 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (not (= var2622 0))) ; Negate: Cond: $b1 == 0  
(define-const var1111 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1111)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1111!1 String)
(assert (= var1111!1 ""))
(assert true)
(define-const var965 String (append/672562846 var1111!1 "maxsize=")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=") 
(declare-const var1111!2 String)
(assert (= var1111!2 (str.++ var1111!1 "maxsize=")))
(define-const var296 Int (maxSize/-1031466238 var3959)) ; Statement: $l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var1325 String (var3496_formatBytesCompact/935598214 var296)) ; Statement: $r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4) 
(assert true)
(define-const var2613 String (append/672562846 var965 var1325)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var965!1 String)
(assert (= var965!1 (str.++ var965 var1325)))
(assert true)
(define-const var2567 String (toString/-2075883882 var2613)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var2983!2 (cast-from-String-to-String var2567))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35) 

(declare-const var2983!3 var1208)
(declare-const var2567!1 String)
(assert true) ; Non Conditional
(define-const var1732 Bool (dumpOnExit/-1031466238 var3959)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var1732 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1538 var291 (duration/-1031466238 var3959)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var1538 null-var291)) ; Cond: $r3 == null 
(define-const var3898 var141 (destination/-1031466238 var3959)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var3898 null-var141)) ; Cond: $r4 == null 
(assert true)
(define-const var3717 String (toString/-2140704992 var2983!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var1961 String var3717) ; Statement: r42 = $r24 
(assert true)
(define-const var2054 Int (length/-134980193 var3717)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var2054 0)) ; Cond: $i2 == 0 
(define-const var2139 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2139)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2139!1 String)
(assert (= var2139!1 ""))
(assert true)
(define-const var953 String (append/672562846 var2139!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var2139!2 String)
(assert (= var2139!2 (str.++ var2139!1 "Started recording \u0022")))
(assert true)
(define-const var3796 String (getName/-1213682957 var3959)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var2297 String (append/672562846 var953 var3796)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var953!1 String)
(assert (= var953!1 (str.++ var953 var3796)))
(assert true)
(define-const var830 String (append/672562846 var2297 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var2297!1 String)
(assert (= var2297!1 (str.++ var2297 "\u0022 (")))
(assert true)
(define-const var3905 Int (getId/1256750700 var3959)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var1519 String (append/-901862667 var830 var3905)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var830!1 String)
(assert (str.prefixof var830 var830!1))
(assert true)
(define-const var26 String (append/672562846 var1519 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var1519!1 String)
(assert (= var1519!1 (str.++ var1519 ") ")))
(assert true)
(define-const var1365 String (append/672562846 var26 var1961)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var26!1 String)
(assert (= var26!1 (str.++ var26 var1961)))
(assert true)
(define-const var2141 String (toString/-2075883882 var1365)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1208-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3496_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), var3496_formatBytesCompact/935598214=([long], java.lang.String), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var3783=jdk.jfr.internal.PlatformRecording, var3959=r1, var1208=java.util.StringJoiner, var2983=$r0, var3799=", ", var3750=$z0, var291=java.time.Duration, var2102=$r2, var2606=$r36, var483=$r39, var1421=$r37, var3496=jdk.jfr.internal.Utils, var312=$r38, var2118=$r40, var1934=$r41, var2465=$l0, var2622=$b1, var1111=$r31, var965=$r33, var296=$l4, var1325=$r32, var2613=$r34, var2567=$r35, var1732=$z1, var1538=$r3, var141=jdk.jfr.internal.WriteableUserPath, var3898=$r4, var3717=$r24, var1961=r42, var2054=$i2, var2139=$r5, var953=$r7, var3796=$r6, var2297=$r8, var830=$r9, var3905=$l3, var1519=$r10, var26=$r11, var1365=$r12, var2141=$r13}
; {jdk.jfr.internal.PlatformRecording=var3783, r1=var3959, java.util.StringJoiner=var1208, $r0=var2983, ", "=var3799, $z0=var3750, java.time.Duration=var291, $r2=var2102, $r36=var2606, $r39=var483, $r37=var1421, jdk.jfr.internal.Utils=var3496, $r38=var312, $r40=var2118, $r41=var1934, $l0=var2465, $b1=var2622, $r31=var1111, $r33=var965, $l4=var296, $r32=var1325, $r34=var2613, $r35=var2567, $z1=var1732, $r3=var1538, jdk.jfr.internal.WriteableUserPath=var141, $r4=var3898, $r24=var3717, r42=var1961, $i2=var2054, $r5=var2139, $r7=var953, $r6=var3796, $r8=var2297, $r9=var830, $l3=var3905, $r10=var1519, $r11=var26, $r12=var1365, $r13=var2141}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=");	$r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41);	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxsize=");	$l4 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r32 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatBytesCompact(long)>($l4);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r35);	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10