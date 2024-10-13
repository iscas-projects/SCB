(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1809 0)
(declare-sort var1682 0)
(declare-sort var2388 0)
(declare-sort var947 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2388_allocate/-517473021 (Int) var2388)
(declare-fun var947_prepareBufferForRead/-1326699784 (var755) void)
(declare-fun cast-from-var2388-to-var755 (var2388) var755)
(declare-const null-var1809 var1809)
(declare-const null-String String)
(declare-const var1221 var1809) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding 
(assert (not (= var1221 null-var1809)))
(declare-const var3193 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3193 null-String)))
(assert true)
(define-const var129 Int (length/-134980193 var3193)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var851 Int (+ var129 6)) ; Statement: $i4 = $i0 + 6 
(assert true)
(define-const var1121 Int (length/-134980193 var3193)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3204 Int (+ var1121 1)) ; Statement: $i2 = $i1 + 1 
(define-const var965 Int (div var3204 2)) ; Statement: $i3 = $i2 / 2 
(define-const var1699 Int (+ var851 var965)) ; Statement: $i5 = $i4 + $i3 
(define-const var1527 var2388 (var2388_allocate/-517473021 var1699)) ; Statement: r2 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>($i5) 
(define-const var1130 Int 0) ; Statement: i11 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2663 Int (length/-134980193 var3193)) ; Statement: $i6 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i11 >= $i6 goto staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper: void prepareBufferForRead(java.nio.Buffer)>(r2) 
(assert (>= var1130 var2663)) ; Cond: i11 >= $i6 
;(assert (var947_prepareBufferForRead/-1326699784 (cast-from-var2388-to-var755 var1527))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper: void prepareBufferForRead(java.nio.Buffer)>(r2) 

(declare-const var1527!1 var2388)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2388_allocate/-517473021=([int], java.nio.ByteBuffer), var947_prepareBufferForRead/-1326699784=([java.nio.Buffer], void), cast-from-var2388-to-var755=([java.nio.ByteBuffer], java.nio.Buffer)}
; {var1809=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding, var1221=r1, var3193=r0, var1682=null_type, var129=$i0, var851=$i4, var1121=$i1, var3204=$i2, var965=$i3, var1699=$i5, var2388=java.nio.ByteBuffer, var1527=r2, var1130=i11, var2663=$i6, var947=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper, var755=java.nio.Buffer}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding=var1809, r1=var1221, r0=var3193, null_type=var1682, $i0=var129, $i4=var851, $i1=var1121, $i2=var3204, $i3=var965, $i5=var1699, java.nio.ByteBuffer=var2388, r2=var1527, i11=var1130, $i6=var2663, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper=var947, java.nio.Buffer=var755}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 3}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i0 + 6;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 + 1;	$i3 = $i2 / 2;	$i5 = $i4 + $i3;	r2 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>($i5);	i11 = 0;	$i6 = virtualinvoke r0.<java.lang.String: int length()>();	if i11 >= $i6 goto staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper: void prepareBufferForRead(java.nio.Buffer)>(r2);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper: void prepareBufferForRead(java.nio.Buffer)>(r2);	return r2
;block_num 3