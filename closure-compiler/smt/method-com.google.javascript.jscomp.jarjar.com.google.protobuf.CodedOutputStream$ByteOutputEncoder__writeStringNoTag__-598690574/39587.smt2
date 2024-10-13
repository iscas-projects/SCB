(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var940 0)
(declare-sort var707 0)
(declare-sort var2180 0)
(declare-sort var179 0)
(declare-sort var2788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2180_computeUInt32SizeNoTag/1273562027 (Int) Int)
(declare-fun limit/1338724899 (var179) Int)
(declare-fun cast-from-var940-to-var179 (var940) var179)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var2788_encode/1256205476 (String (Array Int Int) Int Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun writeUInt32NoTag/-326712380 (var940 Int) void)
(declare-fun writeLazy/-964288799 (var940 (Array Int Int) Int Int) void)
(declare-const null-var940 var940)
(declare-const null-String String)
(declare-const var1661 var940) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder 
(assert (not (= var1661 null-var940)))
(declare-const var3152 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3152 null-String)))
(assert true)
(define-const var1844 Int (length/-134980193 var3152)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var256 Int (* var1844 3)) ; Statement: i1 = $i0 * 3 
(define-const var3369 Int (var2180_computeUInt32SizeNoTag/1273562027 var256)) ; Statement: i2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder: int computeUInt32SizeNoTag(int)>(i1) 
(define-const var2480 Int (+ var3369 var256)) ; Statement: $i4 = i2 + i1 
(define-const var1520 Int (limit/1338724899 (cast-from-var940-to-var179 var1661))) ; Statement: $i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder: int limit> 
 ; Statement: if $i4 <= $i3 goto $i8 = i2 + i1 
(assert (not (<= var2480 var1520))) ; Negate: Cond: $i4 <= $i3  
(define-const var3214 (Array Int Int) arr-Int-init) ; Statement: r7 = newarray (byte)[i1] 
(define-const var1813 Int (var2788_encode/1256205476 (cast-from-String-to-String var3152) var3214 0 var256)) ; Statement: i29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8: int encode(java.lang.CharSequence,byte[],int,int)>(r0, r7, 0, i1) 
(assert true)
;(assert (writeUInt32NoTag/-326712380 var1661 var1813)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder: void writeUInt32NoTag(int)>(i29) 

(declare-const var1661!1 var940)
(declare-const var1813!1 Int)
(assert true)
;(assert (writeLazy/-964288799 var1661!1 var3214 0 var1813!1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder: void writeLazy(byte[],int,int)>(r7, 0, i29) 

(declare-const var1661!2 var940)
(declare-const var3214!1 (Array Int Int))
(declare-const var3842 Int)
(declare-const var1813!2 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2180_computeUInt32SizeNoTag/1273562027=([int], int), limit/1338724899=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$AbstractBufferedEncoder], int), cast-from-var940-to-var179=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$AbstractBufferedEncoder), arr-Int-init=([], byte[]), var2788_encode/1256205476=([java.lang.CharSequence, byte[], int, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), writeUInt32NoTag/-326712380=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder, int], void), writeLazy/-964288799=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder, byte[], int, int], void)}
; {var940=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder, var1661=r1, var3152=r0, var707=null_type, var1844=$i0, var256=i1, var2180=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream, var3369=i2, var2480=$i4, var179=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$AbstractBufferedEncoder, var1520=$i3, var3214=r7, var2788=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8, var1813=i29, var3842=0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder=var940, r1=var1661, r0=var3152, null_type=var707, $i0=var1844, i1=var256, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream=var2180, i2=var3369, $i4=var2480, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$AbstractBufferedEncoder=var179, $i3=var1520, r7=var3214, com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8=var2788, i29=var1813, 0=var3842}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = $i0 * 3;	i2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder: int computeUInt32SizeNoTag(int)>(i1);	$i4 = i2 + i1;	$i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder: int limit>;	if $i4 <= $i3 goto $i8 = i2 + i1;	r7 = newarray (byte)[i1];	i29 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8: int encode(java.lang.CharSequence,byte[],int,int)>(r0, r7, 0, i1);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder: void writeUInt32NoTag(int)>(i29);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ByteOutputEncoder: void writeLazy(byte[],int,int)>(r7, 0, i29);	return
;block_num 2