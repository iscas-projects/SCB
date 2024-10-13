(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var408 0)
(declare-sort var60 0)
(declare-sort var393 0)
(declare-sort var474 0)
(declare-sort var2523 0)
(declare-sort var2648 0)
(declare-sort var1237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkPath/-1324960772 (var408 String Bool) var474)
(declare-fun var474_toString/1790204457 (var474) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun performCommand/-1009984896 (var408 (Array Int String) Int var393) var2523)
(declare-fun var2523_size/-959786421 (var2523) Int)
(declare-fun var2648-init () var2648)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1237) String)
(declare-fun cast-from-var2523-to-var1237 (var2523) var1237)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2648 String) void)
(declare-const null-var408 var408)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var393 var393)
(declare-const var408-DF String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1458 var408) ; Statement: r0 := @this: org.apache.commons.io.FileSystemUtils 
(assert (not (= var1458 null-var408)))
(declare-const var3799 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3799 null-String)))
(declare-const var3452 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3452 null-Bool)))
(declare-const var3404 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3404 null-Bool)))
(declare-const var2214 var393) ; Statement: r5 := @parameter3: java.time.Duration 
(assert (not (= var2214 null-var393)))
(assert true)
(define-const var2291 var474 (checkPath/-1324960772 var1458 var3799 (ite (= 1 0) true false))) ; Statement: $r2 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.nio.file.Path checkPath(java.lang.String,boolean)>(r1, 0) 
(define-const var3477 String (var474_toString/1790204457 var2291)) ; Statement: r3 = interfaceinvoke $r2.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var2163 String "-") ; Statement: r39 = "-" 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var3452 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto $i0 = virtualinvoke r39.<java.lang.String: int length()>() 
(assert (= (ite var3404 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1123 Int (length/-134980193 var2163)) ; Statement: $i0 = virtualinvoke r39.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 1 goto $r40 = newarray (java.lang.String)[2] 
(assert (<= var1123 1)) ; Cond: $i0 <= 1 
(define-const var1314 (Array Int String) arr-String-init) ; Statement: $r40 = newarray (java.lang.String)[2] 
(define-const var3494 String var408-DF) ; Statement: $r4 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF> 
(declare-const var1314!1 (Array Int String))
(assert (not (= var1314!1 null-__Array__Int__String__)))
(assert (= (select var1314!1 0) var3494)) ; Statement: $r40[0] = $r4 
(declare-const var1314!2 (Array Int String))
(assert (not (= var1314!2 null-__Array__Int__String__)))
(assert (= (select var1314!2 1) var3477)) ; Statement: $r40[1] = r3 
(assert true) ; Non Conditional
(assert true)
(define-const var3637 var2523 (performCommand/-1009984896 var1458 var1314!2 3 var2214)) ; Statement: $r32 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.util.List performCommand(java.lang.String[],int,java.time.Duration)>($r40, 3, r5) 
(define-const var834 Int (var2523_size/-959786421 var3637)) ; Statement: $i1 = interfaceinvoke $r32.<java.util.List: int size()>() 
 ; Statement: if $i1 >= 2 goto $r6 = interfaceinvoke $r32.<java.util.List: java.lang.Object get(int)>(1) 
(assert (not (>= var834 2))) ; Negate: Cond: $i1 >= 2  
(define-const var1716 var2648 var2648-init) ; Statement: $r21 = new java.io.IOException 
(define-const var3849 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3849)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3849!1 String)
(assert (= var3849!1 ""))
(assert true)
(define-const var1070 String (append/672562846 var3849!1 "Command line \u0027")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command line \'") 
(declare-const var3849!2 String)
(assert (= var3849!2 (str.++ var3849!1 "Command line \u0027")))
(define-const var1203 String var408-DF) ; Statement: $r23 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF> 
(assert true)
(define-const var1574 String (append/672562846 var1070 var1203)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1070!1 String)
(assert (= var1070!1 (str.++ var1070 var1203)))
(assert true)
(define-const var2747 String (append/672562846 var1574 "\u0027 did not return info as expected for path \u0027")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' did not return info as expected for path \'") 
(declare-const var1574!1 String)
(assert (= var1574!1 (str.++ var1574 "\u0027 did not return info as expected for path \u0027")))
(assert true)
(define-const var3618 String (append/672562846 var2747 var3477)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2747!1 String)
(assert (= var2747!1 (str.++ var2747 var3477)))
(assert true)
(define-const var3444 String (append/672562846 var3618 "\u0027- response was ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'- response was ") 
(declare-const var3618!1 String)
(assert (= var3618!1 (str.++ var3618 "\u0027- response was ")))
(assert true)
(define-const var503 String (append/-1031950772 var3444 (cast-from-var2523-to-var1237 var3637))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r32) 
(declare-const var3444!1 String)
(assert (str.prefixof var3444 var3444!1))
(assert true)
(define-const var1793 String (toString/-2075883882 var503)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1716 var1793)) ; Statement: specialinvoke $r21.<java.io.IOException: void <init>(java.lang.String)>($r30) 

(declare-const var1716!1 var2648)
(declare-const var1793!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {checkPath/-1324960772=([org.apache.commons.io.FileSystemUtils, java.lang.String, boolean], java.nio.file.Path), var474_toString/1790204457=([java.nio.file.Path], java.lang.String), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), performCommand/-1009984896=([org.apache.commons.io.FileSystemUtils, java.lang.String[], int, java.time.Duration], java.util.List), var2523_size/-959786421=([java.util.List], int), var2648-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2523-to-var1237=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var408=org.apache.commons.io.FileSystemUtils, var1458=r0, var3799=r1, var60=null_type, var3452=z0, var3404=z1, var393=java.time.Duration, var2214=r5, var474=java.nio.file.Path, var2291=$r2, var3477=r3, var2163=r39, var1123=$i0, var1314=$r40, var3494=$r4, var2523=java.util.List, var3637=$r32, var834=$i1, var2648=java.io.IOException, var1716=$r21, var3849=$r22, var1070=$r24, var1203=$r23, var1574=$r25, var2747=$r26, var3618=$r27, var3444=$r28, var1237=java.lang.Object, var503=$r29, var1793=$r30}
; {org.apache.commons.io.FileSystemUtils=var408, r0=var1458, r1=var3799, null_type=var60, z0=var3452, z1=var3404, java.time.Duration=var393, r5=var2214, java.nio.file.Path=var474, $r2=var2291, r3=var3477, r39=var2163, $i0=var1123, $r40=var1314, $r4=var3494, java.util.List=var2523, $r32=var3637, $i1=var834, java.io.IOException=var2648, $r21=var1716, $r22=var3849, $r24=var1070, $r23=var1203, $r25=var1574, $r26=var2747, $r27=var3618, $r28=var3444, java.lang.Object=var1237, $r29=var503, $r30=var1793}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.FileSystemUtils;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	z1 := @parameter2: boolean;	r5 := @parameter3: java.time.Duration;	$r2 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.nio.file.Path checkPath(java.lang.String,boolean)>(r1, 0);	r3 = interfaceinvoke $r2.<java.nio.file.Path: java.lang.String toString()>();	r39 = "-";	if z0 == 0 goto (branch);	if z1 == 0 goto $i0 = virtualinvoke r39.<java.lang.String: int length()>();	$i0 = virtualinvoke r39.<java.lang.String: int length()>();	if $i0 <= 1 goto $r40 = newarray (java.lang.String)[2];	$r40 = newarray (java.lang.String)[2];	$r4 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF>;	$r40[0] = $r4;	$r40[1] = r3;	$r32 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.util.List performCommand(java.lang.String[],int,java.time.Duration)>($r40, 3, r5);	$i1 = interfaceinvoke $r32.<java.util.List: int size()>();	if $i1 >= 2 goto $r6 = interfaceinvoke $r32.<java.util.List: java.lang.Object get(int)>(1);	$r21 = new java.io.IOException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command line \'");	$r23 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' did not return info as expected for path \'");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'- response was ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r32);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.IOException: void <init>(java.lang.String)>($r30);	throw $r21
;block_num 6