(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2276 0)
(declare-sort var1918 0)
(declare-sort var77 0)
(declare-sort var3698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1918-init () var1918)
(declare-fun <init>/636888916 (var1918 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var2276) Bool)
(declare-fun maxAge/-1031466238 (var2276) var77)
(declare-fun maxSize/-1031466238 (var2276) Int)
(declare-fun dumpOnExit/-1031466238 (var2276) Bool)
(declare-fun add/953529365 (var1918 String) var1918)
(declare-fun duration/-1031466238 (var2276) var77)
(declare-fun destination/-1031466238 (var2276) var3698)
(declare-fun toString/-2140704992 (var1918) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getName/-1213682957 (var2276) String)
(declare-fun getId/1256750700 (var2276) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var2276 var2276)
(declare-const null-var77 var77)
(declare-const null-var3698 var3698)
(declare-const var1398 var2276) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1398 null-var2276)))
(define-const var2305 var1918 var1918-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var2305 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var2305!1 var1918)
(declare-const var847 String)
(define-const var766 Bool (toDisk/-1031466238 var1398)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var766 1 0) 0))) ; Cond: $z0 != 0 
(define-const var317 var77 (maxAge/-1031466238 var1398)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var317 null-var77)) ; Cond: $r2 == null 
(define-const var1305 Int (maxSize/-1031466238 var1398)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var774 Int (ite (> var1305 0) 1 (ite (< var1305 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var774 0)) ; Cond: $b1 == 0 
(define-const var309 Bool (dumpOnExit/-1031466238 var1398)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (not (= (ite var309 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (add/953529365 var2305!1 (cast-from-String-to-String "dumponexit=true"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("dumponexit=true") 

(declare-const var2305!2 var1918)
(declare-const var748 String)
(assert true) ; Non Conditional
(define-const var3824 var77 (duration/-1031466238 var1398)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var3824 null-var77)) ; Cond: $r3 == null 
(define-const var634 var3698 (destination/-1031466238 var1398)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var634 null-var3698)) ; Cond: $r4 == null 
(assert true)
(define-const var1009 String (toString/-2140704992 var2305!2)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var138 String var1009) ; Statement: r42 = $r24 
(assert true)
(define-const var2134 Int (length/-134980193 var1009)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= var2134 0))) ; Negate: Cond: $i2 == 0  
(define-const var686 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var686)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var686!1 String)
(assert (= var686!1 ""))
(assert true)
(define-const var2524 String (append/672562846 var686!1 "{")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var686!2 String)
(assert (= var686!2 (str.++ var686!1 "{")))
(assert true)
(define-const var248 String (append/672562846 var2524 var1009)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2524!1 String)
(assert (= var2524!1 (str.++ var2524 var1009)))
(assert true)
(define-const var1389 String (append/672562846 var248 "}")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var248!1 String)
(assert (= var248!1 (str.++ var248 "}")))
(assert true)
(define-const var138!1 String (toString/-2075883882 var1389)) ; Statement: r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2286 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2286)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2286!1 String)
(assert (= var2286!1 ""))
(assert true)
(define-const var506 String (append/672562846 var2286!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var2286!2 String)
(assert (= var2286!2 (str.++ var2286!1 "Started recording \u0022")))
(assert true)
(define-const var3771 String (getName/-1213682957 var1398)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var2989 String (append/672562846 var506 var3771)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var506!1 String)
(assert (= var506!1 (str.++ var506 var3771)))
(assert true)
(define-const var48 String (append/672562846 var2989 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var2989!1 String)
(assert (= var2989!1 (str.++ var2989 "\u0022 (")))
(assert true)
(define-const var505 Int (getId/1256750700 var1398)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var3685 String (append/-901862667 var48 var505)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var48!1 String)
(assert (str.prefixof var48 var48!1))
(assert true)
(define-const var1650 String (append/672562846 var3685 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3685!1 String)
(assert (= var3685!1 (str.++ var3685 ") ")))
(assert true)
(define-const var2453 String (append/672562846 var1650 var138!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var1650!1 String)
(assert (= var1650!1 (str.++ var1650 var138!1)))
(assert true)
(define-const var2533 String (toString/-2075883882 var2453)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1918-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var2276=jdk.jfr.internal.PlatformRecording, var1398=r1, var1918=java.util.StringJoiner, var2305=$r0, var847=", ", var766=$z0, var77=java.time.Duration, var317=$r2, var1305=$l0, var774=$b1, var309=$z1, var748="dumponexit=true", var3824=$r3, var3698=jdk.jfr.internal.WriteableUserPath, var634=$r4, var1009=$r24, var138=r42, var2134=$i2, var686=$r14, var2524=$r15, var248=$r16, var1389=$r17, var2286=$r5, var506=$r7, var3771=$r6, var2989=$r8, var48=$r9, var505=$l3, var3685=$r10, var1650=$r11, var2453=$r12, var2533=$r13}
; {jdk.jfr.internal.PlatformRecording=var2276, r1=var1398, java.util.StringJoiner=var1918, $r0=var2305, ", "=var847, $z0=var766, java.time.Duration=var77, $r2=var317, $l0=var1305, $b1=var774, $z1=var309, "dumponexit=true"=var748, $r3=var3824, jdk.jfr.internal.WriteableUserPath=var3698, $r4=var634, $r24=var1009, r42=var138, $i2=var2134, $r14=var686, $r15=var2524, $r16=var248, $r17=var1389, $r5=var2286, $r7=var506, $r6=var3771, $r8=var2989, $r9=var48, $l3=var505, $r10=var3685, $r11=var1650, $r12=var2453, $r13=var2533}
;seq <java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("dumponexit=true");	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10