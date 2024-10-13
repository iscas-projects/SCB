(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2782 0)
(declare-sort var2168 0)
(declare-sort var3651 0)
(declare-sort var1214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkEnd/674844227 (var2782) void)
(declare-fun var1214-init () var1214)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1214 String) void)
(declare-const null-var2782 var2782)
(declare-const null-Int Int)
(declare-const null-var2168 var2168)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var854 var2782) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckFieldAdapter 
(assert (not (= var854 null-var2782)))
(declare-const var1208 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1208 null-Int)))
(declare-const var3668 var2168) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var3668 null-var2168)))
(declare-const var3035 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3035 null-String)))
(declare-const var2024 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2024 null-Bool)))
(assert true)
;(assert (checkEnd/674844227 var854)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckFieldAdapter: void checkEnd()>() 

(declare-const var854!1 var2782)
(define-const var939 Int (div var1208 (to_int (^ 2 24)))) ; Statement: i1 = i0 >>> 24 
 ; Statement: if i1 == 19 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 
(assert (not (= var939 19))) ; Negate: Cond: i1 == 19  
(define-const var1419 var1214 var1214-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var396 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var396)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var396!1 String)
(assert (= var396!1 ""))
(assert true)
(define-const var3293 String (append/672562846 var396!1 "Invalid type reference sort 0x")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type reference sort 0x") 
(declare-const var396!2 String)
(assert (= var396!2 (str.++ var396!1 "Invalid type reference sort 0x")))
(define-const var2064 String (Int_toHexString/1865784998 var939)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1) 
(assert true)
(define-const var1039 String (append/672562846 var3293 var2064)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3293!1 String)
(assert (= var3293!1 (str.++ var3293 var2064)))
(assert true)
(define-const var1555 String (toString/-2075883882 var1039)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1419 var1555)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1419!1 var1214)
(declare-const var1555!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {checkEnd/674844227=([jdk.internal.org.objectweb.asm.util.CheckFieldAdapter], void), var1214-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2782=jdk.internal.org.objectweb.asm.util.CheckFieldAdapter, var854=r0, var1208=i0, var2168=jdk.internal.org.objectweb.asm.TypePath, var3668=r1, var3035=r2, var3651=null_type, var2024=z0, var939=i1, var1214=java.lang.IllegalArgumentException, var1419=$r5, var396=$r6, var3293=$r8, var2064=$r7, var1039=$r9, var1555=$r10}
; {jdk.internal.org.objectweb.asm.util.CheckFieldAdapter=var2782, r0=var854, i0=var1208, jdk.internal.org.objectweb.asm.TypePath=var2168, r1=var3668, r2=var3035, null_type=var3651, z0=var2024, i1=var939, java.lang.IllegalArgumentException=var1214, $r5=var1419, $r6=var396, $r8=var3293, $r7=var2064, $r9=var1039, $r10=var1555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckFieldAdapter;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r2 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckFieldAdapter: void checkEnd()>();	i1 = i0 >>> 24;	if i1 == 19 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type reference sort 0x");	$r7 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2