(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var792 0)
(declare-sort var2535 0)
(declare-sort var25 0)
(declare-sort var2558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readByte/357530894 (var792) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun readBytes/-1411431715 (var792 (Array Int Int) Int Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var25) void)
(declare-const null-var792 var792)
(declare-const null-String String)
(declare-const var2558-UTF_8 var25)
(declare-const var2944 var792) ; Statement: r0 := @parameter0: org.apache.lucene.store.DataInput 
(assert (not (= var2944 null-var792)))
(declare-const var320 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var320 null-String)))
(assert true)
(define-const var321 Int (readByte/357530894 var2944)) ; Statement: $b0 = virtualinvoke r0.<org.apache.lucene.store.DataInput: byte readByte()>() 
(define-const var2085 Int (cast-from-Int-to-Int var321)) ; Statement: $s3 = (short) $b0 
(define-const var2316 Int (bv2nat (bvand ((_ int2bv 64) var2085) ((_ int2bv 64) 255)))) ; Statement: s1 = $s3 & 255 
(define-const var1979 Int (cast-from-Int-to-Int var2316)) ; Statement: $i4 = (int) s1 
(define-const var1881 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[$i4] 
(define-const var2346 Int (getLength-Arr-Int-1 var1881)) ; Statement: $i2 = lengthof r1 
(assert true)
;(assert (readBytes/-1411431715 var2944 var1881 0 var2346)) ; Statement: virtualinvoke r0.<org.apache.lucene.store.DataInput: void readBytes(byte[],int,int)>(r1, 0, $i2) 

(declare-const var2944!1 var792)
(declare-const var1881!1 (Array Int Int))
(declare-const var1566 Int)
(declare-const var2346!1 Int)
(define-const var1320 String String-init) ; Statement: $r7 = new java.lang.String 
(define-const var3896 var25 var2558-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var1320 var1881!1 var3896)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3) 

(declare-const var1320!1 String)
(declare-const var1881!2 (Array Int Int))
(declare-const var3896!1 var25)
(assert true)
(define-const var1889 Bool (= var1320!1 var320)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto return $r7 
(assert (not (= (ite var1889 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readByte/357530894=([org.apache.lucene.store.DataInput], byte), cast-from-Int-to-Int=([byte], short), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), readBytes/-1411431715=([org.apache.lucene.store.DataInput, byte[], int, int], void), String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var792=org.apache.lucene.store.DataInput, var2944=r0, var320=r4, var2535=null_type, var321=$b0, var2085=$s3, var2316=s1, var1979=$i4, var1881=r1, var2346=$i2, var1566=0, var1320=$r7, var25=java.nio.charset.Charset, var2558=java.nio.charset.StandardCharsets, var3896=$r3, var1889=$z0}
; {org.apache.lucene.store.DataInput=var792, r0=var2944, r4=var320, null_type=var2535, $b0=var321, $s3=var2085, s1=var2316, $i4=var1979, r1=var1881, $i2=var2346, 0=var1566, $r7=var1320, java.nio.charset.Charset=var25, java.nio.charset.StandardCharsets=var2558, $r3=var3896, $z0=var1889}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.apache.lucene.store.DataInput;	r4 := @parameter1: java.lang.String;	$b0 = virtualinvoke r0.<org.apache.lucene.store.DataInput: byte readByte()>();	$s3 = (short) $b0;	s1 = $s3 & 255;	$i4 = (int) s1;	r1 = newarray (byte)[$i4];	$i2 = lengthof r1;	virtualinvoke r0.<org.apache.lucene.store.DataInput: void readBytes(byte[],int,int)>(r1, 0, $i2);	$r7 = new java.lang.String;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r7.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3);	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto return $r7;	return $r7
;block_num 2