(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var714 0)
(declare-sort var1095 0)
(declare-sort var545 0)
(declare-sort var883 0)
(declare-sort var1915 0)
(declare-sort var3222 0)
(declare-sort var1585 0)
(declare-sort var3934 0)
(declare-sort var884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1420958705 (var883) void)
(declare-fun cast-from-var714-to-var883 (var714) var883)
(declare-fun var1915-init () var1915)
(declare-fun <init>/-1300283768 (var1915) void)
(declare-fun blocks/-466318061 (var714) var1915)
(declare-fun currentBlock/-466318061 (var714) var3222)
(declare-fun var1585-init () var1585)
(declare-fun arr-var884-init () (Array Int var884))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var884 (Int) var884)
(declare-fun String_format/-647569892 (var3934 String (Array Int var884)) String)
(declare-fun <init>/875830710 (var1585 String) void)
(declare-const null-var714 var714)
(declare-const null-Int Int)
(declare-const null-var1095 var1095)
(declare-const null-var545 var545)
(declare-const var714-EMPTY var3222)
(declare-const var3934-ROOT var3934)
(declare-const null-__Array__Int__var884__ (Array Int var884))
(declare-const var2239 var714) ; Statement: r0 := @this: org.apache.lucene.store.ByteBuffersDataOutput 
(assert (not (= var2239 null-var714)))
(declare-const var3093 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3093 null-Int)))
(declare-const var395 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var395 null-Int)))
(declare-const var3480 var1095) ; Statement: r3 := @parameter2: java.util.function.IntFunction 
(assert (not (= var3480 null-var1095)))
(declare-const var3350 var545) ; Statement: r6 := @parameter3: java.util.function.Consumer 
(assert (not (= var3350 null-var545)))
(assert true)
;(assert (<init>/-1420958705 (cast-from-var714-to-var883 var2239))) ; Statement: specialinvoke r0.<org.apache.lucene.store.DataOutput: void <init>()>() 

(declare-const var2239!1 var714)
(define-const var1897 var1915 var1915-init) ; Statement: $r1 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var1897)) ; Statement: specialinvoke $r1.<java.util.ArrayDeque: void <init>()>() 

(declare-const var1897!1 var1915)
(declare-const var2239!2 var714)
(assert (not (= var2239!2 null-var714)))
(assert (= (blocks/-466318061 var2239!2) var1897!1)) ; Statement: r0.<org.apache.lucene.store.ByteBuffersDataOutput: java.util.ArrayDeque blocks> = $r1 
(define-const var491 var3222 var714-EMPTY) ; Statement: $r2 = <org.apache.lucene.store.ByteBuffersDataOutput: java.nio.ByteBuffer EMPTY> 
(declare-const var2239!3 var714)
(assert (not (= var2239!3 null-var714)))
(assert (= (currentBlock/-466318061 var2239!3) var491)) ; Statement: r0.<org.apache.lucene.store.ByteBuffersDataOutput: java.nio.ByteBuffer currentBlock> = $r2 
 ; Statement: if i0 >= 1 goto (branch) 
(assert (not (>= var3093 1))) ; Negate: Cond: i0 >= 1  
(define-const var1107 var1585 var1585-init) ; Statement: $r21 = new java.lang.IllegalArgumentException 
(define-const var1268 var3934 var3934-ROOT) ; Statement: $r23 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2468 (Array Int var884) arr-var884-init) ; Statement: $r22 = newarray (java.lang.Object)[2] 
(define-const var1843 Int (Int_valueOf/-1371140006 var3093)) ; Statement: $r24 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2468!1 (Array Int var884))
(assert (not (= var2468!1 null-__Array__Int__var884__)))
(assert (= (select var2468!1 0) (cast-from-Int-to-var884 var1843))) ; Statement: $r22[0] = $r24 
(define-const var2503 Int (Int_valueOf/-1371140006 1)) ; Statement: $r25 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var2468!2 (Array Int var884))
(assert (not (= var2468!2 null-__Array__Int__var884__)))
(assert (= (select var2468!2 1) (cast-from-Int-to-var884 var2503))) ; Statement: $r22[1] = $r25 
(define-const var743 String (String_format/-647569892 var1268 "minBitsPerBlock (%s) too small, must be at least %s" var2468!2)) ; Statement: $r26 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r23, "minBitsPerBlock (%s) too small, must be at least %s", $r22) 
(assert true)
;(assert (<init>/875830710 var1107 var743)) ; Statement: specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26) 

(declare-const var1107!1 var1585)
(declare-const var743!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1420958705=([org.apache.lucene.store.DataOutput], void), cast-from-var714-to-var883=([org.apache.lucene.store.ByteBuffersDataOutput], org.apache.lucene.store.DataOutput), var1915-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), blocks/-466318061=([org.apache.lucene.store.ByteBuffersDataOutput], java.util.ArrayDeque), currentBlock/-466318061=([org.apache.lucene.store.ByteBuffersDataOutput], java.nio.ByteBuffer), var1585-init=([], java.lang.IllegalArgumentException), arr-var884-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var884=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var714=org.apache.lucene.store.ByteBuffersDataOutput, var2239=r0, var3093=i0, var395=i1, var1095=java.util.function.IntFunction, var3480=r3, var545=java.util.function.Consumer, var3350=r6, var883=org.apache.lucene.store.DataOutput, var1915=java.util.ArrayDeque, var1897=$r1, var3222=java.nio.ByteBuffer, var491=$r2, var1585=java.lang.IllegalArgumentException, var1107=$r21, var3934=java.util.Locale, var1268=$r23, var884=java.lang.Object, var2468=$r22, var1843=$r24, var2503=$r25, var743=$r26}
; {org.apache.lucene.store.ByteBuffersDataOutput=var714, r0=var2239, i0=var3093, i1=var395, java.util.function.IntFunction=var1095, r3=var3480, java.util.function.Consumer=var545, r6=var3350, org.apache.lucene.store.DataOutput=var883, java.util.ArrayDeque=var1915, $r1=var1897, java.nio.ByteBuffer=var3222, $r2=var491, java.lang.IllegalArgumentException=var1585, $r21=var1107, java.util.Locale=var3934, $r23=var1268, java.lang.Object=var884, $r22=var2468, $r24=var1843, $r25=var2503, $r26=var743}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.lucene.store.ByteBuffersDataOutput;	i0 := @parameter0: int;	i1 := @parameter1: int;	r3 := @parameter2: java.util.function.IntFunction;	r6 := @parameter3: java.util.function.Consumer;	specialinvoke r0.<org.apache.lucene.store.DataOutput: void <init>()>();	$r1 = new java.util.ArrayDeque;	specialinvoke $r1.<java.util.ArrayDeque: void <init>()>();	r0.<org.apache.lucene.store.ByteBuffersDataOutput: java.util.ArrayDeque blocks> = $r1;	$r2 = <org.apache.lucene.store.ByteBuffersDataOutput: java.nio.ByteBuffer EMPTY>;	r0.<org.apache.lucene.store.ByteBuffersDataOutput: java.nio.ByteBuffer currentBlock> = $r2;	if i0 >= 1 goto (branch);	$r21 = new java.lang.IllegalArgumentException;	$r23 = <java.util.Locale: java.util.Locale ROOT>;	$r22 = newarray (java.lang.Object)[2];	$r24 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r22[0] = $r24;	$r25 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r22[1] = $r25;	$r26 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r23, "minBitsPerBlock (%s) too small, must be at least %s", $r22);	specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26);	throw $r21
;block_num 2