(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2238 0)
(declare-sort var657 0)
(declare-sort var1457 0)
(declare-sort var2457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var657-init () var657)
(declare-fun <init>/636888916 (var657 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var2238) Bool)
(declare-fun add/953529365 (var657 String) var657)
(declare-fun maxAge/-1031466238 (var2238) var1457)
(declare-fun maxSize/-1031466238 (var2238) Int)
(declare-fun dumpOnExit/-1031466238 (var2238) Bool)
(declare-fun duration/-1031466238 (var2238) var1457)
(declare-fun destination/-1031466238 (var2238) var2457)
(declare-fun toString/-2140704992 (var657) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1213682957 (var2238) String)
(declare-fun getId/1256750700 (var2238) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2238 var2238)
(declare-const null-var1457 var1457)
(declare-const null-var2457 var2457)
(declare-const var553 var2238) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var553 null-var2238)))
(define-const var3659 var657 var657-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var3659 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var3659!1 var657)
(declare-const var3424 String)
(define-const var2155 Bool (toDisk/-1031466238 var553)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (not (= (ite var2155 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (add/953529365 var3659!1 (cast-from-String-to-String "disk=false"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false") 

(declare-const var3659!2 var657)
(declare-const var1468 String)
(assert true) ; Non Conditional
(define-const var3113 var1457 (maxAge/-1031466238 var553)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var3113 null-var1457)) ; Cond: $r2 == null 
(define-const var3065 Int (maxSize/-1031466238 var553)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var1394 Int (ite (> var3065 0) 1 (ite (< var3065 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var1394 0)) ; Cond: $b1 == 0 
(define-const var2067 Bool (dumpOnExit/-1031466238 var553)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (not (= (ite var2067 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (add/953529365 var3659!2 (cast-from-String-to-String "dumponexit=true"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("dumponexit=true") 

(declare-const var3659!3 var657)
(declare-const var3486 String)
(assert true) ; Non Conditional
(define-const var2449 var1457 (duration/-1031466238 var553)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var2449 null-var1457)) ; Cond: $r3 == null 
(define-const var2788 var2457 (destination/-1031466238 var553)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var2788 null-var2457)) ; Cond: $r4 == null 
(assert true)
(define-const var674 String (toString/-2140704992 var3659!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var3798 String var674) ; Statement: r42 = $r24 
(assert true)
(define-const var3910 Int (length/-134980193 var674)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var3910 0)) ; Cond: $i2 == 0 
(define-const var2354 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2354)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2354!1 String)
(assert (= var2354!1 ""))
(assert true)
(define-const var817 String (append/672562846 var2354!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var2354!2 String)
(assert (= var2354!2 (str.++ var2354!1 "Started recording \u0022")))
(assert true)
(define-const var880 String (getName/-1213682957 var553)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var104 String (append/672562846 var817 var880)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var817!1 String)
(assert (= var817!1 (str.++ var817 var880)))
(assert true)
(define-const var1824 String (append/672562846 var104 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var104!1 String)
(assert (= var104!1 (str.++ var104 "\u0022 (")))
(assert true)
(define-const var1018 Int (getId/1256750700 var553)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var2247 String (append/-901862667 var1824 var1018)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var1824!1 String)
(assert (str.prefixof var1824 var1824!1))
(assert true)
(define-const var1748 String (append/672562846 var2247 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2247!1 String)
(assert (= var2247!1 (str.++ var2247 ") ")))
(assert true)
(define-const var137 String (append/672562846 var1748 var3798)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var1748!1 String)
(assert (= var1748!1 (str.++ var1748 var3798)))
(assert true)
(define-const var2925 String (toString/-2075883882 var137)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var657-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2238=jdk.jfr.internal.PlatformRecording, var553=r1, var657=java.util.StringJoiner, var3659=$r0, var3424=", ", var2155=$z0, var1468="disk=false", var1457=java.time.Duration, var3113=$r2, var3065=$l0, var1394=$b1, var2067=$z1, var3486="dumponexit=true", var2449=$r3, var2457=jdk.jfr.internal.WriteableUserPath, var2788=$r4, var674=$r24, var3798=r42, var3910=$i2, var2354=$r5, var817=$r7, var880=$r6, var104=$r8, var1824=$r9, var1018=$l3, var2247=$r10, var1748=$r11, var137=$r12, var2925=$r13}
; {jdk.jfr.internal.PlatformRecording=var2238, r1=var553, java.util.StringJoiner=var657, $r0=var3659, ", "=var3424, $z0=var2155, "disk=false"=var1468, java.time.Duration=var1457, $r2=var3113, $l0=var3065, $b1=var1394, $z1=var2067, "dumponexit=true"=var3486, $r3=var2449, jdk.jfr.internal.WriteableUserPath=var2457, $r4=var2788, $r24=var674, r42=var3798, $i2=var3910, $r5=var2354, $r7=var817, $r6=var880, $r8=var104, $r9=var1824, $l3=var1018, $r10=var2247, $r11=var1748, $r12=var137, $r13=var2925}
;seq <java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false");	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("dumponexit=true");	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10