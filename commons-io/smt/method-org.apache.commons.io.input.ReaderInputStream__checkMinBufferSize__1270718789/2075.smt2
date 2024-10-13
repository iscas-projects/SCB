(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2598 0)
(declare-sort var3620 0)
(declare-sort var3396 0)
(declare-sort var117 0)
(declare-sort var1703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3620_minBufferSize/290170227 (var2598) Float32)
(declare-fun cast-from-Int-to-Float32 (Int) Float32)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3396-init () var3396)
(declare-fun arr-var117-init () (Array Int var117))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var117 (Int) var117)
(declare-fun Float32_valueOf/-1292433465 (Float32) Float32)
(declare-fun cast-from-Float32-to-var117 (Float32) var117)
(declare-fun charset/-1130615797 (var2598) var1703)
(declare-fun displayName/-940765211 (var1703) String)
(declare-fun cast-from-String-to-var117 (String) var117)
(declare-fun String_format/1339386452 (String (Array Int var117)) String)
(declare-fun <init>/875830710 (var3396 String) void)
(declare-const null-var2598 var2598)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var117__ (Array Int var117))
(declare-const var371 var2598) ; Statement: r0 := @parameter0: java.nio.charset.CharsetEncoder 
(assert (not (= var371 null-var2598)))
(declare-const var3899 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3899 null-Int)))
(define-const var1054 Float32 (var3620_minBufferSize/290170227 var371)) ; Statement: f0 = staticinvoke <org.apache.commons.io.input.ReaderInputStream: float minBufferSize(java.nio.charset.CharsetEncoder)>(r0) 
(define-const var123 Float32 (cast-from-Int-to-Float32 var3899)) ; Statement: $f1 = (float) i0 
(define-const var911 Int (ite (fp.gt var123 var1054) 1 (ite (fp.lt var123 var1054) (- 1) 0))) ; Statement: $b1 = $f1 cmpg f0 
(define-const var215 Int (cast-from-Int-to-Int var911)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto return i0 
(assert (not (>= var215 0))) ; Negate: Cond: $i2 >= 0  
(define-const var1418 var3396 var3396-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var2507 (Array Int var117) arr-var117-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(define-const var2506 Int (Int_valueOf/-1371140006 var3899)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2507!1 (Array Int var117))
(assert (not (= var2507!1 null-__Array__Int__var117__)))
(assert (= (select var2507!1 0) (cast-from-Int-to-var117 var2506))) ; Statement: $r2[0] = $r3 
(define-const var2301 Float32 (Float32_valueOf/-1292433465 var1054)) ; Statement: $r4 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>(f0) 
(declare-const var2507!2 (Array Int var117))
(assert (not (= var2507!2 null-__Array__Int__var117__)))
(assert (= (select var2507!2 1) (cast-from-Float32-to-var117 var2301))) ; Statement: $r2[1] = $r4 
(assert true)
(define-const var1401 var1703 (charset/-1130615797 var371)) ; Statement: $r5 = virtualinvoke r0.<java.nio.charset.CharsetEncoder: java.nio.charset.Charset charset()>() 
(assert true)
(define-const var1894 String (displayName/-940765211 var1401)) ; Statement: $r6 = virtualinvoke $r5.<java.nio.charset.Charset: java.lang.String displayName()>() 
(declare-const var2507!3 (Array Int var117))
(assert (not (= var2507!3 null-__Array__Int__var117__)))
(assert (= (select var2507!3 2) (cast-from-String-to-var117 var1894))) ; Statement: $r2[2] = $r6 
(define-const var3860 String (String_format/1339386452 "Buffer size %,d must be at least %s for a CharsetEncoder %s." var2507!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Buffer size %,d must be at least %s for a CharsetEncoder %s.", $r2) 
(assert true)
;(assert (<init>/875830710 var1418 var3860)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1418!1 var3396)
(declare-const var3860!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3620_minBufferSize/290170227=([java.nio.charset.CharsetEncoder], float), cast-from-Int-to-Float32=([int], float), cast-from-Int-to-Int=([byte], int), var3396-init=([], java.lang.IllegalArgumentException), arr-var117-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var117=([java.lang.Integer], java.lang.Object), Float32_valueOf/-1292433465=([float], java.lang.Float), cast-from-Float32-to-var117=([java.lang.Float], java.lang.Object), charset/-1130615797=([java.nio.charset.CharsetEncoder], java.nio.charset.Charset), displayName/-940765211=([java.nio.charset.Charset], java.lang.String), cast-from-String-to-var117=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2598=java.nio.charset.CharsetEncoder, var371=r0, var3899=i0, var3620=org.apache.commons.io.input.ReaderInputStream, var1054=f0, var123=$f1, var911=$b1, var215=$i2, var3396=java.lang.IllegalArgumentException, var1418=$r8, var117=java.lang.Object, var2507=$r2, var2506=$r3, var2301=$r4, var1703=java.nio.charset.Charset, var1401=$r5, var1894=$r6, var3860=$r7}
; {java.nio.charset.CharsetEncoder=var2598, r0=var371, i0=var3899, org.apache.commons.io.input.ReaderInputStream=var3620, f0=var1054, $f1=var123, $b1=var911, $i2=var215, java.lang.IllegalArgumentException=var3396, $r8=var1418, java.lang.Object=var117, $r2=var2507, $r3=var2506, $r4=var2301, java.nio.charset.Charset=var1703, $r5=var1401, $r6=var1894, $r7=var3860}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.nio.charset.CharsetEncoder;	i0 := @parameter1: int;	f0 = staticinvoke <org.apache.commons.io.input.ReaderInputStream: float minBufferSize(java.nio.charset.CharsetEncoder)>(r0);	$f1 = (float) i0;	$b1 = $f1 cmpg f0;	$i2 = (int) $b1;	if $i2 >= 0 goto return i0;	$r8 = new java.lang.IllegalArgumentException;	$r2 = newarray (java.lang.Object)[3];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>(f0);	$r2[1] = $r4;	$r5 = virtualinvoke r0.<java.nio.charset.CharsetEncoder: java.nio.charset.Charset charset()>();	$r6 = virtualinvoke $r5.<java.nio.charset.Charset: java.lang.String displayName()>();	$r2[2] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Buffer size %,d must be at least %s for a CharsetEncoder %s.", $r2);	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r8
;block_num 2