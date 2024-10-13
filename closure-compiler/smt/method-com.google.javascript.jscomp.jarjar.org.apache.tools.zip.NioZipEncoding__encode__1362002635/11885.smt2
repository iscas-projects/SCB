(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2739 0)
(declare-sort var2368 0)
(declare-sort var76 0)
(declare-sort var351 0)
(declare-sort var2456 0)
(declare-sort var1299 0)
(declare-sort var863 0)
(declare-sort var1258 0)
(declare-sort var1232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/961811045 (var2739) var76)
(declare-fun newEncoder/1319872883 (var76) var351)
(declare-fun onMalformedInput/275956593 (var351 var2456) var351)
(declare-fun onUnmappableCharacter/-746804624 (var351 var2456) var351)
(declare-fun var1299_wrap/268743764 (String) var1299)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var863_allocate/-517473021 (Int) var863)
(declare-fun remaining/-1331500056 (var1258) Int)
(declare-fun cast-from-var1299-to-var1258 (var1299) var1258)
(declare-fun var1232_prepareBufferForRead/-1326699784 (var1258) void)
(declare-fun cast-from-var863-to-var1258 (var863) var1258)
(declare-const null-var2739 var2739)
(declare-const null-String String)
(declare-const var2456-REPORT var2456)
(declare-const var728 var2739) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.NioZipEncoding 
(assert (not (= var728 null-var2739)))
(declare-const var1596 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1596 null-String)))
(define-const var3911 var76 (charset/961811045 var728)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.NioZipEncoding: java.nio.charset.Charset charset> 
(assert true)
(define-const var66 var351 (newEncoder/1319872883 var3911)) ; Statement: r2 = virtualinvoke $r1.<java.nio.charset.Charset: java.nio.charset.CharsetEncoder newEncoder()>() 
(define-const var1627 var2456 var2456-REPORT) ; Statement: $r3 = <java.nio.charset.CodingErrorAction: java.nio.charset.CodingErrorAction REPORT> 
(assert true)
;(assert (onMalformedInput/275956593 var66 var1627)) ; Statement: virtualinvoke r2.<java.nio.charset.CharsetEncoder: java.nio.charset.CharsetEncoder onMalformedInput(java.nio.charset.CodingErrorAction)>($r3) 

(declare-const var66!1 var351)
(declare-const var1627!1 var2456)
(define-const var674 var2456 var2456-REPORT) ; Statement: $r4 = <java.nio.charset.CodingErrorAction: java.nio.charset.CodingErrorAction REPORT> 
(assert true)
;(assert (onUnmappableCharacter/-746804624 var66!1 var674)) ; Statement: virtualinvoke r2.<java.nio.charset.CharsetEncoder: java.nio.charset.CharsetEncoder onUnmappableCharacter(java.nio.charset.CodingErrorAction)>($r4) 

(declare-const var66!2 var351)
(declare-const var674!1 var2456)
(define-const var1781 var1299 (var1299_wrap/268743764 (cast-from-String-to-String var1596))) ; Statement: r6 = staticinvoke <java.nio.CharBuffer: java.nio.CharBuffer wrap(java.lang.CharSequence)>(r5) 
(assert true)
(define-const var2232 Int (length/-134980193 var1596)) ; Statement: $i3 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert true)
(define-const var67 Int (length/-134980193 var1596)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var2571 Int (+ var67 1)) ; Statement: $i1 = $i0 + 1 
(define-const var1364 Int (div var2571 2)) ; Statement: $i2 = $i1 / 2 
(define-const var905 Int (+ var2232 var1364)) ; Statement: $i4 = $i3 + $i2 
(define-const var1661 var863 (var863_allocate/-517473021 var905)) ; Statement: r8 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>($i4) 
(assert true) ; Non Conditional
(assert true)
(define-const var1900 Int (remaining/-1331500056 (cast-from-var1299-to-var1258 var1781))) ; Statement: $i5 = virtualinvoke r6.<java.nio.CharBuffer: int remaining()>() 
 ; Statement: if $i5 <= 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper: void prepareBufferForRead(java.nio.Buffer)>(r8) 
