(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1701 0)
(declare-sort var3877 0)
(declare-sort var1072 0)
(declare-sort var1996 0)
(declare-sort var1297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3877-init () var3877)
(declare-fun <init>/636888916 (var3877 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1701) Bool)
(declare-fun maxAge/-1031466238 (var1701) var1072)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1996_formatTimespan/-1157398745 (var1072 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var3877 String) var3877)
(declare-fun maxSize/-1031466238 (var1701) Int)
(declare-fun dumpOnExit/-1031466238 (var1701) Bool)
(declare-fun duration/-1031466238 (var1701) var1072)
(declare-fun destination/-1031466238 (var1701) var1297)
(declare-fun toString/-2140704992 (var3877) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1701) String)
(declare-fun getId/1256750700 (var1701) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1701 var1701)
(declare-const null-var1072 var1072)
(declare-const null-var1297 var1297)
(declare-const var1795 var1701) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1795 null-var1701)))
(define-const var1142 var3877 var3877-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var1142 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var1142!1 var3877)
(declare-const var3234 String)
(define-const var2698 Bool (toDisk/-1031466238 var1795)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var2698 1 0) 0))) ; Cond: $z0 != 0 
(define-const var677 var1072 (maxAge/-1031466238 var1795)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (not (= var677 null-var1072))) ; Negate: Cond: $r2 == null  
(define-const var1891 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1891)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1891!1 String)
(assert (= var1891!1 ""))
(assert true)
(define-const var614 String (append/672562846 var1891!1 "maxage=")) ; Statement: $r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=") 
(declare-const var1891!2 String)
(assert (= var1891!2 (str.++ var1891!1 "maxage=")))
(define-const var809 var1072 (maxAge/-1031466238 var1795)) ; Statement: $r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(define-const var1398 String (var1996_formatTimespan/-1157398745 var809 "")) ; Statement: $r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "") 
(assert true)
(define-const var2653 String (append/672562846 var614 var1398)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var614!1 String)
(assert (= var614!1 (str.++ var614 var1398)))
(assert true)
(define-const var1445 String (toString/-2075883882 var2653)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var1142!1 (cast-from-String-to-String var1445))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41) 

(declare-const var1142!2 var3877)
(declare-const var1445!1 String)
(assert true) ; Non Conditional
(define-const var372 Int (maxSize/-1031466238 var1795)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var1244 Int (ite (> var372 0) 1 (ite (< var372 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var1244 0)) ; Cond: $b1 == 0 
(define-const var3004 Bool (dumpOnExit/-1031466238 var1795)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var3004 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2482 var1072 (duration/-1031466238 var1795)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var2482 null-var1072)) ; Cond: $r3 == null 
(define-const var2067 var1297 (destination/-1031466238 var1795)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (= var2067 null-var1297)) ; Cond: $r4 == null 
(assert true)
(define-const var1688 String (toString/-2140704992 var1142!2)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var1975 String var1688) ; Statement: r42 = $r24 
(assert true)
(define-const var1868 Int (length/-134980193 var1688)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= var1868 0))) ; Negate: Cond: $i2 == 0  
(define-const var2953 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2953)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2953!1 String)
(assert (= var2953!1 ""))
(assert true)
(define-const var1051 String (append/672562846 var2953!1 "{")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var2953!2 String)
(assert (= var2953!2 (str.++ var2953!1 "{")))
(assert true)
(define-const var1418 String (append/672562846 var1051 var1688)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1051!1 String)
(assert (= var1051!1 (str.++ var1051 var1688)))
(assert true)
(define-const var2168 String (append/672562846 var1418 "}")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1418!1 String)
(assert (= var1418!1 (str.++ var1418 "}")))
(assert true)
(define-const var1975!1 String (toString/-2075883882 var2168)) ; Statement: r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1905 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1905)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1905!1 String)
(assert (= var1905!1 ""))
(assert true)
(define-const var1870 String (append/672562846 var1905!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1905!2 String)
(assert (= var1905!2 (str.++ var1905!1 "Started recording \u0022")))
(assert true)
(define-const var3679 String (getName/-1213682957 var1795)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var2872 String (append/672562846 var1870 var3679)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1870!1 String)
(assert (= var1870!1 (str.++ var1870 var3679)))
(assert true)
(define-const var3680 String (append/672562846 var2872 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var2872!1 String)
(assert (= var2872!1 (str.++ var2872 "\u0022 (")))
(assert true)
(define-const var3210 Int (getId/1256750700 var1795)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var3530 String (append/-901862667 var3680 var3210)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var3680!1 String)
(assert (str.prefixof var3680 var3680!1))
(assert true)
(define-const var3193 String (append/672562846 var3530 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3530!1 String)
(assert (= var3530!1 (str.++ var3530 ") ")))
(assert true)
(define-const var3135 String (append/672562846 var3193 var1975!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3193!1 String)
(assert (= var3193!1 (str.++ var3193 var1975!1)))
(assert true)
(define-const var618 String (toString/-2075883882 var3135)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3877-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1996_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1701=jdk.jfr.internal.PlatformRecording, var1795=r1, var3877=java.util.StringJoiner, var1142=$r0, var3234=", ", var2698=$z0, var1072=java.time.Duration, var677=$r2, var1891=$r36, var614=$r39, var809=$r37, var1996=jdk.jfr.internal.Utils, var1398=$r38, var2653=$r40, var1445=$r41, var372=$l0, var1244=$b1, var3004=$z1, var2482=$r3, var1297=jdk.jfr.internal.WriteableUserPath, var2067=$r4, var1688=$r24, var1975=r42, var1868=$i2, var2953=$r14, var1051=$r15, var1418=$r16, var2168=$r17, var1905=$r5, var1870=$r7, var3679=$r6, var2872=$r8, var3680=$r9, var3210=$l3, var3530=$r10, var3193=$r11, var3135=$r12, var618=$r13}
; {jdk.jfr.internal.PlatformRecording=var1701, r1=var1795, java.util.StringJoiner=var3877, $r0=var1142, ", "=var3234, $z0=var2698, java.time.Duration=var1072, $r2=var677, $r36=var1891, $r39=var614, $r37=var809, jdk.jfr.internal.Utils=var1996, $r38=var1398, $r40=var2653, $r41=var1445, $l0=var372, $b1=var1244, $z1=var3004, $r3=var2482, jdk.jfr.internal.WriteableUserPath=var1297, $r4=var2067, $r24=var1688, r42=var1975, $i2=var1868, $r14=var2953, $r15=var1051, $r16=var1418, $r17=var2168, $r5=var1905, $r7=var1870, $r6=var3679, $r8=var2872, $r9=var3680, $l3=var3210, $r10=var3530, $r11=var3193, $r12=var3135, $r13=var618}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxage=");	$r37 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r38 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r37, "");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r41);	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10