(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1207 0)
(declare-sort var136 0)
(declare-sort var83 0)
(declare-sort var1047 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var136-init () var136)
(declare-fun <init>/636888916 (var136 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun toDisk/-1031466238 (var1207) Bool)
(declare-fun maxAge/-1031466238 (var1207) var83)
(declare-fun maxSize/-1031466238 (var1207) Int)
(declare-fun dumpOnExit/-1031466238 (var1207) Bool)
(declare-fun duration/-1031466238 (var1207) var83)
(declare-fun destination/-1031466238 (var1207) var1047)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRealPathText/517857763 (var1047) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/953529365 (var136 String) var136)
(declare-fun toString/-2140704992 (var136) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getName/-1213682957 (var1207) String)
(declare-fun getId/1256750700 (var1207) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-const null-var1207 var1207)
(declare-const null-var83 var83)
(declare-const null-var1047 var1047)
(declare-const var404 var1207) ; Statement: r1 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var404 null-var1207)))
(define-const var3936 var136 var136-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var3936 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var3936!1 var136)
(declare-const var1433 String)
(define-const var1871 Bool (toDisk/-1031466238 var404)) ; Statement: $z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
(assert (not (= (ite var1871 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2050 var83 (maxAge/-1031466238 var404)) ; Statement: $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge> 
 ; Statement: if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(assert (= var2050 null-var83)) ; Cond: $r2 == null 
(define-const var2343 Int (maxSize/-1031466238 var404)) ; Statement: $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize> 
(define-const var3867 Int (ite (> var2343 0) 1 (ite (< var2343 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
 ; Statement: if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
(assert (= var3867 0)) ; Cond: $b1 == 0 
(define-const var261 Bool (dumpOnExit/-1031466238 var404)) ; Statement: $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
(assert (= (ite var261 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1543 var83 (duration/-1031466238 var404)) ; Statement: $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration> 
 ; Statement: if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert (= var1543 null-var83)) ; Cond: $r3 == null 
(define-const var3912 var1047 (destination/-1031466238 var404)) ; Statement: $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
 ; Statement: if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(assert (not (= var3912 null-var1047))) ; Negate: Cond: $r4 == null  
(define-const var1942 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1942)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1942!1 String)
(assert (= var1942!1 ""))
(assert true)
(define-const var175 String (append/672562846 var1942!1 "filename=")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=") 
(declare-const var1942!2 String)
(assert (= var1942!2 (str.++ var1942!1 "filename=")))
(define-const var1266 var1047 (destination/-1031466238 var404)) ; Statement: $r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination> 
(assert true)
(define-const var1398 String (getRealPathText/517857763 var1266)) ; Statement: $r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>() 
(assert true)
(define-const var737 String (append/672562846 var175 var1398)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var175!1 String)
(assert (= var175!1 (str.++ var175 var1398)))
(assert true)
(define-const var3037 String (toString/-2075883882 var737)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/953529365 var3936!1 (cast-from-String-to-String var3037))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23) 

(declare-const var3936!2 var136)
(declare-const var3037!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var45 String (toString/-2140704992 var3936!2)) ; Statement: $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
(define-const var1133 String var45) ; Statement: r42 = $r24 
(assert true)
(define-const var2321 Int (length/-134980193 var45)) ; Statement: $i2 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i2 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= var2321 0))) ; Negate: Cond: $i2 == 0  
(define-const var2010 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2010)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2010!1 String)
(assert (= var2010!1 ""))
(assert true)
(define-const var2712 String (append/672562846 var2010!1 "{")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var2010!2 String)
(assert (= var2010!2 (str.++ var2010!1 "{")))
(assert true)
(define-const var1115 String (append/672562846 var2712 var45)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2712!1 String)
(assert (= var2712!1 (str.++ var2712 var45)))
(assert true)
(define-const var1138 String (append/672562846 var1115 "}")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1115!1 String)
(assert (= var1115!1 (str.++ var1115 "}")))
(assert true)
(define-const var1133!1 String (toString/-2075883882 var1138)) ; Statement: r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1135 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1135)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1135!1 String)
(assert (= var1135!1 ""))
(assert true)
(define-const var3841 String (append/672562846 var1135!1 "Started recording \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"") 
(declare-const var1135!2 String)
(assert (= var1135!2 (str.++ var1135!1 "Started recording \u0022")))
(assert true)
(define-const var1673 String (getName/-1213682957 var404)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var950 String (append/672562846 var3841 var1673)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3841!1 String)
(assert (= var3841!1 (str.++ var3841 var1673)))
(assert true)
(define-const var2722 String (append/672562846 var950 "\u0022 (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (") 
(declare-const var950!1 String)
(assert (= var950!1 (str.++ var950 "\u0022 (")))
(assert true)
(define-const var3493 Int (getId/1256750700 var404)) ; Statement: $l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>() 
(assert true)
(define-const var3025 String (append/-901862667 var2722 var3493)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2722!1 String)
(assert (str.prefixof var2722 var2722!1))
(assert true)
(define-const var2709 String (append/672562846 var3025 ") ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3025!1 String)
(assert (= var3025!1 (str.++ var3025 ") ")))
(assert true)
(define-const var499 String (append/672562846 var2709 var1133!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var2709!1 String)
(assert (= var2709!1 (str.++ var2709 var1133!1)))
(assert true)
(define-const var2663 String (toString/-2075883882 var499)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var136-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), maxAge/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), maxSize/-1031466238=([jdk.jfr.internal.PlatformRecording], long), dumpOnExit/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), duration/-1031466238=([jdk.jfr.internal.PlatformRecording], java.time.Duration), destination/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.WriteableUserPath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRealPathText/517857763=([jdk.jfr.internal.WriteableUserPath], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), toString/-2140704992=([java.util.StringJoiner], java.lang.String), length/-134980193=([java.lang.String], int), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), getId/1256750700=([jdk.jfr.internal.PlatformRecording], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder)}
; {var1207=jdk.jfr.internal.PlatformRecording, var404=r1, var136=java.util.StringJoiner, var3936=$r0, var1433=", ", var1871=$z0, var83=java.time.Duration, var2050=$r2, var2343=$l0, var3867=$b1, var261=$z1, var1543=$r3, var1047=jdk.jfr.internal.WriteableUserPath, var3912=$r4, var1942=$r18, var175=$r21, var1266=$r19, var1398=$r20, var737=$r22, var3037=$r23, var45=$r24, var1133=r42, var2321=$i2, var2010=$r14, var2712=$r15, var1115=$r16, var1138=$r17, var1135=$r5, var3841=$r7, var1673=$r6, var950=$r8, var2722=$r9, var3493=$l3, var3025=$r10, var2709=$r11, var499=$r12, var2663=$r13}
; {jdk.jfr.internal.PlatformRecording=var1207, r1=var404, java.util.StringJoiner=var136, $r0=var3936, ", "=var1433, $z0=var1871, java.time.Duration=var83, $r2=var2050, $l0=var2343, $b1=var3867, $z1=var261, $r3=var1543, jdk.jfr.internal.WriteableUserPath=var1047, $r4=var3912, $r18=var1942, $r21=var175, $r19=var1266, $r20=var1398, $r22=var737, $r23=var3037, $r24=var45, r42=var1133, $i2=var2321, $r14=var2010, $r15=var2712, $r16=var1115, $r17=var1138, $r5=var1135, $r7=var3841, $r6=var1673, $r8=var950, $r9=var2722, $l3=var3493, $r10=var3025, $r11=var2709, $r12=var499, $r13=var2663}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.util.StringJoiner: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r1 := @this: jdk.jfr.internal.PlatformRecording;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$z0 = r1.<jdk.jfr.internal.PlatformRecording: boolean toDisk>;	if $z0 != 0 goto $r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	$r2 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration maxAge>;	if $r2 == null goto $l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$l0 = r1.<jdk.jfr.internal.PlatformRecording: long maxSize>;	$b1 = $l0 cmp 0L;	if $b1 == 0 goto $z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	$z1 = r1.<jdk.jfr.internal.PlatformRecording: boolean dumpOnExit>;	if $z1 == 0 goto $r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	$r3 = r1.<jdk.jfr.internal.PlatformRecording: java.time.Duration duration>;	if $r3 == null goto $r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r4 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	if $r4 == null goto $r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("filename=");	$r19 = r1.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.WriteableUserPath destination>;	$r20 = virtualinvoke $r19.<jdk.jfr.internal.WriteableUserPath: java.lang.String getRealPathText()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r23);	$r24 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	r42 = $r24;	$i2 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i2 == 0 goto $r5 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	r42 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Started recording \"");	$r6 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (");	$l3 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: long getId()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 10