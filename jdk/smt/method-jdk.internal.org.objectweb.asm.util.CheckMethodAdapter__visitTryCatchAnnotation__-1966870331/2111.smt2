(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1015 0)
(declare-sort var3008 0)
(declare-sort var1541 0)
(declare-sort var3296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var1015) void)
(declare-fun checkEndCode/-651668869 (var1015) void)
(declare-fun var3296-init () var3296)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3296 String) void)
(declare-const null-var1015 var1015)
(declare-const null-Int Int)
(declare-const null-var3008 var3008)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1230 var1015) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var1230 null-var1015)))
(declare-const var1940 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1940 null-Int)))
(declare-const var3916 var3008) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var3916 null-var3008)))
(declare-const var2140 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2140 null-String)))
(declare-const var1394 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1394 null-Bool)))
(assert true)
;(assert (checkStartCode/-1084876908 var1230)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var1230!1 var1015)
(assert true)
;(assert (checkEndCode/-651668869 var1230!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var1230!2 var1015)
(define-const var1506 Int (div var1940 (to_int (^ 2 24)))) ; Statement: i1 = i0 >>> 24 
 ; Statement: if i1 == 66 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 
(assert (not (= var1506 66))) ; Negate: Cond: i1 == 66  
(define-const var1835 var3296 var3296-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var386 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var386)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var386!1 String)
(assert (= var386!1 ""))
(assert true)
(define-const var2679 String (append/672562846 var386!1 "Invalid type reference sort 0x")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type reference sort 0x") 
(declare-const var386!2 String)
(assert (= var386!2 (str.++ var386!1 "Invalid type reference sort 0x")))
(define-const var318 String (Int_toHexString/1865784998 var1506)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1) 
(assert true)
(define-const var2715 String (append/672562846 var2679 var318)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2679!1 String)
(assert (= var2679!1 (str.++ var2679 var318)))
(assert true)
(define-const var2170 String (toString/-2075883882 var2715)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1835 var2170)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1835!1 var3296)
(declare-const var2170!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var3296-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1015=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var1230=r0, var1940=i0, var3008=jdk.internal.org.objectweb.asm.TypePath, var3916=r1, var2140=r2, var1541=null_type, var1394=z0, var1506=i1, var3296=java.lang.IllegalArgumentException, var1835=$r5, var386=$r6, var2679=$r8, var318=$r7, var2715=$r9, var2170=$r10}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var1015, r0=var1230, i0=var1940, jdk.internal.org.objectweb.asm.TypePath=var3008, r1=var3916, r2=var2140, null_type=var1541, z0=var1394, i1=var1506, java.lang.IllegalArgumentException=var3296, $r5=var1835, $r6=var386, $r8=var2679, $r7=var318, $r9=var2715, $r10=var2170}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r2 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	i1 = i0 >>> 24;	if i1 == 66 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type reference sort 0x");	$r7 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2