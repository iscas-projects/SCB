(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2708 0)
(declare-sort var846 0)
(declare-sort var1888 0)
(declare-sort var1861 0)
(declare-sort var2933 0)
(declare-sort var3508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkState/-890920113 (var2708) void)
(declare-fun var2708_checkAccess/1241302470 (Int Int) void)
(declare-fun var1888_checkMethodDesc/52528362 (String) void)
(declare-fun checkDataFlow/-374902243 (var2708) Bool)
(declare-fun var1888-init () var1888)
(declare-fun visitMethod/-733040681 (var2933 Int String String String (Array Int String)) var1861)
(declare-fun cast-from-var2708-to-var2933 (var2708) var2933)
(declare-fun labels/-374902243 (var2708) var3508)
(declare-fun <init>/-1380815844 (var1888 var1861 var3508) void)
(declare-fun version/-374902243 (var2708) Int)
(declare-fun version/-1612590968 (var1888) Int)
(declare-const null-var2708 var2708)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1888 var1888)
(declare-const var2184 var2708) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckClassAdapter 
(assert (not (= var2184 null-var2708)))
(declare-const var3038 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3038 null-Int)))
(declare-const var1831 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1831 null-String)))
(declare-const var3815 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3815 null-String)))
(declare-const var128 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var128 null-String)))
(declare-const var1867 (Array Int String)) ; Statement: r5 := @parameter4: java.lang.String[] 
(assert (not (= var1867 null-__Array__Int__String__)))
(assert true)
;(assert (checkState/-890920113 var2184)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkState()>() 

(declare-const var2184!1 var2708)
;(assert (var2708_checkAccess/1241302470 var3038 400895)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkAccess(int,int)>(i0, 400895) 

(declare-const var3038!1 Int)
(declare-const var2059 Int)
(define-const var1145 String "<init>") ; Statement: $r2 = "<init>" 
(assert true)
(define-const var840 Bool (= var1145 var1831)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3) 
(assert (not (= (ite var840 1 0) 0))) ; Cond: $z0 != 0 
;(assert (var1888_checkMethodDesc/52528362 var3815)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3) 

(declare-const var3815!1 String)
 ; Statement: if r4 == null goto (branch) 
(assert (= var128 null-String)) ; Cond: r4 == null 
 ; Statement: if r5 == null goto $z1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: boolean checkDataFlow> 
(assert (= var1867 null-__Array__Int__String__)) ; Cond: r5 == null 
(define-const var2121 Bool (checkDataFlow/-374902243 var2184!1)) ; Statement: $z1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: boolean checkDataFlow> 
 ; Statement: if $z1 == 0 goto $r6 = new jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (= (ite var2121 1 0) 0)) ; Cond: $z1 == 0 
(define-const var310 var1888 var1888-init) ; Statement: $r6 = new jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert true)
(define-const var1029 var1861 (visitMethod/-733040681 (cast-from-var2708-to-var2933 var2184!1) var3038!1 var1831 var3815!1 var128 var1867)) ; Statement: $r8 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r3, r4, r5) 
(define-const var3495 var3508 (labels/-374902243 var2184!1)) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: java.util.Map labels> 
(assert true)
;(assert (<init>/-1380815844 var310 var1029 var3495)) ; Statement: specialinvoke $r6.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void <init>(jdk.internal.org.objectweb.asm.MethodVisitor,java.util.Map)>($r8, $r7) 

(declare-const var310!1 var1888)
(declare-const var1029!1 var1861)
(declare-const var3495!1 var3508)
(define-const var1653 var1888 var310!1) ; Statement: r18 = $r6 
(assert true) ; Non Conditional
(define-const var3150 Int (version/-374902243 var2184!1)) ; Statement: $i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int version> 
(declare-const var1653!1 var1888)
(assert (not (= var1653!1 null-var1888)))
(assert (= (version/-1612590968 var1653!1) var3150)) ; Statement: r18.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version> = $i1 
 ; Statement: return r18 
(check-sat)
(get-model)
(get-unsat-core)
; {checkState/-890920113=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], void), var2708_checkAccess/1241302470=([int, int], void), var1888_checkMethodDesc/52528362=([java.lang.String], void), checkDataFlow/-374902243=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], boolean), var1888-init=([], jdk.internal.org.objectweb.asm.util.CheckMethodAdapter), visitMethod/-733040681=([jdk.internal.org.objectweb.asm.ClassVisitor, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]], jdk.internal.org.objectweb.asm.MethodVisitor), cast-from-var2708-to-var2933=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], jdk.internal.org.objectweb.asm.ClassVisitor), labels/-374902243=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], java.util.Map), <init>/-1380815844=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, jdk.internal.org.objectweb.asm.MethodVisitor, java.util.Map], void), version/-374902243=([jdk.internal.org.objectweb.asm.util.CheckClassAdapter], int), version/-1612590968=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], int)}
; {var2708=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var2184=r0, var3038=i0, var1831=r1, var846=null_type, var3815=r3, var128=r4, var1867=r5, var2059=400895, var1145=$r2, var840=$z0, var1888=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var2121=$z1, var310=$r6, var1861=jdk.internal.org.objectweb.asm.MethodVisitor, var2933=jdk.internal.org.objectweb.asm.ClassVisitor, var1029=$r8, var3508=java.util.Map, var3495=$r7, var1653=r18, var3150=$i1}
; {jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var2708, r0=var2184, i0=var3038, r1=var1831, null_type=var846, r3=var3815, r4=var128, r5=var1867, 400895=var2059, $r2=var1145, $z0=var840, jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var1888, $z1=var2121, $r6=var310, jdk.internal.org.objectweb.asm.MethodVisitor=var1861, jdk.internal.org.objectweb.asm.ClassVisitor=var2933, $r8=var1029, java.util.Map=var3508, $r7=var3495, r18=var1653, $i1=var3150}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckClassAdapter;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.String[];	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkState()>();	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkAccess(int,int)>(i0, 400895);	$r2 = "<init>";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r3);	if r4 == null goto (branch);	if r5 == null goto $z1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: boolean checkDataFlow>;	$z1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: boolean checkDataFlow>;	if $z1 == 0 goto $r6 = new jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	$r6 = new jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	$r8 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r3, r4, r5);	$r7 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: java.util.Map labels>;	specialinvoke $r6.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void <init>(jdk.internal.org.objectweb.asm.MethodVisitor,java.util.Map)>($r8, $r7);	r18 = $r6;	$i1 = r0.<jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int version>;	r18.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version> = $i1;	return r18
;block_num 6