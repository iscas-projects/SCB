(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1490 0)
(declare-sort var3699 0)
(declare-sort var299 0)
(declare-sort var3143 0)
(declare-sort var1592 0)
(declare-sort var3989 0)
(declare-sort var1752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/257701266 (var1490) var299)
(declare-fun newDecoder/-223292813 (var299) var3143)
(declare-fun onMalformedInput/1024755825 (var3143 var3699) var3143)
(declare-fun onUnmappableCharacter/-1909586576 (var3143 var3699) var3143)
(declare-fun buff/257701266 (var1490) (Array Int Int))
(declare-fun start/-1046112200 (var1592) Int)
(declare-fun cast-from-var1490-to-var1592 (var1490) var1592)
(declare-fun end/-1046112200 (var1592) Int)
(declare-fun var3989_wrap/-180765383 ((Array Int Int) Int Int) var3989)
(declare-fun decode/1155929335 (var3143 var3989) var1752)
(declare-fun String-init () String)
(declare-fun array/-760886938 (var1752) (Array Int Int))
(declare-fun arrayOffset/418096264 (var1752) Int)
(declare-fun length/-138881184 (var1752) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1490 var1490)
(declare-const null-var3699 var3699)
(declare-const null-var299 var299)
(declare-const var3699-REPLACE var3699)
(declare-const var3443 var1490) ; Statement: r0 := @this: org.apache.tomcat.util.buf.ByteChunk 
(assert (not (= var3443 null-var1490)))
(declare-const var1116 var3699) ; Statement: r2 := @parameter0: java.nio.charset.CodingErrorAction 
(assert (not (= var1116 null-var3699)))
(declare-const var2688 var3699) ; Statement: r6 := @parameter1: java.nio.charset.CodingErrorAction 
(assert (not (= var2688 null-var3699)))
(define-const var783 var299 (charset/257701266 var3443)) ; Statement: $r1 = r0.<org.apache.tomcat.util.buf.ByteChunk: java.nio.charset.Charset charset> 
 ; Statement: if $r1 != null goto $r3 = <java.nio.charset.CodingErrorAction: java.nio.charset.CodingErrorAction REPLACE> 
(assert (not (= var783 null-var299))) ; Cond: $r1 != null 
(define-const var3663 var3699 var3699-REPLACE) ; Statement: $r3 = <java.nio.charset.CodingErrorAction: java.nio.charset.CodingErrorAction REPLACE> 
 ; Statement: if r2 != $r3 goto $r4 = r0.<org.apache.tomcat.util.buf.ByteChunk: java.nio.charset.Charset charset> 
(assert (not (= var1116 var3663))) ; Cond: r2 != $r3 
(define-const var3247 var299 (charset/257701266 var3443)) ; Statement: $r4 = r0.<org.apache.tomcat.util.buf.ByteChunk: java.nio.charset.Charset charset> 
(assert true)
(define-const var1738 var3143 (newDecoder/-223292813 var3247)) ; Statement: $r5 = virtualinvoke $r4.<java.nio.charset.Charset: java.nio.charset.CharsetDecoder newDecoder()>() 
(assert true)
(define-const var1614 var3143 (onMalformedInput/1024755825 var1738 var1116)) ; Statement: $r7 = virtualinvoke $r5.<java.nio.charset.CharsetDecoder: java.nio.charset.CharsetDecoder onMalformedInput(java.nio.charset.CodingErrorAction)>(r2) 
(assert true)
(define-const var1723 var3143 (onUnmappableCharacter/-1909586576 var1614 var2688)) ; Statement: $r10 = virtualinvoke $r7.<java.nio.charset.CharsetDecoder: java.nio.charset.CharsetDecoder onUnmappableCharacter(java.nio.charset.CodingErrorAction)>(r6) 
(define-const var3179 (Array Int Int) (buff/257701266 var3443)) ; Statement: $r8 = r0.<org.apache.tomcat.util.buf.ByteChunk: byte[] buff> 
(define-const var1185 Int (start/-1046112200 (cast-from-var1490-to-var1592 var3443))) ; Statement: $i3 = r0.<org.apache.tomcat.util.buf.ByteChunk: int start> 
(define-const var3022 Int (end/-1046112200 (cast-from-var1490-to-var1592 var3443))) ; Statement: $i1 = r0.<org.apache.tomcat.util.buf.ByteChunk: int end> 
(define-const var151 Int (start/-1046112200 (cast-from-var1490-to-var1592 var3443))) ; Statement: $i0 = r0.<org.apache.tomcat.util.buf.ByteChunk: int start> 
(define-const var3360 Int (- var3022 var151)) ; Statement: $i2 = $i1 - $i0 
(define-const var340 var3989 (var3989_wrap/-180765383 var3179 var1185 var3360)) ; Statement: $r9 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[],int,int)>($r8, $i3, $i2) 
(assert true)
(define-const var1760 var1752 (decode/1155929335 var1723 var340)) ; Statement: r16 = virtualinvoke $r10.<java.nio.charset.CharsetDecoder: java.nio.CharBuffer decode(java.nio.ByteBuffer)>($r9) 
(assert true) ; Non Conditional
(define-const var1308 String String-init) ; Statement: $r17 = new java.lang.String 
(assert true)
(define-const var2904 (Array Int Int) (array/-760886938 var1760)) ; Statement: $r18 = virtualinvoke r16.<java.nio.CharBuffer: char[] array()>() 
(assert true)
(define-const var3481 Int (arrayOffset/418096264 var1760)) ; Statement: $i8 = virtualinvoke r16.<java.nio.CharBuffer: int arrayOffset()>() 
(assert true)
(define-const var1044 Int (length/-138881184 var1760)) ; Statement: $i9 = virtualinvoke r16.<java.nio.CharBuffer: int length()>() 
(assert true)
;(assert (<init>/-253222812 var1308 var2904 var3481 var1044)) ; Statement: specialinvoke $r17.<java.lang.String: void <init>(char[],int,int)>($r18, $i8, $i9) 

