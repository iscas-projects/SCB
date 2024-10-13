(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2040 0)
(declare-sort var2618 0)
(declare-sort var3742 0)
(declare-sort var3616 0)
(declare-sort var2748 0)
(declare-sort var493 0)
(declare-sort var853 0)
(declare-sort var614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3742-init () var3742)
(declare-fun <init>/-1681595970 (var3742 String) void)
(declare-fun dumpFile/982409569 (var2040 var3742) var3742)
(declare-fun exists/1072868559 (var3742) Bool)
(declare-fun var3616-init () var3616)
(declare-fun arr-var493-init () (Array Int var493))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-333883238 (var2040) String)
(declare-fun arr-String-init () (Array Int String))
(declare-fun toString/-1749764803 (String) String)
(declare-fun toString/-1112415476 (var853) String)
(declare-fun cast-from-var2748-to-var853 (var2748) var853)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var614_getMessage/90889441 (String (Array Int String)) String)
(declare-fun cast-from-String-to-var493 (String) var493)
(declare-fun var2040_debug/209617639 ((Array Int var493)) void)
(declare-const null-var2040 var2040)
(declare-const null-String String)
(declare-const null-var2748 var2748)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-__Array__Int__var493__ (Array Int var493))
(declare-const var3406 var2040) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.Source 
(assert (not (= var3406 null-var2040)))
(declare-const var2156 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2156 null-String)))
(define-const var527 var3742 var3742-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var527 var2156)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var527!1 var3742)
(declare-const var2156!1 String)
(assert true)
(define-const var3830 var3742 (dumpFile/982409569 var3406 var527!1)) ; Statement: r3 = specialinvoke r2.<jdk.nashorn.internal.runtime.Source: java.io.File dumpFile(java.io.File)>($r0) 
(assert true)
(define-const var2019 Bool (exists/1072868559 var527!1)) ; Statement: $z0 = virtualinvoke $r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r4 = new java.io.FileOutputStream 
(assert (not (= (ite var2019 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1651 var3616 var3616-init) ; Statement: $r4 = new java.io.FileOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3348 var2748) ; Statement: $r14 := @caughtexception 
(assert (not (= var3348 null-var2748)))
(define-const var717 (Array Int var493) arr-var493-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(define-const var1925 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1925)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1925!1 String)
(assert (= var1925!1 ""))
(assert true)
(define-const var427 String (append/672562846 var1925!1 "Skipping source dump for ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping source dump for ") 
(declare-const var1925!2 String)
(assert (= var1925!2 (str.++ var1925!1 "Skipping source dump for ")))
(define-const var1871 String (name/-333883238 var3406)) ; Statement: $r17 = r2.<jdk.nashorn.internal.runtime.Source: java.lang.String name> 
(assert true)
(define-const var1951 String (append/672562846 var427 var1871)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var427!1 String)
(assert (= var427!1 (str.++ var427 var1871)))
(assert true)
(define-const var2658 String (append/672562846 var1951 ": ")) ; Statement: $r29 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1951!1 String)
(assert (= var1951!1 (str.++ var1951 ": ")))
(define-const var836 (Array Int String) arr-String-init) ; Statement: $r20 = newarray (java.lang.String)[1] 
(define-const var2470 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2470)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2470!1 String)
(assert (= var2470!1 ""))
(assert true)
(define-const var3836 String (toString/-1749764803 var2156!1)) ; Statement: $r22 = virtualinvoke r1.<java.lang.String: java.lang.String toString()>() 
(assert true)
(define-const var2829 String (append/672562846 var2470!1 var3836)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2470!2 String)
(assert (= var2470!2 (str.++ var2470!1 var3836)))
(assert true)
(define-const var423 String (append/672562846 var2829 " : ")) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var2829!1 String)
(assert (= var2829!1 (str.++ var2829 " : ")))
(assert true)
(define-const var256 String (toString/-1112415476 (cast-from-var2748-to-var853 var3348))) ; Statement: $r24 = virtualinvoke $r14.<java.io.IOException: java.lang.String toString()>() 
(assert true)
(define-const var57 String (append/672562846 var423 var256)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var423!1 String)
(assert (= var423!1 (str.++ var423 var256)))
(assert true)
(define-const var1639 String (toString/-2075883882 var57)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var836!1 (Array Int String))
(assert (not (= var836!1 null-__Array__Int__String__)))
(assert (= (select var836!1 0) var1639)) ; Statement: $r20[0] = $r27 
(define-const var3549 String (var614_getMessage/90889441 "io.error.cant.write" var836!1)) ; Statement: $r28 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>("io.error.cant.write", $r20) 
(assert true)
(define-const var764 String (append/672562846 var2658 var3549)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var2658!1 String)
(assert (= var2658!1 (str.++ var2658 var3549)))
(assert true)
(define-const var2132 String (toString/-2075883882 var764)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var717!1 (Array Int var493))
(assert (not (= var717!1 null-__Array__Int__var493__)))
(assert (= (select var717!1 0) (cast-from-String-to-var493 var2132))) ; Statement: $r15[0] = $r31 
;(assert (var2040_debug/209617639 var717!1)) ; Statement: staticinvoke <jdk.nashorn.internal.runtime.Source: void debug(java.lang.Object[])>($r15) 

