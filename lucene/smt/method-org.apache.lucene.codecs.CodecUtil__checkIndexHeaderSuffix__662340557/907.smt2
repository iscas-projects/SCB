(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3341 0)
(declare-sort var2364 0)
(declare-sort var3348 0)
(declare-sort var1518 0)
(declare-sort var3878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readByte/357530894 (var3341) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun readBytes/-1411431715 (var3341 (Array Int Int) Int Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var3348) void)
(declare-fun var3878-init () var3878)
(declare-fun <init>/571395255 (var3878 String var3341) void)
(declare-const null-var3341 var3341)
(declare-const null-String String)
(declare-const var1518-UTF_8 var3348)
(declare-const var3825 var3341) ; Statement: r0 := @parameter0: org.apache.lucene.store.DataInput 
(assert (not (= var3825 null-var3341)))
(declare-const var1100 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1100 null-String)))
(assert true)
(define-const var1842 Int (readByte/357530894 var3825)) ; Statement: $b0 = virtualinvoke r0.<org.apache.lucene.store.DataInput: byte readByte()>() 
(define-const var3768 Int (cast-from-Int-to-Int var1842)) ; Statement: $s3 = (short) $b0 
(define-const var2373 Int (bv2nat (bvand ((_ int2bv 64) var3768) ((_ int2bv 64) 255)))) ; Statement: s1 = $s3 & 255 
(define-const var207 Int (cast-from-Int-to-Int var2373)) ; Statement: $i4 = (int) s1 
(define-const var2242 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[$i4] 
(define-const var1766 Int (getLength-Arr-Int-1 var2242)) ; Statement: $i2 = lengthof r1 
(assert true)
;(assert (readBytes/-1411431715 var3825 var2242 0 var1766)) ; Statement: virtualinvoke r0.<org.apache.lucene.store.DataInput: void readBytes(byte[],int,int)>(r1, 0, $i2) 

(declare-const var3825!1 var3341)
(declare-const var2242!1 (Array Int Int))
(declare-const var1878 Int)
(declare-const var1766!1 Int)
(define-const var2509 String String-init) ; Statement: $r7 = new java.lang.String 
(define-const var2472 var3348 var1518-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var2509 var2242!1 var2472)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3) 

(declare-const var2509!1 String)
(declare-const var2242!2 (Array Int Int))
(declare-const var2472!1 var3348)
(assert true)
(define-const var1502 Bool (= var2509!1 var1100)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto return $r7 
(assert (not (not (= (ite var1502 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1174 var3878 var3878-init) ; Statement: $r8 = new org.apache.lucene.index.CorruptIndexException 
(define-const var3967 String (str.++ "file mismatch, expected suffix=\u0001, got=\u0001" var1100 var2509!1)) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r4, $r7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("file mismatch, expected suffix=\u0001, got=\u0001") 
(assert true)
;(assert (<init>/571395255 var1174 var3967 var3825!1)) ; Statement: specialinvoke $r8.<org.apache.lucene.index.CorruptIndexException: void <init>(java.lang.String,org.apache.lucene.store.DataInput)>($r6, r0) 

(declare-const var1174!1 var3878)
(declare-const var3967!1 String)
(declare-const var3825!2 var3341)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readByte/357530894=([org.apache.lucene.store.DataInput], byte), cast-from-Int-to-Int=([byte], short), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), readBytes/-1411431715=([org.apache.lucene.store.DataInput, byte[], int, int], void), String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void), var3878-init=([], org.apache.lucene.index.CorruptIndexException), <init>/571395255=([org.apache.lucene.index.CorruptIndexException, java.lang.String, org.apache.lucene.store.DataInput], void)}
; {var3341=org.apache.lucene.store.DataInput, var3825=r0, var1100=r4, var2364=null_type, var1842=$b0, var3768=$s3, var2373=s1, var207=$i4, var2242=r1, var1766=$i2, var1878=0, var2509=$r7, var3348=java.nio.charset.Charset, var1518=java.nio.charset.StandardCharsets, var2472=$r3, var1502=$z0, var3878=org.apache.lucene.index.CorruptIndexException, var1174=$r8, var3967=$r6}
; {org.apache.lucene.store.DataInput=var3341, r0=var3825, r4=var1100, null_type=var2364, $b0=var1842, $s3=var3768, s1=var2373, $i4=var207, r1=var2242, $i2=var1766, 0=var1878, $r7=var2509, java.nio.charset.Charset=var3348, java.nio.charset.StandardCharsets=var1518, $r3=var2472, $z0=var1502, org.apache.lucene.index.CorruptIndexException=var3878, $r8=var1174, $r6=var3967}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.apache.lucene.store.DataInput;	r4 := @parameter1: java.lang.String;	$b0 = virtualinvoke r0.<org.apache.lucene.store.DataInput: byte readByte()>();	$s3 = (short) $b0;	s1 = $s3 & 255;	$i4 = (int) s1;	r1 = newarray (byte)[$i4];	$i2 = lengthof r1;	virtualinvoke r0.<org.apache.lucene.store.DataInput: void readBytes(byte[],int,int)>(r1, 0, $i2);	$r7 = new java.lang.String;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r7.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3);	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto return $r7;	$r8 = new org.apache.lucene.index.CorruptIndexException;	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r4, $r7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("file mismatch, expected suffix=\u0001, got=\u0001");	specialinvoke $r8.<org.apache.lucene.index.CorruptIndexException: void <init>(java.lang.String,org.apache.lucene.store.DataInput)>($r6, r0);	throw $r8
;block_num 2