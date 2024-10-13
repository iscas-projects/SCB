(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var71 0)
(declare-sort var2674 0)
(declare-sort var542 0)
(declare-sort var1922 0)
(declare-sort var1463 0)
(declare-sort var1669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var71) void)
(declare-fun checkEndCode/-651668869 (var71) void)
(declare-fun var1463_checkTypeRefAndPath/-5268865 (Int var2674) void)
(declare-fun var71_checkDesc/2075147271 (String Bool) void)
(declare-fun var1669-init () var1669)
(declare-fun <init>/875830710 (var1669 String) void)
(declare-const null-var71 var71)
(declare-const null-Int Int)
(declare-const null-var2674 var2674)
(declare-const null-__Array__Int__var542__ (Array Int var542))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1570 var71) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var1570 null-var71)))
(declare-const var3400 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3400 null-Int)))
(declare-const var3495 var2674) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var3495 null-var2674)))
(declare-const var3164 (Array Int var542)) ; Statement: r3 := @parameter2: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var3164 null-__Array__Int__var542__)))
(declare-const var1450 (Array Int var542)) ; Statement: r4 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var1450 null-__Array__Int__var542__)))
(declare-const var2372 (Array Int Int)) ; Statement: r5 := @parameter4: int[] 
(assert (not (= var2372 null-__Array__Int__Int__)))
(declare-const var70 String) ; Statement: r2 := @parameter5: java.lang.String 
(assert (not (= var70 null-String)))
(declare-const var393 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var393 null-Bool)))
(assert true)
;(assert (checkStartCode/-1084876908 var1570)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var1570!1 var71)
(assert true)
;(assert (checkEndCode/-651668869 var1570!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var1570!2 var71)
(define-const var1140 Int (div var3400 (to_int (^ 2 24)))) ; Statement: i1 = i0 >>> 24 
 ; Statement: if i1 == 64 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 
(assert (= var1140 64)) ; Cond: i1 == 64 
;(assert (var1463_checkTypeRefAndPath/-5268865 var3400 var3495)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 

(declare-const var3400!1 Int)
(declare-const var3495!1 var2674)
;(assert (var71_checkDesc/2075147271 var70 (ite (= 1 0) true false))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkDesc(java.lang.String,boolean)>(r2, 0) 

(declare-const var70!1 String)
(declare-const var401 Int)
 ; Statement: if r3 == null goto $r24 = new java.lang.IllegalArgumentException 
(assert (= var3164 null-__Array__Int__var542__)) ; Cond: r3 == null 
(define-const var3306 var1669 var1669-init) ; Statement: $r24 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3306 "Invalid start, end and index arrays (must be non null and of identical length")) ; Statement: specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid start, end and index arrays (must be non null and of identical length") 

(declare-const var3306!1 var1669)
(declare-const var1036 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var1463_checkTypeRefAndPath/-5268865=([int, jdk.internal.org.objectweb.asm.TypePath], void), var71_checkDesc/2075147271=([java.lang.String, boolean], void), var1669-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var71=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var1570=r0, var3400=i0, var2674=jdk.internal.org.objectweb.asm.TypePath, var3495=r1, var542=jdk.internal.org.objectweb.asm.Label, var3164=r3, var1450=r4, var2372=r5, var70=r2, var1922=null_type, var393=z0, var1140=i1, var1463=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var401=0, var1669=java.lang.IllegalArgumentException, var3306=$r24, var1036="Invalid start, end and index arrays (must be non null and of identical length"}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var71, r0=var1570, i0=var3400, jdk.internal.org.objectweb.asm.TypePath=var2674, r1=var3495, jdk.internal.org.objectweb.asm.Label=var542, r3=var3164, r4=var1450, r5=var2372, r2=var70, null_type=var1922, z0=var393, i1=var1140, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var1463, 0=var401, java.lang.IllegalArgumentException=var1669, $r24=var3306, "Invalid start, end and index arrays (must be non null and of identical length"=var1036}
;seq 
;cnt {}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r3 := @parameter2: jdk.internal.org.objectweb.asm.Label[];	r4 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	r5 := @parameter4: int[];	r2 := @parameter5: java.lang.String;	z0 := @parameter6: boolean;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	i1 = i0 >>> 24;	if i1 == 64 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkDesc(java.lang.String,boolean)>(r2, 0);	if r3 == null goto $r24 = new java.lang.IllegalArgumentException;	$r24 = new java.lang.IllegalArgumentException;	specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid start, end and index arrays (must be non null and of identical length");	throw $r24
;block_num 3