(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1323 0)
(declare-sort var2947 0)
(declare-sort var2841 0)
(declare-sort var546 0)
(declare-sort var3957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2947-init () var2947)
(declare-fun <init>/636888916 (var2947 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1323) Bool)
(declare-fun maxAge/-1031466238 (var1323) var2841)
(declare-fun maxSize/-1031466238 (var1323) Int)
(declare-fun dumpOnExit/-1031466238 (var1323) Bool)
(declare-fun duration/-1031466238 (var1323) var2841)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var546_formatTimespan/-1157398745 (var2841 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var2947 String) var2947)
(declare-fun destination/-1031466238 (var1323) var3957)
(declare-fun getRealPathText/517857763 (var3957) String)
(declare-fun toString/-2140704992 (var2947) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1323) String)
(declare-fun getId/1256750700 (var1323) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1323 var1323)
(declare-const null-var2841 var2841)
(declare-const null-var3957 var3957)
(declare-const var25 var1323) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var25 null-var1323)))
(define-const var127 var2947 var2947-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var127 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var127!1 var2947)
(declare-const var3651 String)
(define-const var3640 Bool (toDisk/-1031466238 var25)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var3640 1 0) 0))) ; Cond: $z0 != 0 
(define-const var355 var2841 (maxAge/-1031466238 var25)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var355 null-var2841)) ; Cond: $r2 == null 
(define-const var3171 Int (maxSize/-1031466238 var25)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var2671 Int (ite (> var3171 0) 1 (ite (< var3171 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var2671 0)) ; Cond: $b1 == 0 
(define-const var1217 Bool (dumpOnExit/-1031466238 var25)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var1217 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1559 var2841 (duration/-1031466238 var25)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (not (= var1559 null-var2841))) ; Negate: Cond: $r3 == null  
(define-const var3261 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3261)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3261!1 String)
(assert (= var3261!1 ""))
(assert true)
(define-const var1516 String (append/672562846 var3261!1 "duration=")) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=") 
(declare-const var3261!2 String)
(assert (= var3261!2 (str.++ var3261!1 "duration=")))
(define-const var3509 var2841 (duration/-1031466238 var25)) ; Statement: $r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(define-const var3284 String (var546_formatTimespan/-1157398745 var3509 "")) ; Statement: $r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "") 
(assert true)
(define-const var1655 String (append/672562846 var1516 var3284)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1516!1 String)
(assert (= var1516!1 (str.++ var1516 var3284)))
(assert true)
(define-const var87 String (toString/-2075883882 var1655)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var127!1 (cast-from-String-to-String var87))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30) 

(declare-const var127!2 var2947)
(declare-const var87!1 String)
(assert true) ; Non Conditional
(define-const var2538 var3957 (destination/-1031466238 var25)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (not (= var2538 null-var3957))) ; Negate: Cond: $r4 == null  
(define-const var1823 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1823)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1823!1 String)
(assert (= var1823!1 ""))
(assert true)
(define-const var892 String (append/672562846 var1823!1 "filename=")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=") 
(declare-const var1823!2 String)
(assert (= var1823!2 (str.++ var1823!1 "filename=")))
(define-const var1727 var3957 (destination/-1031466238 var25)) ; Statement: $r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert true)
(define-const var3903 String (getRealPathText/517857763 var1727)) ; Statement: $r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>() 
(assert true)
(define-const var296 String (append/672562846 var892 var3903)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var892!1 String)
(assert (= var892!1 (str.++ var892 var3903)))
(assert true)
(define-const var2091 String (toString/-2075883882 var296)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var127!2 (cast-from-String-to-String var2091))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23) 

(declare-const var127!3 var2947)
(declare-const var2091!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3810 String (toString/-2140704992 var127!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var998 String var3810) ; Statement: r42 = $r24 
(assert true)
(define-const var2892 Int (length/-134980193 var3810)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var2892 0)) ; Cond: $i2 == 0 
(define-const var1684 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1684)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1684!1 String)
(assert (= var1684!1 ""))
(assert true)
(define-const var773 String (append/672562846 var1684!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1684!2 String)
(assert (= var1684!2 (str.++ var1684!1 "Started recording \u0022")))
(assert true)
(define-const var708 String (getName/-1213682957 var25)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var1313 String (append/672562846 var773 var708)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var773!1 String)
(assert (= var773!1 (str.++ var773 var708)))
(assert true)
(define-const var1148 String (append/672562846 var1313 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var1313!1 String)
(assert (= var1313!1 (str.++ var1313 "\u0022 (")))
(assert true)
(define-const var389 Int (getId/1256750700 var25)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var2176 String (append/-901862667 var1148 var389)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var1148!1 String)
(assert (str.prefixof var1148 var1148!1))
(assert true)
(define-const var1495 String (append/672562846 var2176 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2176!1 String)
(assert (= var2176!1 (str.++ var2176 ") ")))
(assert true)
(define-const var1463 String (append/672562846 var1495 var998)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var1495!1 String)
(assert (= var1495!1 (str.++ var1495 var998)))
(assert true)
(define-const var11 String (toString/-2075883882 var1463)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2947-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var546_formatTimespan/-1157398745=([java.time.Duration, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), getRealPathText/517857763=([jdk.jfr.internal.WriteableUserPath], java.lang.String), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1323=jdk.jfr.internal.PlatformRecording, var25=r1, var2947=java.util.StringJoiner, var127=$r0, var3651=", ", var3640=$z0, var2841=java.time.Duration, var355=$r2, var3171=$l0, var2671=$b1, var1217=$z1, var1559=$r3, var3261=$r25, var1516=$r28, var3509=$r26, var546=jdk.jfr.internal.Utils, var3284=$r27, var1655=$r29, var87=$r30, var3957=jdk.jfr.internal.WriteableUserPath, var2538=$r4, var1823=$r18, var892=$r21, var1727=$r19, var3903=$r20, var296=$r22, var2091=$r23, var3810=$r24, var998=r42, var2892=$i2, var1684=$r5, var773=$r7, var708=$r6, var1313=$r8, var1148=$r9, var389=$l3, var2176=$r10, var1495=$r11, var1463=$r12, var11=$r13}
; {jdk.jfr.internal.PlatformRecording=var1323, r1=var25, java.util.StringJoiner=var2947, $r0=var127, ", "=var3651, $z0=var3640, java.time.Duration=var2841, $r2=var355, $l0=var3171, $b1=var2671, $z1=var1217, $r3=var1559, $r25=var3261, $r28=var1516, $r26=var3509, jdk.jfr.internal.Utils=var546, $r27=var3284, $r29=var1655, $r30=var87, jdk.jfr.internal.WriteableUserPath=var3957, $r4=var2538, $r18=var1823, $r21=var892, $r19=var1727, $r20=var3903, $r22=var296, $r23=var2091, $r24=var3810, r42=var998, $i2=var2892, $r5=var1684, $r7=var773, $r6=var708, $r8=var1313, $r9=var1148, $l3=var389, $r10=var2176, $r11=var1495, $r12=var1463, $r13=var11}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duration=");	$r26 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r27 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r26, "");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r30);	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=");	$r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23);	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10