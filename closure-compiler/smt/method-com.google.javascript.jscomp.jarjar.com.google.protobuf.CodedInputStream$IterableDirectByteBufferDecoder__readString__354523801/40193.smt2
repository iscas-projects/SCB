(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1341 0)
(declare-sort var309 0)
(declare-sort var745 0)
(declare-sort var2851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readRawVarint32/1611491923 (var1341) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun currentByteBufferLimit/-996488324 (var1341) Int)
(declare-fun currentByteBufferPos/-996488324 (var1341) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var309_copyMemory/-835482957 (Int (Array Int Int) Int Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var745) void)
(declare-const null-var1341 var1341)
(declare-const var2851-UTF_8 var745)
(declare-const var44 var1341) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder 
(assert (not (= var44 null-var1341)))
(assert true)
(define-const var1441 Int (readRawVarint32/1611491923 var44)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: int readRawVarint32()>() 
 ; Statement: if i0 <= 0 goto (branch) 
(assert (not (<= var1441 0))) ; Negate: Cond: i0 <= 0  
(define-const var2914 Int (cast-from-Int-to-Int var1441)) ; Statement: $l5 = (long) i0 
(define-const var572 Int (currentByteBufferLimit/-996488324 var44)) ; Statement: $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferLimit> 
(define-const var1688 Int (currentByteBufferPos/-996488324 var44)) ; Statement: $l2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferPos> 
(define-const var1496 Int (- var572 var1688)) ; Statement: $l4 = $l3 - $l2 
(define-const var2495 Int (ite (> var2914 var1496) 1 (ite (< var2914 var1496) (- 1) 0))) ; Statement: $b6 = $l5 cmp $l4 
(define-const var1589 Int (cast-from-Int-to-Int var2495)) ; Statement: $i12 = (int) $b6 
 ; Statement: if $i12 > 0 goto (branch) 
(assert (not (> var1589 0))) ; Negate: Cond: $i12 > 0  
(define-const var2127 (Array Int Int) arr-Int-init) ; Statement: r7 = newarray (byte)[i0] 
(define-const var2334 Int (currentByteBufferPos/-996488324 var44)) ; Statement: $l8 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferPos> 
(define-const var2468 Int (cast-from-Int-to-Int var1441)) ; Statement: $l7 = (long) i0 
;(assert (var309_copyMemory/-835482957 var2334 var2127 0 var2468)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: void copyMemory(long,byte[],long,long)>($l8, r7, 0L, $l7) 

(declare-const var2334!1 Int)
(declare-const var2127!1 (Array Int Int))
(declare-const var1330 Int)
(declare-const var2468!1 Int)
(define-const var3222 String String-init) ; Statement: $r9 = new java.lang.String 
(define-const var1838 var745 var2851-UTF_8) ; Statement: $r6 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var3222 var2127!1 var1838)) ; Statement: specialinvoke $r9.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r7, $r6) 

(declare-const var3222!1 String)
(declare-const var2127!2 (Array Int Int))
(declare-const var1838!1 var745)
(define-const var812 Int (currentByteBufferPos/-996488324 var44)) ; Statement: $l10 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferPos> 
(define-const var3464 Int (cast-from-Int-to-Int var1441)) ; Statement: $l9 = (long) i0 
(define-const var1077 Int (+ var812 var3464)) ; Statement: $l11 = $l10 + $l9 
(declare-const var44!1 var1341)
(assert (not (= var44!1 null-var1341)))
(assert (= (currentByteBufferPos/-996488324 var44!1) var1077)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferPos> = $l11 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readRawVarint32/1611491923=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder], int), cast-from-Int-to-Int=([int], long), currentByteBufferLimit/-996488324=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder], long), currentByteBufferPos/-996488324=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder], long), arr-Int-init=([], byte[]), var309_copyMemory/-835482957=([long, byte[], long, long], void), String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1341=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder, var44=r0, var1441=i0, var2914=$l5, var572=$l3, var1688=$l2, var1496=$l4, var2495=$b6, var1589=$i12, var2127=r7, var2334=$l8, var2468=$l7, var309=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil, var1330=0L, var3222=$r9, var745=java.nio.charset.Charset, var2851=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var1838=$r6, var812=$l10, var3464=$l9, var1077=$l11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder=var1341, r0=var44, i0=var1441, $l5=var2914, $l3=var572, $l2=var1688, $l4=var1496, $b6=var2495, $i12=var1589, r7=var2127, $l8=var2334, $l7=var2468, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil=var309, 0L=var1330, $r9=var3222, java.nio.charset.Charset=var745, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var2851, $r6=var1838, $l10=var812, $l9=var3464, $l11=var1077}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: int readRawVarint32()>();	if i0 <= 0 goto (branch);	$l5 = (long) i0;	$l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferLimit>;	$l2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferPos>;	$l4 = $l3 - $l2;	$b6 = $l5 cmp $l4;	$i12 = (int) $b6;	if $i12 > 0 goto (branch);	r7 = newarray (byte)[i0];	$l8 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferPos>;	$l7 = (long) i0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: void copyMemory(long,byte[],long,long)>($l8, r7, 0L, $l7);	$r9 = new java.lang.String;	$r6 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	specialinvoke $r9.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r7, $r6);	$l10 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferPos>;	$l9 = (long) i0;	$l11 = $l10 + $l9;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$IterableDirectByteBufferDecoder: long currentByteBufferPos> = $l11;	return $r9
;block_num 3