(assert (<= var1900 0)) ; Cond: $i5 <= 0 
;(assert (var1232_prepareBufferForRead/-1326699784 (cast-from-var863-to-var1258 var1661))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper: void prepareBufferForRead(java.nio.Buffer)>(r8) 

(declare-const var1661!1 var863)
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/961811045=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.NioZipEncoding], java.nio.charset.Charset), newEncoder/1319872883=([java.nio.charset.Charset], java.nio.charset.CharsetEncoder), onMalformedInput/275956593=([java.nio.charset.CharsetEncoder, java.nio.charset.CodingErrorAction], java.nio.charset.CharsetEncoder), onUnmappableCharacter/-746804624=([java.nio.charset.CharsetEncoder, java.nio.charset.CodingErrorAction], java.nio.charset.CharsetEncoder), var1299_wrap/268743764=([java.lang.CharSequence], java.nio.CharBuffer), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var863_allocate/-517473021=([int], java.nio.ByteBuffer), remaining/-1331500056=([java.nio.Buffer], int), cast-from-var1299-to-var1258=([java.nio.CharBuffer], java.nio.Buffer), var1232_prepareBufferForRead/-1326699784=([java.nio.Buffer], void), cast-from-var863-to-var1258=([java.nio.ByteBuffer], java.nio.Buffer)}
; {var2739=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.NioZipEncoding, var728=r0, var1596=r5, var2368=null_type, var76=java.nio.charset.Charset, var3911=$r1, var351=java.nio.charset.CharsetEncoder, var66=r2, var2456=java.nio.charset.CodingErrorAction, var1627=$r3, var674=$r4, var1299=java.nio.CharBuffer, var1781=r6, var2232=$i3, var67=$i0, var2571=$i1, var1364=$i2, var905=$i4, var863=java.nio.ByteBuffer, var1661=r8, var1258=java.nio.Buffer, var1900=$i5, var1232=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.NioZipEncoding=var2739, r0=var728, r5=var1596, null_type=var2368, java.nio.charset.Charset=var76, $r1=var3911, java.nio.charset.CharsetEncoder=var351, r2=var66, java.nio.charset.CodingErrorAction=var2456, $r3=var1627, $r4=var674, java.nio.CharBuffer=var1299, r6=var1781, $i3=var2232, $i0=var67, $i1=var2571, $i2=var1364, $i4=var905, java.nio.ByteBuffer=var863, r8=var1661, java.nio.Buffer=var1258, $i5=var1900, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper=var1232}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.NioZipEncoding;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.NioZipEncoding: java.nio.charset.Charset charset>;	r2 = virtualinvoke $r1.<java.nio.charset.Charset: java.nio.charset.CharsetEncoder newEncoder()>();	$r3 = <java.nio.charset.CodingErrorAction: java.nio.charset.CodingErrorAction REPORT>;	virtualinvoke r2.<java.nio.charset.CharsetEncoder: java.nio.charset.CharsetEncoder onMalformedInput(java.nio.charset.CodingErrorAction)>($r3);	$r4 = <java.nio.charset.CodingErrorAction: java.nio.charset.CodingErrorAction REPORT>;	virtualinvoke r2.<java.nio.charset.CharsetEncoder: java.nio.charset.CharsetEncoder onUnmappableCharacter(java.nio.charset.CodingErrorAction)>($r4);	r6 = staticinvoke <java.nio.CharBuffer: java.nio.CharBuffer wrap(java.lang.CharSequence)>(r5);	$i3 = virtualinvoke r5.<java.lang.String: int length()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = $i0 + 1;	$i2 = $i1 / 2;	$i4 = $i3 + $i2;	r8 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>($i4);	$i5 = virtualinvoke r6.<java.nio.CharBuffer: int remaining()>();	if $i5 <= 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper: void prepareBufferForRead(java.nio.Buffer)>(r8);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncodingHelper: void prepareBufferForRead(java.nio.Buffer)>(r8);	return r8
;block_num 3