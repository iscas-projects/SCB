(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var809 0)
(declare-sort var1278 0)
(declare-sort var1749 0)
(declare-sort var2 0)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var809) void)
(declare-fun checkEndCode/-651668869 (var809) void)
(declare-fun var3930-init () var3930)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3930 String) void)
(declare-const null-var809 var809)
(declare-const null-Int Int)
(declare-const null-var1278 var1278)
(declare-const null-__Array__Int__var1749__ (Array Int var1749))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1989 var809) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var1989 null-var809)))
(declare-const var1420 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1420 null-Int)))
(declare-const var322 var1278) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var322 null-var1278)))
(declare-const var2279 (Array Int var1749)) ; Statement: r3 := @parameter2: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2279 null-__Array__Int__var1749__)))
(declare-const var3031 (Array Int var1749)) ; Statement: r4 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var3031 null-__Array__Int__var1749__)))
(declare-const var242 (Array Int Int)) ; Statement: r5 := @parameter4: int[] 
(assert (not (= var242 null-__Array__Int__Int__)))
(declare-const var3692 String) ; Statement: r2 := @parameter5: java.lang.String 
(assert (not (= var3692 null-String)))
(declare-const var2518 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var2518 null-Bool)))
(assert true)
;(assert (checkStartCode/-1084876908 var1989)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var1989!1 var809)
(assert true)
;(assert (checkEndCode/-651668869 var1989!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var1989!2 var809)
(define-const var1680 Int (div var1420 (to_int (^ 2 24)))) ; Statement: i1 = i0 >>> 24 
 ; Statement: if i1 == 64 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 
(assert (not (= var1680 64))) ; Negate: Cond: i1 == 64  
 ; Statement: if i1 == 65 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 
(assert (not (= var1680 65))) ; Negate: Cond: i1 == 65  
(define-const var3553 var3930 var3930-init) ; Statement: $r18 = new java.lang.IllegalArgumentException 
(define-const var1858 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1858)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1858!1 String)
(assert (= var1858!1 ""))
(assert true)
(define-const var2477 String (append/672562846 var1858!1 "Invalid type reference sort 0x")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type reference sort 0x") 
(declare-const var1858!2 String)
(assert (= var1858!2 (str.++ var1858!1 "Invalid type reference sort 0x")))
(define-const var3337 String (Int_toHexString/1865784998 var1680)) ; Statement: $r20 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1) 
(assert true)
(define-const var2893 String (append/672562846 var2477 var3337)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2477!1 String)
(assert (= var2477!1 (str.++ var2477 var3337)))
(assert true)
(define-const var3433 String (toString/-2075883882 var2893)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3553 var3433)) ; Statement: specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23) 

(declare-const var3553!1 var3930)
(declare-const var3433!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var3930-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var809=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var1989=r0, var1420=i0, var1278=jdk.internal.org.objectweb.asm.TypePath, var322=r1, var1749=jdk.internal.org.objectweb.asm.Label, var2279=r3, var3031=r4, var242=r5, var3692=r2, var2=null_type, var2518=z0, var1680=i1, var3930=java.lang.IllegalArgumentException, var3553=$r18, var1858=$r19, var2477=$r21, var3337=$r20, var2893=$r22, var3433=$r23}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var809, r0=var1989, i0=var1420, jdk.internal.org.objectweb.asm.TypePath=var1278, r1=var322, jdk.internal.org.objectweb.asm.Label=var1749, r3=var2279, r4=var3031, r5=var242, r2=var3692, null_type=var2, z0=var2518, i1=var1680, java.lang.IllegalArgumentException=var3930, $r18=var3553, $r19=var1858, $r21=var2477, $r20=var3337, $r22=var2893, $r23=var3433}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r3 := @parameter2: jdk.internal.org.objectweb.asm.Label[];	r4 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	r5 := @parameter4: int[];	r2 := @parameter5: java.lang.String;	z0 := @parameter6: boolean;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	i1 = i0 >>> 24;	if i1 == 64 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	if i1 == 65 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	$r18 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type reference sort 0x");	$r20 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23);	throw $r18
;block_num 3