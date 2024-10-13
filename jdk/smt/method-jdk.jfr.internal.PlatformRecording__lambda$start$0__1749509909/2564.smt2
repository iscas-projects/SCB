(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var1923 0)
(declare-sort var3608 0)
(declare-sort var1557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1923-init () var1923)
(declare-fun <init>/636888916 (var1923 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var898) Bool)
(declare-fun add/953529365 (var1923 String) var1923)
(declare-fun maxAge/-1031466238 (var898) var3608)
(declare-fun maxSize/-1031466238 (var898) Int)
(declare-fun dumpOnExit/-1031466238 (var898) Bool)
(declare-fun duration/-1031466238 (var898) var3608)
(declare-fun destination/-1031466238 (var898) var1557)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRealPathText/517857763 (var1557) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toString/-2140704992 (var1923) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var898) String)
(declare-fun getId/1256750700 (var898) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var898 var898)
(declare-const null-var3608 var3608)
(declare-const null-var1557 var1557)
(declare-const var1553 var898) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var1553 null-var898)))
(define-const var1326 var1923 var1923-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var1326 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var1326!1 var1923)
(declare-const var1671 String)
(define-const var3802 Bool (toDisk/-1031466238 var1553)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (not (= (ite var3802 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (add/953529365 var1326!1 (cast-from-String-to-String "disk=false"))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false") 

(declare-const var1326!2 var1923)
(declare-const var1937 String)
(assert true) ; Non Conditional
(define-const var3796 var3608 (maxAge/-1031466238 var1553)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var3796 null-var3608)) ; Cond: $r2 == null 
(define-const var840 Int (maxSize/-1031466238 var1553)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var1281 Int (ite (> var840 0) 1 (ite (< var840 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var1281 0)) ; Cond: $b1 == 0 
(define-const var76 Bool (dumpOnExit/-1031466238 var1553)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var76 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1204 var3608 (duration/-1031466238 var1553)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var1204 null-var3608)) ; Cond: $r3 == null 
(define-const var3732 var1557 (destination/-1031466238 var1553)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (not (= var3732 null-var1557))) ; Negate: Cond: $r4 == null  
(define-const var3870 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3870)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3870!1 String)
(assert (= var3870!1 ""))
(assert true)
(define-const var3992 String (append/672562846 var3870!1 "filename=")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=") 
(declare-const var3870!2 String)
(assert (= var3870!2 (str.++ var3870!1 "filename=")))
(define-const var1707 var1557 (destination/-1031466238 var1553)) ; Statement: $r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert true)
(define-const var3282 String (getRealPathText/517857763 var1707)) ; Statement: $r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>() 
(assert true)
(define-const var3877 String (append/672562846 var3992 var3282)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3992!1 String)
(assert (= var3992!1 (str.++ var3992 var3282)))
(assert true)
(define-const var891 String (toString/-2075883882 var3877)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var1326!2 (cast-from-String-to-String var891))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23) 

(declare-const var1326!3 var1923)
(declare-const var891!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2571 String (toString/-2140704992 var1326!3)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var47 String var2571) ; Statement: r42 = $r24 
(assert true)
(define-const var2386 Int (length/-134980193 var2571)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= var2386 0)) ; Cond: $i2 == 0 
(define-const var1791 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1791)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1791!1 String)
(assert (= var1791!1 ""))
(assert true)
(define-const var809 String (append/672562846 var1791!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1791!2 String)
(assert (= var1791!2 (str.++ var1791!1 "Started recording \u0022")))
(assert true)
(define-const var758 String (getName/-1213682957 var1553)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var1305 String (append/672562846 var809 var758)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var809!1 String)
(assert (= var809!1 (str.++ var809 var758)))
(assert true)
(define-const var600 String (append/672562846 var1305 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var1305!1 String)
(assert (= var1305!1 (str.++ var1305 "\u0022 (")))
(assert true)
(define-const var918 Int (getId/1256750700 var1553)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var492 String (append/-901862667 var600 var918)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var600!1 String)
(assert (str.prefixof var600 var600!1))
(assert true)
(define-const var246 String (append/672562846 var492 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var492!1 String)
(assert (= var492!1 (str.++ var492 ") ")))
(assert true)
(define-const var1571 String (append/672562846 var246 var47)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var246!1 String)
(assert (= var246!1 (str.++ var246 var47)))
(assert true)
(define-const var2761 String (toString/-2075883882 var1571)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1923-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRealPathText/517857763=([jdk.jfr.internal.WriteableUserPath], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var898=jdk.jfr.internal.PlatformRecording, var1553=r1, var1923=java.util.StringJoiner, var1326=$r0, var1671=", ", var3802=$z0, var1937="disk=false", var3608=java.time.Duration, var3796=$r2, var840=$l0, var1281=$b1, var76=$z1, var1204=$r3, var1557=jdk.jfr.internal.WriteableUserPath, var3732=$r4, var3870=$r18, var3992=$r21, var1707=$r19, var3282=$r20, var3877=$r22, var891=$r23, var2571=$r24, var47=r42, var2386=$i2, var1791=$r5, var809=$r7, var758=$r6, var1305=$r8, var600=$r9, var918=$l3, var492=$r10, var246=$r11, var1571=$r12, var2761=$r13}
; {jdk.jfr.internal.PlatformRecording=var898, r1=var1553, java.util.StringJoiner=var1923, $r0=var1326, ", "=var1671, $z0=var3802, "disk=false"=var1937, java.time.Duration=var3608, $r2=var3796, $l0=var840, $b1=var1281, $z1=var76, $r3=var1204, jdk.jfr.internal.WriteableUserPath=var1557, $r4=var3732, $r18=var3870, $r21=var3992, $r19=var1707, $r20=var3282, $r22=var3877, $r23=var891, $r24=var2571, r42=var47, $i2=var2386, $r5=var1791, $r7=var809, $r6=var758, $r8=var1305, $r9=var600, $l3=var918, $r10=var492, $r11=var246, $r12=var1571, $r13=var2761}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>("disk=false");	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=");	$r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23);	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10