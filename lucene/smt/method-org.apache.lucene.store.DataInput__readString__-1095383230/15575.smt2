(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1178 0)
(declare-sort var2598 0)
(declare-sort var2136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readVInt/-606901802 (var1178) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun readBytes/-1411431715 (var1178 (Array Int Int) Int Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var2598) void)
(declare-const null-var1178 var1178)
(declare-const var2136-UTF_8 var2598)
(declare-const var1267 var1178) ; Statement: r0 := @this: org.apache.lucene.store.DataInput 
(assert (not (= var1267 null-var1178)))
(assert true)
(define-const var879 Int (readVInt/-606901802 var1267)) ; Statement: i0 = virtualinvoke r0.<org.apache.lucene.store.DataInput: int readVInt()>() 
(define-const var3777 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[i0] 
(assert true)
;(assert (readBytes/-1411431715 var1267 var3777 0 var879)) ; Statement: virtualinvoke r0.<org.apache.lucene.store.DataInput: void readBytes(byte[],int,int)>(r1, 0, i0) 

(declare-const var1267!1 var1178)
(declare-const var3777!1 (Array Int Int))
(declare-const var3750 Int)
(declare-const var879!1 Int)
(define-const var1399 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var2361 var2598 var2136-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-1019213948 var1399 var3777!1 0 var879!1 var2361)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r1, 0, i0, $r3) 

(declare-const var1399!1 String)
(declare-const var3777!2 (Array Int Int))
(declare-const var3750!1 Int)
(declare-const var879!2 Int)
(declare-const var2361!1 var2598)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {readVInt/-606901802=([org.apache.lucene.store.DataInput], int), arr-Int-init=([], byte[]), readBytes/-1411431715=([org.apache.lucene.store.DataInput, byte[], int, int], void), String-init=([], java.lang.String), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var1178=org.apache.lucene.store.DataInput, var1267=r0, var879=i0, var3777=r1, var3750=0, var1399=$r2, var2598=java.nio.charset.Charset, var2136=java.nio.charset.StandardCharsets, var2361=$r3}
; {org.apache.lucene.store.DataInput=var1178, r0=var1267, i0=var879, r1=var3777, 0=var3750, $r2=var1399, java.nio.charset.Charset=var2598, java.nio.charset.StandardCharsets=var2136, $r3=var2361}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.lucene.store.DataInput;	i0 = virtualinvoke r0.<org.apache.lucene.store.DataInput: int readVInt()>();	r1 = newarray (byte)[i0];	virtualinvoke r0.<org.apache.lucene.store.DataInput: void readBytes(byte[],int,int)>(r1, 0, i0);	$r2 = new java.lang.String;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r1, 0, i0, $r3);	return $r2
;block_num 1