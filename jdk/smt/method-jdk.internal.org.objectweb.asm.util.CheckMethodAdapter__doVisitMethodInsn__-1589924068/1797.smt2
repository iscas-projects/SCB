(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2225 0)
(declare-sort var582 0)
(declare-sort var920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var2225) void)
(declare-fun checkEndCode/-651668869 (var2225) void)
(declare-fun var2225_checkOpcode/1313284371 (Int Int) void)
(declare-fun var2225_checkInternalName/565783495 (String String) void)
(declare-fun var2225_checkMethodDesc/52528362 (String) void)
(declare-fun var920-init () var920)
(declare-fun <init>/875830710 (var920 String) void)
(declare-const null-var2225 var2225)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3496 var2225) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var3496 null-var2225)))
(declare-const var529 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var529 null-Int)))
(declare-const var3826 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3826 null-String)))
(declare-const var3581 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3581 null-String)))
(declare-const var3425 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var3425 null-String)))
(declare-const var2422 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2422 null-Bool)))
(assert true)
;(assert (checkStartCode/-1084876908 var3496)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var3496!1 var2225)
(assert true)
;(assert (checkEndCode/-651668869 var3496!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var3496!2 var2225)
;(assert (var2225_checkOpcode/1313284371 var529 5)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkOpcode(int,int)>(i0, 5) 

(declare-const var529!1 Int)
(declare-const var2393 Int)
 ; Statement: if i0 != 183 goto $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version> 
(assert (not (not (= var529!1 183)))) ; Negate: Cond: i0 != 183  
(define-const var3626 String "<init>") ; Statement: $r8 = "<init>" 
(assert true)
(define-const var3588 Bool (= var3626 var3581)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z1 != 0 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkInternalName(java.lang.String,java.lang.String)>(r2, "owner") 
(assert (not (= (ite var3588 1 0) 0))) ; Cond: $z1 != 0 
;(assert (var2225_checkInternalName/565783495 var3826 "owner")) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkInternalName(java.lang.String,java.lang.String)>(r2, "owner") 

(declare-const var3826!1 String)
(declare-const var1992 String)
;(assert (var2225_checkMethodDesc/52528362 var3425)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3) 

(declare-const var3425!1 String)
 ; Statement: if i0 != 182 goto (branch) 
(assert (not (not (= var529!1 182)))) ; Negate: Cond: i0 != 182  
 ; Statement: if z0 == 0 goto (branch) 
(assert (not (= (ite var2422 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var308 var920 var920-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var308 "INVOKEVIRTUAL can\u0027t be used with interfaces")) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("INVOKEVIRTUAL can\'t be used with interfaces") 

(declare-const var308!1 var920)
(declare-const var3567 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var2225_checkOpcode/1313284371=([int, int], void), var2225_checkInternalName/565783495=([java.lang.String, java.lang.String], void), var2225_checkMethodDesc/52528362=([java.lang.String], void), var920-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2225=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var3496=r0, var529=i0, var3826=r2, var582=null_type, var3581=r1, var3425=r3, var2422=z0, var2393=5, var3626=$r8, var3588=$z1, var1992="owner", var920=java.lang.IllegalArgumentException, var308=$r7, var3567="INVOKEVIRTUAL can\'t be used with interfaces"}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var2225, r0=var3496, i0=var529, r2=var3826, null_type=var582, r1=var3581, r3=var3425, z0=var2422, 5=var2393, $r8=var3626, $z1=var3588, "owner"=var1992, java.lang.IllegalArgumentException=var920, $r7=var308, "INVOKEVIRTUAL can\'t be used with interfaces"=var3567}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkOpcode(int,int)>(i0, 5);	if i0 != 183 goto $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version>;	$r8 = "<init>";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z1 != 0 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkInternalName(java.lang.String,java.lang.String)>(r2, "owner");	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkInternalName(java.lang.String,java.lang.String)>(r2, "owner");	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3);	if i0 != 182 goto (branch);	if z0 == 0 goto (branch);	$r7 = new java.lang.IllegalArgumentException;	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("INVOKEVIRTUAL can\'t be used with interfaces");	throw $r7
;block_num 5