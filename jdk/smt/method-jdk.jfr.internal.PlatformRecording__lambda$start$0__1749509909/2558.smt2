(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3889 0)
(declare-sort var783 0)
(declare-sort var360 0)
(declare-sort var2885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var783-init () var783)
(declare-fun <init>/636888916 (var783 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var3889) Bool)
(declare-fun maxAge/-1031466238 (var3889) var360)
(declare-fun maxSize/-1031466238 (var3889) Int)
(declare-fun dumpOnExit/-1031466238 (var3889) Bool)
(declare-fun duration/-1031466238 (var3889) var360)
(declare-fun destination/-1031466238 (var3889) var2885)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRealPathText/517857763 (var2885) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var783 String) var783)
(declare-fun toString/-2140704992 (var783) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var3889) String)
(declare-fun getId/1256750700 (var3889) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var3889 var3889)
(declare-const null-var360 var360)
(declare-const null-var2885 var2885)
(declare-const var2904 var3889) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var2904 null-var3889)))
(define-const var246 var783 var783-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var246 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var246!1 var783)
(declare-const var3262 String)
(define-const var3270 Bool (toDisk/-1031466238 var2904)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var3270 1 0) 0))) ; Cond: $z0 != 0 
(define-const var772 var360 (maxAge/-1031466238 var2904)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var772 null-var360)) ; Cond: $r2 == null 
(define-const var1157 Int (maxSize/-1031466238 var2904)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var970 Int (ite (> var1157 0) 1 (ite (< var1157 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var970 0)) ; Cond: $b1 == 0 
(define-const var3215 Bool (dumpOnExit/-1031466238 var2904)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var3215 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3665 var360 (duration/-1031466238 var2904)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var3665 null-var360)) ; Cond: $r3 == null 
(define-const var829 var2885 (destination/-1031466238 var2904)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (not (= var829 null-var2885))) ; Negate: Cond: $r4 == null  
(define-const var1332 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1332)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1332!1 String)
(assert (= var1332!1 ""))
(assert true)
(define-const var2031 String (append/672562846 var1332!1 "filename=")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=") 
(declare-const var1332!2 String)
(assert (= var1332!2 (str.++ var1332!1 "filename=")))
(define-const var1758 var2885 (destination/-1031466238 var2904)) ; Statement: $r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert true)
(define-const var1173 String (getRealPathText/517857763 var1758)) ; Statement: $r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>() 
(assert true)
(define-const var120 String (append/672562846 var2031 var1173)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2031!1 String)
(assert (= var2031!1 (str.++ var2031 var1173)))
(assert true)
(define-const var3611 String (toString/-2075883882 var120)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var246!1 (cast-from-String-to-String var3611))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23) 

(declare-const var246!2 var783)
(declare-const var3611!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3450 String (toString/-2140704992 var246!2)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var1478 String var3450) ; Statement: r42 = $r24 
(assert true)
(define-const var2029 Int (length/-134980193 var3450)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var2029 0)) ; Cond: $i2 == 0 
(define-const var1171 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1171)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1171!1 String)
(assert (= var1171!1 ""))
(assert true)
(define-const var2095 String (append/672562846 var1171!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1171!2 String)
(assert (= var1171!2 (str.++ var1171!1 "Started recording \u0022")))
(assert true)
(define-const var3358 String (getName/-1213682957 var2904)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var3882 String (append/672562846 var2095 var3358)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2095!1 String)
(assert (= var2095!1 (str.++ var2095 var3358)))
(assert true)
(define-const var854 String (append/672562846 var3882 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var3882!1 String)
(assert (= var3882!1 (str.++ var3882 "\u0022 (")))
(assert true)
(define-const var1670 Int (getId/1256750700 var2904)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var3258 String (append/-901862667 var854 var1670)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var854!1 String)
(assert (str.prefixof var854 var854!1))
(assert true)
(define-const var3803 String (append/672562846 var3258 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3258!1 String)
(assert (= var3258!1 (str.++ var3258 ") ")))
(assert true)
(define-const var2860 String (append/672562846 var3803 var1478)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3803!1 String)
(assert (= var3803!1 (str.++ var3803 var1478)))
(assert true)
(define-const var1377 String (toString/-2075883882 var2860)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var783-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRealPathText/517857763=([jdk.jfr.internal.WriteableUserPath], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var3889=jdk.jfr.internal.PlatformRecording, var2904=r1, var783=java.util.StringJoiner, var246=$r0, var3262=", ", var3270=$z0, var360=java.time.Duration, var772=$r2, var1157=$l0, var970=$b1, var3215=$z1, var3665=$r3, var2885=jdk.jfr.internal.WriteableUserPath, var829=$r4, var1332=$r18, var2031=$r21, var1758=$r19, var1173=$r20, var120=$r22, var3611=$r23, var3450=$r24, var1478=r42, var2029=$i2, var1171=$r5, var2095=$r7, var3358=$r6, var3882=$r8, var854=$r9, var1670=$l3, var3258=$r10, var3803=$r11, var2860=$r12, var1377=$r13}
; {jdk.jfr.internal.PlatformRecording=var3889, r1=var2904, java.util.StringJoiner=var783, $r0=var246, ", "=var3262, $z0=var3270, java.time.Duration=var360, $r2=var772, $l0=var1157, $b1=var970, $z1=var3215, $r3=var3665, jdk.jfr.internal.WriteableUserPath=var2885, $r4=var829, $r18=var1332, $r21=var2031, $r19=var1758, $r20=var1173, $r22=var120, $r23=var3611, $r24=var3450, r42=var1478, $i2=var2029, $r5=var1171, $r7=var2095, $r6=var3358, $r8=var3882, $r9=var854, $l3=var1670, $r10=var3258, $r11=var3803, $r12=var2860, $r13=var1377}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=");	$r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23);	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 9