(declare-const var1308!1 String)
(declare-const var2904!1 (Array Int Int))
(declare-const var3481!1 Int)
(declare-const var1044!1 Int)
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/257701266=([org.apache.tomcat.util.buf.ByteChunk], java.nio.charset.Charset), newDecoder/-223292813=([java.nio.charset.Charset], java.nio.charset.CharsetDecoder), onMalformedInput/1024755825=([java.nio.charset.CharsetDecoder, java.nio.charset.CodingErrorAction], java.nio.charset.CharsetDecoder), onUnmappableCharacter/-1909586576=([java.nio.charset.CharsetDecoder, java.nio.charset.CodingErrorAction], java.nio.charset.CharsetDecoder), buff/257701266=([org.apache.tomcat.util.buf.ByteChunk], byte[]), start/-1046112200=([org.apache.tomcat.util.buf.AbstractChunk], int), cast-from-var1490-to-var1592=([org.apache.tomcat.util.buf.ByteChunk], org.apache.tomcat.util.buf.AbstractChunk), end/-1046112200=([org.apache.tomcat.util.buf.AbstractChunk], int), var3989_wrap/-180765383=([byte[], int, int], java.nio.ByteBuffer), decode/1155929335=([java.nio.charset.CharsetDecoder, java.nio.ByteBuffer], java.nio.CharBuffer), String-init=([], java.lang.String), array/-760886938=([java.nio.CharBuffer], char[]), arrayOffset/418096264=([java.nio.CharBuffer], int), length/-138881184=([java.nio.CharBuffer], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1490=org.apache.tomcat.util.buf.ByteChunk, var3443=r0, var3699=java.nio.charset.CodingErrorAction, var1116=r2, var2688=r6, var299=java.nio.charset.Charset, var783=$r1, var3663=$r3, var3247=$r4, var3143=java.nio.charset.CharsetDecoder, var1738=$r5, var1614=$r7, var1723=$r10, var3179=$r8, var1592=org.apache.tomcat.util.buf.AbstractChunk, var1185=$i3, var3022=$i1, var151=$i0, var3360=$i2, var3989=java.nio.ByteBuffer, var340=$r9, var1752=java.nio.CharBuffer, var1760=r16, var1308=$r17, var2904=$r18, var3481=$i8, var1044=$i9}
; {org.apache.tomcat.util.buf.ByteChunk=var1490, r0=var3443, java.nio.charset.CodingErrorAction=var3699, r2=var1116, r6=var2688, java.nio.charset.Charset=var299, $r1=var783, $r3=var3663, $r4=var3247, java.nio.charset.CharsetDecoder=var3143, $r5=var1738, $r7=var1614, $r10=var1723, $r8=var3179, org.apache.tomcat.util.buf.AbstractChunk=var1592, $i3=var1185, $i1=var3022, $i0=var151, $i2=var3360, java.nio.ByteBuffer=var3989, $r9=var340, java.nio.CharBuffer=var1752, r16=var1760, $r17=var1308, $r18=var2904, $i8=var3481, $i9=var1044}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.ByteChunk;	r2 := @parameter0: java.nio.charset.CodingErrorAction;	r6 := @parameter1: java.nio.charset.CodingErrorAction;	$r1 = r0.<org.apache.tomcat.util.buf.ByteChunk: java.nio.charset.Charset charset>;	if $r1 != null goto $r3 = <java.nio.charset.CodingErrorAction: java.nio.charset.CodingErrorAction REPLACE>;	$r3 = <java.nio.charset.CodingErrorAction: java.nio.charset.CodingErrorAction REPLACE>;	if r2 != $r3 goto $r4 = r0.<org.apache.tomcat.util.buf.ByteChunk: java.nio.charset.Charset charset>;	$r4 = r0.<org.apache.tomcat.util.buf.ByteChunk: java.nio.charset.Charset charset>;	$r5 = virtualinvoke $r4.<java.nio.charset.Charset: java.nio.charset.CharsetDecoder newDecoder()>();	$r7 = virtualinvoke $r5.<java.nio.charset.CharsetDecoder: java.nio.charset.CharsetDecoder onMalformedInput(java.nio.charset.CodingErrorAction)>(r2);	$r10 = virtualinvoke $r7.<java.nio.charset.CharsetDecoder: java.nio.charset.CharsetDecoder onUnmappableCharacter(java.nio.charset.CodingErrorAction)>(r6);	$r8 = r0.<org.apache.tomcat.util.buf.ByteChunk: byte[] buff>;	$i3 = r0.<org.apache.tomcat.util.buf.ByteChunk: int start>;	$i1 = r0.<org.apache.tomcat.util.buf.ByteChunk: int end>;	$i0 = r0.<org.apache.tomcat.util.buf.ByteChunk: int start>;	$i2 = $i1 - $i0;	$r9 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[],int,int)>($r8, $i3, $i2);	r16 = virtualinvoke $r10.<java.nio.charset.CharsetDecoder: java.nio.CharBuffer decode(java.nio.ByteBuffer)>($r9);	$r17 = new java.lang.String;	$r18 = virtualinvoke r16.<java.nio.CharBuffer: char[] array()>();	$i8 = virtualinvoke r16.<java.nio.CharBuffer: int arrayOffset()>();	$i9 = virtualinvoke r16.<java.nio.CharBuffer: int length()>();	specialinvoke $r17.<java.lang.String: void <init>(char[],int,int)>($r18, $i8, $i9);	return $r17
;block_num 4