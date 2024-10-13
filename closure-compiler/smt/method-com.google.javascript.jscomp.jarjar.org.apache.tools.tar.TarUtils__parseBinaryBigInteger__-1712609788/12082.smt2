(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1197 0)
(declare-sort var274 0)
(declare-sort var540 0)
(declare-sort var2297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var1197_arraycopy/-325913181 (var274 Int var274 Int Int) void)
(declare-fun cast-from-__Array__Int__Int__-to-var274 ((Array Int Int)) var274)
(declare-fun var540-init () var540)
(declare-fun <init>/-259947773 (var540 (Array Int Int)) void)
(declare-fun bitLength/-630612939 (var540) Int)
(declare-fun var2297-init () var2297)
(declare-fun arr-var274-init () (Array Int var274))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var274 (Int) var274)
(declare-fun String_format/1339386452 (String (Array Int var274)) String)
(declare-fun <init>/875830710 (var2297 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var274__ (Array Int var274))
(declare-const var228 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var228 null-__Array__Int__Int__)))
(declare-const var31 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var31 null-Int)))
(declare-const var2825 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2825 null-Int)))
(declare-const var2497 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2497 null-Bool)))
(define-const var1232 Int (- var2825 1)) ; Statement: $i1 = i0 - 1 
(define-const var785 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (byte)[$i1] 
(define-const var2138 Int (+ var31 1)) ; Statement: $i4 = i2 + 1 
(define-const var2834 Int (- var2825 1)) ; Statement: $i3 = i0 - 1 
;(assert (var1197_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var274 var228) var2138 (cast-from-__Array__Int__Int__-to-var274 var785) 0 var2834)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r1, $i4, r0, 0, $i3) 

(declare-const var228!1 (Array Int Int))
(declare-const var2138!1 Int)
(declare-const var785!1 (Array Int Int))
(declare-const var3983 Int)
(declare-const var2834!1 Int)
(define-const var2608 var540 var540-init) ; Statement: $r2 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-259947773 var2608 var785!1)) ; Statement: specialinvoke $r2.<java.math.BigInteger: void <init>(byte[])>(r0) 

(declare-const var2608!1 var540)
(declare-const var785!2 (Array Int Int))
(define-const var3500 var540 var2608!1) ; Statement: r10 = $r2 
 ; Statement: if z0 == 0 goto $i5 = virtualinvoke r10.<java.math.BigInteger: int bitLength()>() 
(assert (= (ite var2497 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3160 Int (bitLength/-630612939 var3500)) ; Statement: $i5 = virtualinvoke r10.<java.math.BigInteger: int bitLength()>() 
 ; Statement: if $i5 <= 63 goto (branch) 
(assert (not (<= var3160 63))) ; Negate: Cond: $i5 <= 63  
(define-const var1959 var2297 var2297-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var2833 (Array Int var274) arr-var274-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var3098 Int (Int_valueOf/-1371140006 var31)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2) 
(declare-const var2833!1 (Array Int var274))
(assert (not (= var2833!1 null-__Array__Int__var274__)))
(assert (= (select var2833!1 0) (cast-from-Int-to-var274 var3098))) ; Statement: $r4[0] = $r5 
(define-const var747 Int (Int_valueOf/-1371140006 var2825)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2833!2 (Array Int var274))
(assert (not (= var2833!2 null-__Array__Int__var274__)))
(assert (= (select var2833!2 1) (cast-from-Int-to-var274 var747))) ; Statement: $r4[1] = $r6 
(define-const var3639 String (String_format/1339386452 "At offset %d, %d byte binary number exceeds maximum signed long value" var2833!2)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("At offset %d, %d byte binary number exceeds maximum signed long value", $r4) 
(assert true)
;(assert (<init>/875830710 var1959 var3639)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1959!1 var2297)
(declare-const var3639!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], byte[]), var1197_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__Int__-to-var274=([byte[]], java.lang.Object), var540-init=([], java.math.BigInteger), <init>/-259947773=([java.math.BigInteger, byte[]], void), bitLength/-630612939=([java.math.BigInteger], int), var2297-init=([], java.lang.IllegalArgumentException), arr-var274-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var274=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var228=r1, var31=i2, var2825=i0, var2497=z0, var1232=$i1, var785=r0, var2138=$i4, var2834=$i3, var1197=java.lang.System, var274=java.lang.Object, var3983=0, var540=java.math.BigInteger, var2608=$r2, var3500=r10, var3160=$i5, var2297=java.lang.IllegalArgumentException, var1959=$r3, var2833=$r4, var3098=$r5, var747=$r6, var3639=$r7}
; {r1=var228, i2=var31, i0=var2825, z0=var2497, $i1=var1232, r0=var785, $i4=var2138, $i3=var2834, java.lang.System=var1197, java.lang.Object=var274, 0=var3983, java.math.BigInteger=var540, $r2=var2608, r10=var3500, $i5=var3160, java.lang.IllegalArgumentException=var2297, $r3=var1959, $r4=var2833, $r5=var3098, $r6=var747, $r7=var3639}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: byte[];	i2 := @parameter1: int;	i0 := @parameter2: int;	z0 := @parameter3: boolean;	$i1 = i0 - 1;	r0 = newarray (byte)[$i1];	$i4 = i2 + 1;	$i3 = i0 - 1;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r1, $i4, r0, 0, $i3);	$r2 = new java.math.BigInteger;	specialinvoke $r2.<java.math.BigInteger: void <init>(byte[])>(r0);	r10 = $r2;	if z0 == 0 goto $i5 = virtualinvoke r10.<java.math.BigInteger: int bitLength()>();	$i5 = virtualinvoke r10.<java.math.BigInteger: int bitLength()>();	if $i5 <= 63 goto (branch);	$r3 = new java.lang.IllegalArgumentException;	$r4 = newarray (java.lang.Object)[2];	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2);	$r4[0] = $r5;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r4[1] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("At offset %d, %d byte binary number exceeds maximum signed long value", $r4);	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 3