(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3482 0)
(declare-sort var1846 0)
(declare-sort var2680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var3482) void)
(declare-fun checkEndCode/-651668869 (var3482) void)
(declare-fun var3482_checkOpcode/1313284371 (Int Int) void)
(declare-fun version/-1612590968 (var3482) Int)
(declare-fun var3482_checkMethodIdentifier/1458003468 (Int String String) void)
(declare-fun var3482_checkInternalName/565783495 (String String) void)
(declare-fun var3482_checkMethodDesc/52528362 (String) void)
(declare-fun var2680-init () var2680)
(declare-fun <init>/875830710 (var2680 String) void)
(declare-const null-var3482 var3482)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2551 var3482) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var2551 null-var3482)))
(declare-const var1294 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1294 null-Int)))
(declare-const var1097 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1097 null-String)))
(declare-const var3150 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3150 null-String)))
(declare-const var2276 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var2276 null-String)))
(declare-const var1812 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1812 null-Bool)))
(assert true)
;(assert (checkStartCode/-1084876908 var2551)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var2551!1 var3482)
(assert true)
;(assert (checkEndCode/-651668869 var2551!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var2551!2 var3482)
;(assert (var3482_checkOpcode/1313284371 var1294 5)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkOpcode(int,int)>(i0, 5) 

(declare-const var1294!1 Int)
(declare-const var2378 Int)
 ; Statement: if i0 != 183 goto $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version> 
(assert (not (= var1294!1 183))) ; Cond: i0 != 183 
(define-const var822 Int (version/-1612590968 var2551!2)) ; Statement: $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version> 
;(assert (var3482_checkMethodIdentifier/1458003468 var822 var3150 "name")) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodIdentifier(int,java.lang.String,java.lang.String)>($i1, r1, "name") 

(declare-const var822!1 Int)
(declare-const var3150!1 String)
(declare-const var582 String)
(assert true) ; Non Conditional
;(assert (var3482_checkInternalName/565783495 var1097 "owner")) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkInternalName(java.lang.String,java.lang.String)>(r2, "owner") 

(declare-const var1097!1 String)
(declare-const var1932 String)
;(assert (var3482_checkMethodDesc/52528362 var2276)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3) 

(declare-const var2276!1 String)
 ; Statement: if i0 != 182 goto (branch) 
(assert (not (not (= var1294!1 182)))) ; Negate: Cond: i0 != 182  
 ; Statement: if z0 == 0 goto (branch) 
(assert (not (= (ite var1812 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3085 var2680 var2680-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3085 "INVOKEVIRTUAL can\u0027t be used with interfaces")) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("INVOKEVIRTUAL can\'t be used with interfaces") 

(declare-const var3085!1 var2680)
(declare-const var3791 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var3482_checkOpcode/1313284371=([int, int], void), version/-1612590968=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], int), var3482_checkMethodIdentifier/1458003468=([int, java.lang.String, java.lang.String], void), var3482_checkInternalName/565783495=([java.lang.String, java.lang.String], void), var3482_checkMethodDesc/52528362=([java.lang.String], void), var2680-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3482=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var2551=r0, var1294=i0, var1097=r2, var1846=null_type, var3150=r1, var2276=r3, var1812=z0, var2378=5, var822=$i1, var582="name", var1932="owner", var2680=java.lang.IllegalArgumentException, var3085=$r7, var3791="INVOKEVIRTUAL can\'t be used with interfaces"}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var3482, r0=var2551, i0=var1294, r2=var1097, null_type=var1846, r1=var3150, r3=var2276, z0=var1812, 5=var2378, $i1=var822, "name"=var582, "owner"=var1932, java.lang.IllegalArgumentException=var2680, $r7=var3085, "INVOKEVIRTUAL can\'t be used with interfaces"=var3791}
;seq 
;cnt {}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkOpcode(int,int)>(i0, 5);	if i0 != 183 goto $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version>;	$i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version>;	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodIdentifier(int,java.lang.String,java.lang.String)>($i1, r1, "name");	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkInternalName(java.lang.String,java.lang.String)>(r2, "owner");	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3);	if i0 != 182 goto (branch);	if z0 == 0 goto (branch);	$r7 = new java.lang.IllegalArgumentException;	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("INVOKEVIRTUAL can\'t be used with interfaces");	throw $r7
;block_num 5