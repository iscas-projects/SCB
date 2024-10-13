(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1276 0)
(declare-sort var265 0)
(declare-sort var2868 0)
(declare-sort var3845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readRawVarint32/-579149533 (var1276) Int)
(declare-fun remaining/1157481958 (var1276) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun pos/-1426387388 (var1276) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var265_copyMemory/-835482957 (Int (Array Int Int) Int Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var2868) void)
(declare-const null-var1276 var1276)
(declare-const var3845-UTF_8 var2868)
(declare-const var3252 var1276) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder 
(assert (not (= var3252 null-var1276)))
(assert true)
(define-const var3243 Int (readRawVarint32/-579149533 var3252)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: int readRawVarint32()>() 
 ; Statement: if i0 <= 0 goto (branch) 
(assert (not (<= var3243 0))) ; Negate: Cond: i0 <= 0  
(assert true)
(define-const var1915 Int (remaining/1157481958 var3252)) ; Statement: $i1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: int remaining()>() 
 ; Statement: if i0 > $i1 goto (branch) 
(assert (not (> var3243 var1915))) ; Negate: Cond: i0 > $i1  
(define-const var232 (Array Int Int) arr-Int-init) ; Statement: r3 = newarray (byte)[i0] 
(define-const var3339 Int (pos/-1426387388 var3252)) ; Statement: $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: long pos> 
(define-const var1903 Int (cast-from-Int-to-Int var3243)) ; Statement: $l2 = (long) i0 
;(assert (var265_copyMemory/-835482957 var3339 var232 0 var1903)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: void copyMemory(long,byte[],long,long)>($l3, r3, 0L, $l2) 

(declare-const var3339!1 Int)
(declare-const var232!1 (Array Int Int))
(declare-const var1419 Int)
(declare-const var1903!1 Int)
(define-const var2266 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var3781 var2868 var3845-UTF_8) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var2266 var232!1 var3781)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r3, $r5) 

(declare-const var2266!1 String)
(declare-const var232!2 (Array Int Int))
(declare-const var3781!1 var2868)
(define-const var2171 Int (pos/-1426387388 var3252)) ; Statement: $l5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: long pos> 
(define-const var2207 Int (cast-from-Int-to-Int var3243)) ; Statement: $l4 = (long) i0 
(define-const var3481 Int (+ var2171 var2207)) ; Statement: $l6 = $l5 + $l4 
(declare-const var3252!1 var1276)
(assert (not (= var3252!1 null-var1276)))
(assert (= (pos/-1426387388 var3252!1) var3481)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: long pos> = $l6 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {readRawVarint32/-579149533=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder], int), remaining/1157481958=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder], int), arr-Int-init=([], byte[]), pos/-1426387388=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder], long), cast-from-Int-to-Int=([int], long), var265_copyMemory/-835482957=([long, byte[], long, long], void), String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1276=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder, var3252=r0, var3243=i0, var1915=$i1, var232=r3, var3339=$l3, var1903=$l2, var265=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil, var1419=0L, var2266=$r4, var2868=java.nio.charset.Charset, var3845=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var3781=$r5, var2171=$l5, var2207=$l4, var3481=$l6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder=var1276, r0=var3252, i0=var3243, $i1=var1915, r3=var232, $l3=var3339, $l2=var1903, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil=var265, 0L=var1419, $r4=var2266, java.nio.charset.Charset=var2868, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var3845, $r5=var3781, $l5=var2171, $l4=var2207, $l6=var3481}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: int readRawVarint32()>();	if i0 <= 0 goto (branch);	$i1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: int remaining()>();	if i0 > $i1 goto (branch);	r3 = newarray (byte)[i0];	$l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: long pos>;	$l2 = (long) i0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: void copyMemory(long,byte[],long,long)>($l3, r3, 0L, $l2);	$r4 = new java.lang.String;	$r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	specialinvoke $r4.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r3, $r5);	$l5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: long pos>;	$l4 = (long) i0;	$l6 = $l5 + $l4;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: long pos> = $l6;	return $r4
;block_num 3