(declare-const var717!2 (Array Int var493))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3742-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), dumpFile/982409569=([jdk.nashorn.internal.runtime.Source, java.io.File], java.io.File), exists/1072868559=([java.io.File], boolean), var3616-init=([], java.io.FileOutputStream), arr-var493-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-333883238=([jdk.nashorn.internal.runtime.Source], java.lang.String), arr-String-init=([], java.lang.String[]), toString/-1749764803=([java.lang.String], java.lang.String), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2748-to-var853=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var614_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String), cast-from-String-to-var493=([java.lang.String], java.lang.Object), var2040_debug/209617639=([java.lang.Object[]], void)}
; {var2040=jdk.nashorn.internal.runtime.Source, var3406=r2, var2156=r1, var2618=null_type, var3742=java.io.File, var527=$r0, var3830=r3, var2019=$z0, var3616=java.io.FileOutputStream, var1651=$r4, var2748=java.io.IOException, var3348=$r14, var493=java.lang.Object, var717=$r15, var1925=$r16, var427=$r18, var1871=$r17, var1951=$r19, var2658=$r29, var836=$r20, var2470=$r21, var3836=$r22, var2829=$r23, var423=$r25, var853=java.lang.Throwable, var256=$r24, var57=$r26, var1639=$r27, var614=jdk.nashorn.internal.runtime.ECMAErrors, var3549=$r28, var764=$r30, var2132=$r31}
; {jdk.nashorn.internal.runtime.Source=var2040, r2=var3406, r1=var2156, null_type=var2618, java.io.File=var3742, $r0=var527, r3=var3830, $z0=var2019, java.io.FileOutputStream=var3616, $r4=var1651, java.io.IOException=var2748, $r14=var3348, java.lang.Object=var493, $r15=var717, $r16=var1925, $r18=var427, $r17=var1871, $r19=var1951, $r29=var2658, $r20=var836, $r21=var2470, $r22=var3836, $r23=var2829, $r25=var423, java.lang.Throwable=var853, $r24=var256, $r26=var57, $r27=var1639, jdk.nashorn.internal.runtime.ECMAErrors=var614, $r28=var3549, $r30=var764, $r31=var2132}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.String: java.lang.String toString()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: jdk.nashorn.internal.runtime.Source;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	r3 = specialinvoke r2.<jdk.nashorn.internal.runtime.Source: java.io.File dumpFile(java.io.File)>($r0);	$z0 = virtualinvoke $r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r4 = new java.io.FileOutputStream;	$r4 = new java.io.FileOutputStream;	$r14 := @caughtexception;	$r15 = newarray (java.lang.Object)[1];	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping source dump for ");	$r17 = r2.<jdk.nashorn.internal.runtime.Source: java.lang.String name>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r29 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r20 = newarray (java.lang.String)[1];	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke r1.<java.lang.String: java.lang.String toString()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r24 = virtualinvoke $r14.<java.io.IOException: java.lang.String toString()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r20[0] = $r27;	$r28 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>("io.error.cant.write", $r20);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	$r15[0] = $r31;	staticinvoke <jdk.nashorn.internal.runtime.Source: void debug(java.lang.Object[])>($r15);	return
;block_num 4