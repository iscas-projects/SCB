(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2989 0)
(declare-sort var1081 0)
(declare-sort var2708 0)
(declare-sort var1647 0)
(declare-sort var2407 0)
(declare-sort var49 0)
(declare-sort var762 0)
(declare-sort var3927 0)
(declare-sort var1147 0)
(declare-sort var1435 0)
(declare-sort var1087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var49_shouldLog/268553938 (var1647 var2407) Bool)
(declare-fun var762-init () var762)
(declare-fun var1147-init () var1147)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1435) String)
(declare-fun cast-from-var3927-to-var1435 (var3927) var1435)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var1087-init () (Array Int var1087))
(declare-fun cast-from-var3927-to-var1087 (var3927) var1087)
(declare-fun <init>/557789824 (var1147 String (Array Int var1087)) void)
(declare-const null-var2989 var2989)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2708 var2708)
(declare-const var1647-JFR_DCMD var1647)
(declare-const var2407-DEBUG var2407)
(declare-const null-var3927 var3927)
(declare-const null-__Array__Int__var1087__ (Array Int var1087))
(declare-const var586 var2989) ; Statement: r11 := @this: jdk.jfr.internal.dcmd.DCmdConfigure 
(assert (not (= var586 null-var2989)))
(declare-const var1699 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1699 null-String)))
(declare-const var3538 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3538 null-String)))
(declare-const var1791 Int) ; Statement: r4 := @parameter2: java.lang.Integer 
(assert (not (= var1791 null-Int)))
(declare-const var3961 Int) ; Statement: r5 := @parameter3: java.lang.Long 
(assert (not (= var3961 null-Int)))
(declare-const var1679 Int) ; Statement: r6 := @parameter4: java.lang.Long 
(assert (not (= var1679 null-Int)))
(declare-const var3795 Int) ; Statement: r7 := @parameter5: java.lang.Long 
(assert (not (= var3795 null-Int)))
(declare-const var2998 Int) ; Statement: r8 := @parameter6: java.lang.Long 
(assert (not (= var2998 null-Int)))
(declare-const var678 Int) ; Statement: r9 := @parameter7: java.lang.Long 
(assert (not (= var678 null-Int)))
(declare-const var671 var2708) ; Statement: r10 := @parameter8: java.lang.Boolean 
(assert (not (= var671 null-var2708)))
(define-const var2995 var1647 var1647-JFR_DCMD) ; Statement: $r1 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_DCMD> 
(define-const var3123 var2407 var2407-DEBUG) ; Statement: $r0 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG> 
(define-const var3705 Bool (var49_shouldLog/268553938 var2995 var3123)) ; Statement: $z0 = staticinvoke <jdk.jfr.internal.Logger: boolean shouldLog(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel)>($r1, $r0) 
 ; Statement: if $z0 == 0 goto z1 = 0 
(assert (= (ite var3705 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2027 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
 ; Statement: if r2 == null goto (branch) 
(assert (not (= var1699 null-String))) ; Negate: Cond: r2 == null  
(define-const var532 var762 var762-init) ; Statement: $r63 = new jdk.jfr.internal.SecuritySupport$SafePath 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2020 var3927) ; Statement: $r93 := @caughtexception 
(assert (not (= var2020 null-var3927)))
(define-const var834 var1147 var1147-init) ; Statement: $r94 = new jdk.jfr.internal.dcmd.DCmdException 
(define-const var992 String String-init) ; Statement: $r95 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var992)) ; Statement: specialinvoke $r95.<java.lang.StringBuilder: void <init>()>() 
(declare-const var992!1 String)
(assert (= var992!1 ""))
(assert true)
(define-const var2624 String (append/672562846 var992!1 "Could not use ")) ; Statement: $r96 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not use ") 
(declare-const var992!2 String)
(assert (= var992!2 (str.++ var992!1 "Could not use ")))
(assert true)
(define-const var3505 String (append/672562846 var2624 var1699)) ; Statement: $r97 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2624!1 String)
(assert (= var2624!1 (str.++ var2624 var1699)))
(assert true)
(define-const var2821 String (append/672562846 var3505 " as repository. ")) ; Statement: $r99 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as repository. ") 
(declare-const var3505!1 String)
(assert (= var3505!1 (str.++ var3505 " as repository. ")))
(assert true)
(define-const var1875 String (getMessage/849299655 (cast-from-var3927-to-var1435 var2020))) ; Statement: $r98 = virtualinvoke $r93.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var2685 String (append/672562846 var2821 var1875)) ; Statement: $r100 = virtualinvoke $r99.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r98) 
(declare-const var2821!1 String)
(assert (= var2821!1 (str.++ var2821 var1875)))
(assert true)
(define-const var2554 String (toString/-2075883882 var2685)) ; Statement: $r102 = virtualinvoke $r100.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1610 (Array Int var1087) arr-var1087-init) ; Statement: $r101 = newarray (java.lang.Object)[1] 
(declare-const var1610!1 (Array Int var1087))
(assert (not (= var1610!1 null-__Array__Int__var1087__)))
(assert (= (select var1610!1 0) (cast-from-var3927-to-var1087 var2020))) ; Statement: $r101[0] = $r93 
(assert true)
;(assert (<init>/557789824 var834 var2554 var1610!1)) ; Statement: specialinvoke $r94.<jdk.jfr.internal.dcmd.DCmdException: void <init>(java.lang.String,java.lang.Object[])>($r102, $r101) 

