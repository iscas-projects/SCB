(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3464 0)
(declare-sort var2287 0)
(declare-sort var1301 0)
(declare-sort var2602 0)
(declare-sort var2336 0)
(declare-sort var2651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkState/-890920113 (var3464) void)
(declare-fun var3464_checkAccess/1241302470 (Int Int) void)
(declare-fun var1301_checkMethodDesc/52528362 (String) void)
(declare-fun checkDataFlow/-374902243 (var3464) Bool)
(declare-fun var1301-init () var1301)
(declare-fun visitMethod/-733040681 (var2336 Int String String String (Array Int String)) var2602)
(declare-fun cast-from-var3464-to-var2336 (var3464) var2336)
(declare-fun labels/-374902243 (var3464) var2651)
(declare-fun <init>/-157784743 (var1301 Int String String var2602 var2651) void)
(declare-fun version/-374902243 (var3464) Int)
(declare-fun version/-1612590968 (var1301) Int)
(declare-const null-var3464 var3464)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1301 var1301)
(declare-const var402 var3464) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckClassAdapter 
(assert (not (= var402 null-var3464)))
(declare-const var2727 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2727 null-Int)))
(declare-const var1150 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1150 null-String)))
(declare-const var599 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var599 null-String)))
(declare-const var1158 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var1158 null-String)))
(declare-const var1769 (Array Int String)) ; Statement: r5 := @parameter4: java.lang.String[] 
(assert (not (= var1769 null-__Array__Int__String__)))
(assert true)
;(assert (checkState/-890920113 var402)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkState()>() 

(declare-const var402!1 var3464)
;(assert (var3464_checkAccess/1241302470 var2727 400895)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkAccess(int,int)>(i0, 400895) 

(declare-const var2727!1 Int)
(declare-const var2239 Int)
(define-const var1215 String "<init>") ; Statement: $r2 = "<init>" 
(assert true)
(define-const var1761 Bool (= var1215 var1150)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3) 
(assert (not (= (ite var1761 1 0) 0))) ; Cond: $z0 != 0 
;(assert (var1301_checkMethodDesc/52528362 var599)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3) 

(declare-const var599!1 String)
 ; Statement: if r4 == null goto (branch) 
(assert (= var1158 null-String)) ; Cond: r4 == null 
 ; Statement: if r5 == null goto $z1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: boolean checkDataFlow> 
(assert (= var1769 null-__Array__Int__String__)) ; Cond: r5 == null 
(define-const var809 Bool (checkDataFlow/-374902243 var402!1)) ; Statement: $z1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: boolean checkDataFlow> 
 ; Statement: if $z1 == 0 goto $r6 = new jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= (ite var809 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3636 var1301 var1301-init) ; Statement: $r9 = new jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert true)
(define-const var1288 var2602 (visitMethod/-733040681 (cast-from-var3464-to-var2336 var402!1) var2727!1 var1150 var599!1 var1158 var1769)) ; Statement: $r11 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r3, r4, r5) 
(define-const var3871 var2651 (labels/-374902243 var402!1)) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: java.util.Map labels> 
(assert true)
;(assert (<init>/-157784743 var3636 var2727!1 var1150 var599!1 var1288 var3871)) ; Statement: specialinvoke $r9.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void <init>(int,java.lang.String,java.lang.String,jdk.internal.org.objectweb.asm.MethodVisitor,java.util.Map)>(i0, r1, r3, $r11, $r10) 

(declare-const var3636!1 var1301)
(declare-const var2727!2 Int)
(declare-const var1150!1 String)
(declare-const var599!2 String)
(declare-const var1288!1 var2602)
(declare-const var3871!1 var2651)
(define-const var1819 var1301 var3636!1) ; Statement: r18 = $r9 
 ; Statement: goto [?= $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int version>] 
(assert true) ; Non Conditional
(define-const var3258 Int (version/-374902243 var402!1)) ; Statement: $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int version> 
(declare-const var1819!1 var1301)
(assert (not (= var1819!1 null-var1301)))
(assert (= (version/-1612590968 var1819!1) var3258)) ; Statement: r18.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version> = $i1 
 ; Statement: return r18 
(check-sat)
(get-model)
(get-unsat-core)
; {checkState/-890920113=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], void), var3464_checkAccess/1241302470=([int, int], void), var1301_checkMethodDesc/52528362=([java.lang.String], void), checkDataFlow/-374902243=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], boolean), var1301-init=([], jdk.internal.org.objectweb.asm.util.CheckMethodAdapter), visitMethod/-733040681=([jdk.internal.org.objectweb.asm.ClassVisitor, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]], jdk.internal.org.objectweb.asm.MethodVisitor), cast-from-var3464-to-var2336=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], jdk.internal.org.objectweb.asm.ClassVisitor), labels/-374902243=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], java.util.Map), <init>/-157784743=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, int, java.lang.String, java.lang.String, jdk.internal.org.objectweb.asm.MethodVisitor, java.util.Map], void), version/-374902243=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], int), version/-1612590968=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], int)}
; {var3464=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var402=r0, var2727=i0, var1150=r1, var2287=null_type, var599=r3, var1158=r4, var1769=r5, var2239=400895, var1215=$r2, var1761=$z0, var1301=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var809=$z1, var3636=$r9, var2602=jdk.internal.org.objectweb.asm.MethodVisitor, var2336=jdk.internal.org.objectweb.asm.ClassVisitor, var1288=$r11, var2651=java.util.Map, var3871=$r10, var1819=r18, var3258=$i1}
; {jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var3464, r0=var402, i0=var2727, r1=var1150, null_type=var2287, r3=var599, r4=var1158, r5=var1769, 400895=var2239, $r2=var1215, $z0=var1761, jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var1301, $z1=var809, $r9=var3636, jdk.internal.org.objectweb.asm.MethodVisitor=var2602, jdk.internal.org.objectweb.asm.ClassVisitor=var2336, $r11=var1288, java.util.Map=var2651, $r10=var3871, r18=var1819, $i1=var3258}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckClassAdapter;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.String[];	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkState()>();	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkAccess(int,int)>(i0, 400895);	$r2 = "<init>";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3);	if r4 == null goto (branch);	if r5 == null goto $z1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: boolean checkDataFlow>;	$z1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: boolean checkDataFlow>;	if $z1 == 0 goto $r6 = new jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	$r9 = new jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	$r11 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r3, r4, r5);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: java.util.Map labels>;	specialinvoke $r9.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void <init>(int,java.lang.String,java.lang.String,jdk.internal.org.objectweb.asm.MethodVisitor,java.util.Map)>(i0, r1, r3, $r11, $r10);	r18 = $r9;	goto [?= $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int version>];	$i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int version>;	r18.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version> = $i1;	return r18
;block_num 6