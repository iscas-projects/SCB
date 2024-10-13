(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1766 0)
(declare-sort var2055 0)
(declare-sort var573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readRawVarint32/414634479 (var1766) Int)
(declare-fun limit/2111102480 (var1766) Int)
(declare-fun pos/2111102480 (var1766) Int)
(declare-fun String-init () String)
(declare-fun buffer/2111102480 (var1766) (Array Int Int))
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var2055) void)
(declare-const null-var1766 var1766)
(declare-const var573-UTF_8 var2055)
(declare-const var912 var1766) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder 
(assert (not (= var912 null-var1766)))
(assert true)
(define-const var1220 Int (readRawVarint32/414634479 var912)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int readRawVarint32()>() 
 ; Statement: if i0 <= 0 goto (branch) 
(assert (not (<= var1220 0))) ; Negate: Cond: i0 <= 0  
(define-const var504 Int (limit/2111102480 var912)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int limit> 
(define-const var2140 Int (pos/2111102480 var912)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int pos> 
(define-const var3478 Int (- var504 var2140)) ; Statement: $i3 = $i2 - $i1 
 ; Statement: if i0 > $i3 goto (branch) 
(assert (not (> var1220 var3478))) ; Negate: Cond: i0 > $i3  
(define-const var284 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var3720 (Array Int Int) (buffer/2111102480 var912)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: byte[] buffer> 
(define-const var2393 Int (pos/2111102480 var912)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int pos> 
(define-const var1839 var2055 var573-UTF_8) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-1019213948 var284 var3720 var2393 var1220 var1839)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r5, $i4, i0, $r4) 

(declare-const var284!1 String)
(declare-const var3720!1 (Array Int Int))
(declare-const var2393!1 Int)
(declare-const var1220!1 Int)
(declare-const var1839!1 var2055)
(define-const var3139 Int (pos/2111102480 var912)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int pos> 
(define-const var3474 Int (+ var3139 var1220!1)) ; Statement: $i6 = $i5 + i0 
(declare-const var912!1 var1766)
(assert (not (= var912!1 null-var1766)))
(assert (= (pos/2111102480 var912!1) var3474)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int pos> = $i6 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {readRawVarint32/414634479=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder], int), limit/2111102480=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder], int), pos/2111102480=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder], int), String-init=([], java.lang.String), buffer/2111102480=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder], byte[]), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var1766=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder, var912=r0, var1220=i0, var504=$i2, var2140=$i1, var3478=$i3, var284=$r3, var3720=$r5, var2393=$i4, var2055=java.nio.charset.Charset, var573=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var1839=$r4, var3139=$i5, var3474=$i6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder=var1766, r0=var912, i0=var1220, $i2=var504, $i1=var2140, $i3=var3478, $r3=var284, $r5=var3720, $i4=var2393, java.nio.charset.Charset=var2055, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var573, $r4=var1839, $i5=var3139, $i6=var3474}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int readRawVarint32()>();	if i0 <= 0 goto (branch);	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int limit>;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int pos>;	$i3 = $i2 - $i1;	if i0 > $i3 goto (branch);	$r3 = new java.lang.String;	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: byte[] buffer>;	$i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int pos>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	specialinvoke $r3.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r5, $i4, i0, $r4);	$i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int pos>;	$i6 = $i5 + i0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int pos> = $i6;	return $r3
;block_num 3