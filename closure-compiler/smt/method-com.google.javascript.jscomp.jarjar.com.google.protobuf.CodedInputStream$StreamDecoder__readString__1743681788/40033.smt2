(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3590 0)
(declare-sort var1312 0)
(declare-sort var370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readRawVarint32/635722678 (var3590) Int)
(declare-fun bufferSize/-800842017 (var3590) Int)
(declare-fun pos/-800842017 (var3590) Int)
(declare-fun String-init () String)
(declare-fun buffer/-800842017 (var3590) (Array Int Int))
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var1312) void)
(declare-const null-var3590 var3590)
(declare-const var370-UTF_8 var1312)
(declare-const var2729 var3590) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder 
(assert (not (= var2729 null-var3590)))
(assert true)
(define-const var286 Int (readRawVarint32/635722678 var2729)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int readRawVarint32()>() 
 ; Statement: if i0 <= 0 goto (branch) 
(assert (not (<= var286 0))) ; Negate: Cond: i0 <= 0  
(define-const var135 Int (bufferSize/-800842017 var2729)) ; Statement: $i6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int bufferSize> 
(define-const var2224 Int (pos/-800842017 var2729)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos> 
(define-const var3819 Int (- var135 var2224)) ; Statement: $i7 = $i6 - $i5 
 ; Statement: if i0 > $i7 goto (branch) 
(assert (not (> var286 var3819))) ; Negate: Cond: i0 > $i7  
(define-const var819 String String-init) ; Statement: $r7 = new java.lang.String 
(define-const var3481 (Array Int Int) (buffer/-800842017 var2729)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: byte[] buffer> 
(define-const var1180 Int (pos/-800842017 var2729)) ; Statement: $i8 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos> 
(define-const var1253 var1312 var370-UTF_8) ; Statement: $r8 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-1019213948 var819 var3481 var1180 var286 var1253)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r9, $i8, i0, $r8) 

(declare-const var819!1 String)
(declare-const var3481!1 (Array Int Int))
(declare-const var1180!1 Int)
(declare-const var286!1 Int)
(declare-const var1253!1 var1312)
(define-const var3296 Int (pos/-800842017 var2729)) ; Statement: $i9 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos> 
(define-const var2277 Int (+ var3296 var286!1)) ; Statement: $i10 = $i9 + i0 
(declare-const var2729!1 var3590)
(assert (not (= var2729!1 null-var3590)))
(assert (= (pos/-800842017 var2729!1) var2277)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos> = $i10 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readRawVarint32/635722678=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder], int), bufferSize/-800842017=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder], int), pos/-800842017=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder], int), String-init=([], java.lang.String), buffer/-800842017=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder], byte[]), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var3590=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder, var2729=r0, var286=i0, var135=$i6, var2224=$i5, var3819=$i7, var819=$r7, var3481=$r9, var1180=$i8, var1312=java.nio.charset.Charset, var370=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var1253=$r8, var3296=$i9, var2277=$i10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder=var3590, r0=var2729, i0=var286, $i6=var135, $i5=var2224, $i7=var3819, $r7=var819, $r9=var3481, $i8=var1180, java.nio.charset.Charset=var1312, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var370, $r8=var1253, $i9=var3296, $i10=var2277}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int readRawVarint32()>();	if i0 <= 0 goto (branch);	$i6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int bufferSize>;	$i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos>;	$i7 = $i6 - $i5;	if i0 > $i7 goto (branch);	$r7 = new java.lang.String;	$r9 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: byte[] buffer>;	$i8 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos>;	$r8 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	specialinvoke $r7.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r9, $i8, i0, $r8);	$i9 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos>;	$i10 = $i9 + i0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos> = $i10;	return $r7
;block_num 3