(declare-const var834!1 var1147)
(declare-const var2554!1 String)
(declare-const var1610!2 (Array Int var1087))
 ; Statement: throw $r94 
(check-sat)
(get-model)
(get-unsat-core)
; {var49_shouldLog/268553938=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel], boolean), var762-init=([], jdk.jfr.internal.SecuritySupport$SafePath), var1147-init=([], jdk.jfr.internal.dcmd.DCmdException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3927-to-var1435=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var1087-init=([], java.lang.Object[]), cast-from-var3927-to-var1087=([java.lang.Exception], java.lang.Object), <init>/557789824=([jdk.jfr.internal.dcmd.DCmdException, java.lang.String, java.lang.Object[]], void)}
; {var2989=jdk.jfr.internal.dcmd.DCmdConfigure, var586=r11, var1699=r2, var1081=null_type, var3538=r3, var1791=r4, var3961=r5, var1679=r6, var3795=r7, var2998=r8, var678=r9, var2708=java.lang.Boolean, var671=r10, var1647=jdk.jfr.internal.LogTag, var2995=$r1, var2407=jdk.jfr.internal.LogLevel, var3123=$r0, var49=jdk.jfr.internal.Logger, var3705=$z0, var2027=z1, var762=jdk.jfr.internal.SecuritySupport$SafePath, var532=$r63, var3927=java.lang.Exception, var2020=$r93, var1147=jdk.jfr.internal.dcmd.DCmdException, var834=$r94, var992=$r95, var2624=$r96, var3505=$r97, var2821=$r99, var1435=java.lang.Throwable, var1875=$r98, var2685=$r100, var2554=$r102, var1087=java.lang.Object, var1610=$r101}
; {jdk.jfr.internal.dcmd.DCmdConfigure=var2989, r11=var586, r2=var1699, null_type=var1081, r3=var3538, r4=var1791, r5=var3961, r6=var1679, r7=var3795, r8=var2998, r9=var678, java.lang.Boolean=var2708, r10=var671, jdk.jfr.internal.LogTag=var1647, $r1=var2995, jdk.jfr.internal.LogLevel=var2407, $r0=var3123, jdk.jfr.internal.Logger=var49, $z0=var3705, z1=var2027, jdk.jfr.internal.SecuritySupport$SafePath=var762, $r63=var532, java.lang.Exception=var3927, $r93=var2020, jdk.jfr.internal.dcmd.DCmdException=var1147, $r94=var834, $r95=var992, $r96=var2624, $r97=var3505, $r99=var2821, java.lang.Throwable=var1435, $r98=var1875, $r100=var2685, $r102=var2554, java.lang.Object=var1087, $r101=var1610}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: jdk.jfr.internal.dcmd.DCmdConfigure;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.Integer;	r5 := @parameter3: java.lang.Long;	r6 := @parameter4: java.lang.Long;	r7 := @parameter5: java.lang.Long;	r8 := @parameter6: java.lang.Long;	r9 := @parameter7: java.lang.Long;	r10 := @parameter8: java.lang.Boolean;	$r1 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_DCMD>;	$r0 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG>;	$z0 = staticinvoke <jdk.jfr.internal.Logger: boolean shouldLog(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel)>($r1, $r0);	if $z0 == 0 goto z1 = 0;	z1 = 0;	if r2 == null goto (branch);	$r63 = new jdk.jfr.internal.SecuritySupport$SafePath;	$r93 := @caughtexception;	$r94 = new jdk.jfr.internal.dcmd.DCmdException;	$r95 = new java.lang.StringBuilder;	specialinvoke $r95.<java.lang.StringBuilder: void <init>()>();	$r96 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not use ");	$r97 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r99 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as repository. ");	$r98 = virtualinvoke $r93.<java.lang.Exception: java.lang.String getMessage()>();	$r100 = virtualinvoke $r99.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r98);	$r102 = virtualinvoke $r100.<java.lang.StringBuilder: java.lang.String toString()>();	$r101 = newarray (java.lang.Object)[1];	$r101[0] = $r93;	specialinvoke $r94.<jdk.jfr.internal.dcmd.DCmdException: void <init>(java.lang.String,java.lang.Object[])>($r102, $r101);	throw $r94
;block_num 4