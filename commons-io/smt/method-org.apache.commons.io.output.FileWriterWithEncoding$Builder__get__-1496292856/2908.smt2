(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2564 0)
(declare-sort var2343 0)
(declare-sort var1346 0)
(declare-sort var1585 0)
(declare-sort var1738 0)
(declare-sort var1375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charsetEncoder/-1079597952 (var2564) var2343)
(declare-fun getCharset/-1200697950 (var1585) var1346)
(declare-fun cast-from-var2564-to-var1585 (var2564) var1585)
(declare-fun charset/-1130615797 (var2343) var1346)
(declare-fun equals/-507840365 (var1346 var1738) Bool)
(declare-fun cast-from-var1346-to-var1738 (var1346) var1738)
(declare-fun var1375-init () var1375)
(declare-fun arr-var1738-init () (Array Int var1738))
(declare-fun String_format/1339386452 (String (Array Int var1738)) String)
(declare-fun <init>/-1092629202 (var1375 String) void)
(declare-const null-var2564 var2564)
(declare-const null-var2343 var2343)
(declare-const null-var1346 var1346)
(declare-const null-__Array__Int__var1738__ (Array Int var1738))
(declare-const var2251 var2564) ; Statement: r0 := @this: org.apache.commons.io.output.FileWriterWithEncoding$Builder 
(assert (not (= var2251 null-var2564)))
(define-const var1992 var2343 (charsetEncoder/-1079597952 var2251)) ; Statement: $r1 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
 ; Statement: if $r1 == null goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
(assert (not (= var1992 null-var2343))) ; Negate: Cond: $r1 == null  
(assert true)
(define-const var2216 var1346 (getCharset/-1200697950 (cast-from-var2564-to-var1585 var2251))) ; Statement: $r6 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>() 
 ; Statement: if $r6 == null goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
(assert (not (= var2216 null-var1346))) ; Negate: Cond: $r6 == null  
(define-const var1034 var2343 (charsetEncoder/-1079597952 var2251)) ; Statement: $r7 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
(assert true)
(define-const var222 var1346 (charset/-1130615797 var1034)) ; Statement: $r9 = virtualinvoke $r7.<java.nio.charset.CharsetEncoder: java.nio.charset.Charset charset()>() 
(assert true)
(define-const var3377 var1346 (getCharset/-1200697950 (cast-from-var2564-to-var1585 var2251))) ; Statement: $r8 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>() 
(assert true)
(define-const var1507 Bool (equals/-507840365 var222 (cast-from-var1346-to-var1738 var3377))) ; Statement: $z1 = virtualinvoke $r9.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z1 != 0 goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
(assert (not (not (= (ite var1507 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var921 var1375 var1375-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(define-const var3357 (Array Int var1738) arr-var1738-init) ; Statement: $r11 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var1600 var1346 (getCharset/-1200697950 (cast-from-var2564-to-var1585 var2251))) ; Statement: $r12 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>() 
(declare-const var3357!1 (Array Int var1738))
(assert (not (= var3357!1 null-__Array__Int__var1738__)))
(assert (= (select var3357!1 0) (cast-from-var1346-to-var1738 var1600))) ; Statement: $r11[0] = $r12 
(define-const var502 var2343 (charsetEncoder/-1079597952 var2251)) ; Statement: $r13 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
(assert true)
(define-const var955 var1346 (charset/-1130615797 var502)) ; Statement: $r14 = virtualinvoke $r13.<java.nio.charset.CharsetEncoder: java.nio.charset.Charset charset()>() 
(declare-const var3357!2 (Array Int var1738))
(assert (not (= var3357!2 null-__Array__Int__var1738__)))
(assert (= (select var3357!2 1) (cast-from-var1346-to-var1738 var955))) ; Statement: $r11[1] = $r14 
(define-const var2632 String (String_format/1339386452 "Mismatched Charset(%s) and CharsetEncoder(%s)" var3357!2)) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Mismatched Charset(%s) and CharsetEncoder(%s)", $r11) 
(assert true)
;(assert (<init>/-1092629202 var921 var2632)) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15) 

(declare-const var921!1 var1375)
(declare-const var2632!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {charsetEncoder/-1079597952=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], java.nio.charset.CharsetEncoder), getCharset/-1200697950=([org.apache.commons.io.build.AbstractStreamBuilder], java.nio.charset.Charset), cast-from-var2564-to-var1585=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], org.apache.commons.io.build.AbstractStreamBuilder), charset/-1130615797=([java.nio.charset.CharsetEncoder], java.nio.charset.Charset), equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var1346-to-var1738=([java.nio.charset.Charset], java.lang.Object), var1375-init=([], java.lang.IllegalStateException), arr-var1738-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2564=org.apache.commons.io.output.FileWriterWithEncoding$Builder, var2251=r0, var2343=java.nio.charset.CharsetEncoder, var1992=$r1, var1346=java.nio.charset.Charset, var1585=org.apache.commons.io.build.AbstractStreamBuilder, var2216=$r6, var1034=$r7, var222=$r9, var3377=$r8, var1738=java.lang.Object, var1507=$z1, var1375=java.lang.IllegalStateException, var921=$r10, var3357=$r11, var1600=$r12, var502=$r13, var955=$r14, var2632=$r15}
; {org.apache.commons.io.output.FileWriterWithEncoding$Builder=var2564, r0=var2251, java.nio.charset.CharsetEncoder=var2343, $r1=var1992, java.nio.charset.Charset=var1346, org.apache.commons.io.build.AbstractStreamBuilder=var1585, $r6=var2216, $r7=var1034, $r9=var222, $r8=var3377, java.lang.Object=var1738, $z1=var1507, java.lang.IllegalStateException=var1375, $r10=var921, $r11=var3357, $r12=var1600, $r13=var502, $r14=var955, $r15=var2632}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.commons.io.output.FileWriterWithEncoding$Builder;	$r1 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	if $r1 == null goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	$r6 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>();	if $r6 == null goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	$r7 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	$r9 = virtualinvoke $r7.<java.nio.charset.CharsetEncoder: java.nio.charset.Charset charset()>();	$r8 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>();	$z1 = virtualinvoke $r9.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r8);	if $z1 != 0 goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	$r10 = new java.lang.IllegalStateException;	$r11 = newarray (java.lang.Object)[2];	$r12 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>();	$r11[0] = $r12;	$r13 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	$r14 = virtualinvoke $r13.<java.nio.charset.CharsetEncoder: java.nio.charset.Charset charset()>();	$r11[1] = $r14;	$r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Mismatched Charset(%s) and CharsetEncoder(%s)", $r11);	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 4