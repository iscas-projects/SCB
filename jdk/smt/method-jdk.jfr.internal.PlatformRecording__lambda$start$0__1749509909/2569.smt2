(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1712 0)
(declare-sort var3120 0)
(declare-sort var2068 0)
(declare-sort var3322 0)
(declare-sort var2990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3120-init () var3120)
(declare-fun <init>/636888916 (var3120 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1712) Bool)
(declare-fun maxAge/-1031466238 (var1712) var2068)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3322_formatTimespan/-1157398745 (var2068 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var3120 String) var3120)
(declare-fun maxSize/-1031466238 (var1712) Int)
(declare-fun dumpOnExit/-1031466238 (var1712) Bool)
(declare-fun duration/-1031466238 (var1712) var2068)
(declare-fun destination/-1031466238 (var1712) var2990)
(declare-fun getRealPathText/517857763 (var2990) String)
(declare-fun toString/-2140704992 (var3120) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1712) String)
(declare-fun getId/1256750700 (var1712) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1712 var1712)
(declare-const null-var2068 var2068)
(declare-const null-var2990 var2990)
(declare-const var3238 var1712) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var3238 null-var1712)))
(define-const var231 var3120 var3120-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var231 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var231!1 var3120)
(declare-const var2201 String)
(define-const var3622 Bool (toDisk/-1031466238 var3238)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var3622 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3833 var2068 (maxAge/-1031466238 var3238)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (not (= var3833 null-var2068))) ; Negate: Cond: $r2 == null  
(define-const var1701 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1701)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1701!1 String)
(assert (= var1701!1 ""))
(assert true)
(define-const var373 String (append/672562846 var1701!1 "maxage=")) ; Statement: $r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=") 
(declare-const var1701!2 String)
(assert (= var1701!2 (str.++ var1701!1 "maxage=")))
(define-const var768 var2068 (maxAge/-1031466238 var3238)) ; Statement: $r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(define-const var3563 String (var3322_formatTimespan/-1157398745 var768 "")) ; Statement: $r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "") 
(assert true)
(define-const var2338 String (append/672562846 var373 var3563)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var373!1 String)
(assert (= var373!1 (str.++ var373 var3563)))
(assert true)
(define-const var1046 String (toString/-2075883882 var2338)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var231!1 (cast-from-String-to-String var1046))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41) 

(declare-const var231!2 var3120)
(declare-const var1046!1 String)
(assert true) ; Non Conditional
(define-const var3367 Int (maxSize/-1031466238 var3238)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var682 Int (ite (> var3367 0) 1 (ite (< var3367 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var682 0)) ; Cond: $b1 == 0 
(define-const var1865 Bool (dumpOnExit/-1031466238 var3238)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var1865 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1887 var2068 (duration/-1031466238 var3238)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var1887 null-var2068)) ; Cond: $r3 == null 
(define-const var3645 var2990 (destination/-1031466238 var3238)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (not (= var3645 null-var2990))) ; Negate: Cond: $r4 == null  
(define-const var1630 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1630)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1630!1 String)
(assert (= var1630!1 ""))
(assert true)
(define-const var2568 String (append/672562846 var1630!1 "filename=")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=") 
(declare-const var1630!2 String)
(assert (= var1630!2 (str.++ var1630!1 "filename=")))
(define-const var3505 var2990 (destination/-1031466238 var3238)) ; Statement: $r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert true)
(define-const var763 String (getRealPathText/517857763 var3505)) ; Statement: $r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>() 
(assert true)
(define-const var2690 String (append/672562846 var2568 var763)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2568!1 String)
(assert (= var2568!1 (str.++ var2568 var763)))
(assert true)
(define-const var688 String (toString/-2075883882 var2690)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var231!2 (cast-from-String-to-String var688))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23) 

(declare-const var231!3 var3120)
(declare-const var688!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2097 String (toString/-2140704992 var231!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var345 String var2097) ; Statement: r42 = $r24 
(assert true)
(define-const var3666 Int (length/-134980193 var2097)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var3666 0)) ; Cond: $i2 == 0 
(define-const var1142 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1142)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1142!1 String)
(assert (= var1142!1 ""))
(assert true)
(define-const var1703 String (append/672562846 var1142!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1142!2 String)
(assert (= var1142!2 (str.++ var1142!1 "Started recording \u0022")))
(assert true)
(define-const var3227 String (getName/-1213682957 var3238)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var1964 String (append/672562846 var1703 var3227)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1703!1 String)
(assert (= var1703!1 (str.++ var1703 var3227)))
(assert true)
(define-const var2780 String (append/672562846 var1964 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var1964!1 String)
(assert (= var1964!1 (str.++ var1964 "\u0022 (")))
(assert true)
(define-const var419 Int (getId/1256750700 var3238)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var2303 String (append/-901862667 var2780 var419)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2780!1 String)
(assert (str.prefixof var2780 var2780!1))
(assert true)
(define-const var1145 String (append/672562846 var2303 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2303!1 String)
(assert (= var2303!1 (str.++ var2303 ") ")))
(assert true)
(define-const var1301 String (append/672562846 var1145 var345)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var1145!1 String)
(assert (= var1145!1 (str.++ var1145 var345)))
(assert true)
(define-const var2412 String (toString/-2075883882 var1301)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3120-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3322_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), getRealPathText/517857763=([jdk.jfr.internal.WriteableUserPath], java.lang.String), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1712=jdk.jfr.internal.PlatformRecording, var3238=r1, var3120=java.util.StringJoiner, var231=$r0, var2201=", ", var3622=$z0, var2068=java.time.Duration, var3833=$r2, var1701=$r36, var373=$r39, var768=$r37, var3322=jdk.jfr.internal.Utils, var3563=$r38, var2338=$r40, var1046=$r41, var3367=$l0, var682=$b1, var1865=$z1, var1887=$r3, var2990=jdk.jfr.internal.WriteableUserPath, var3645=$r4, var1630=$r18, var2568=$r21, var3505=$r19, var763=$r20, var2690=$r22, var688=$r23, var2097=$r24, var345=r42, var3666=$i2, var1142=$r5, var1703=$r7, var3227=$r6, var1964=$r8, var2780=$r9, var419=$l3, var2303=$r10, var1145=$r11, var1301=$r12, var2412=$r13}
; {jdk.jfr.internal.PlatformRecording=var1712, r1=var3238, java.util.StringJoiner=var3120, $r0=var231, ", "=var2201, $z0=var3622, java.time.Duration=var2068, $r2=var3833, $r36=var1701, $r39=var373, $r37=var768, jdk.jfr.internal.Utils=var3322, $r38=var3563, $r40=var2338, $r41=var1046, $l0=var3367, $b1=var682, $z1=var1865, $r3=var1887, jdk.jfr.internal.WriteableUserPath=var2990, $r4=var3645, $r18=var1630, $r21=var2568, $r19=var3505, $r20=var763, $r22=var2690, $r23=var688, $r24=var2097, r42=var345, $i2=var3666, $r5=var1142, $r7=var1703, $r6=var3227, $r8=var1964, $r9=var2780, $l3=var419, $r10=var2303, $r11=var1145, $r12=var1301, $r13=var2412}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=");	$r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41);	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=");	$r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23);	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10