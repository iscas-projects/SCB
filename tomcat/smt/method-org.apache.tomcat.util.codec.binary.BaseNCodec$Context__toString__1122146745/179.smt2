(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2343 0)
(declare-sort var634 0)
(declare-sort var600 0)
(declare-sort var3458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var634-init () (Array Int var634))
(declare-fun getClass/1258963082 (var634) ClassObject)
(declare-fun cast-from-var2343-to-var634 (var2343) var634)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var634 (String) var634)
(declare-fun buffer/1105586401 (var2343) (Array Int Int))
(declare-fun var600_toHexString/1906360510 ((Array Int Int)) String)
(declare-fun currentLinePos/1105586401 (var2343) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var634 (Int) var634)
(declare-fun eof/1105586401 (var2343) Bool)
(declare-fun var3458_valueOf/1602327315 (Bool) var3458)
(declare-fun cast-from-var3458-to-var634 (var3458) var634)
(declare-fun ibitWorkArea/1105586401 (var2343) Int)
(declare-fun modulus/1105586401 (var2343) Int)
(declare-fun pos/1105586401 (var2343) Int)
(declare-fun readPos/1105586401 (var2343) Int)
(declare-fun String_format/1339386452 (String (Array Int var634)) String)
(declare-const null-var2343 var2343)
(declare-const null-__Array__Int__var634__ (Array Int var634))
(declare-const var1527 var2343) ; Statement: r1 := @this: org.apache.tomcat.util.codec.binary.BaseNCodec$Context 
(assert (not (= var1527 null-var2343)))
(define-const var1793 (Array Int var634) arr-var634-init) ; Statement: $r0 = newarray (java.lang.Object)[8] 
(assert true)
(define-const var3356 ClassObject (getClass/1258963082 (cast-from-var2343-to-var634 var1527))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1577 String (getSimpleName/-390194377 var3356)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var1793!1 (Array Int var634))
(assert (not (= var1793!1 null-__Array__Int__var634__)))
(assert (= (select var1793!1 0) (cast-from-String-to-var634 var1577))) ; Statement: $r0[0] = $r3 
(define-const var3569 (Array Int Int) (buffer/1105586401 var1527)) ; Statement: $r4 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: byte[] buffer> 
(define-const var502 String (var600_toHexString/1906360510 var3569)) ; Statement: $r5 = staticinvoke <org.apache.tomcat.util.buf.HexUtils: java.lang.String toHexString(byte[])>($r4) 
(declare-const var1793!2 (Array Int var634))
(assert (not (= var1793!2 null-__Array__Int__var634__)))
(assert (= (select var1793!2 1) (cast-from-String-to-var634 var502))) ; Statement: $r0[1] = $r5 
(define-const var1740 Int (currentLinePos/1105586401 var1527)) ; Statement: $i0 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int currentLinePos> 
(define-const var2321 Int (Int_valueOf/-1371140006 var1740)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var1793!3 (Array Int var634))
(assert (not (= var1793!3 null-__Array__Int__var634__)))
(assert (= (select var1793!3 2) (cast-from-Int-to-var634 var2321))) ; Statement: $r0[2] = $r6 
(define-const var1198 Bool (eof/1105586401 var1527)) ; Statement: $z0 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: boolean eof> 
(define-const var3982 var3458 (var3458_valueOf/1602327315 var1198)) ; Statement: $r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
(declare-const var1793!4 (Array Int var634))
(assert (not (= var1793!4 null-__Array__Int__var634__)))
(assert (= (select var1793!4 3) (cast-from-var3458-to-var634 var3982))) ; Statement: $r0[3] = $r7 
(define-const var3563 Int (ibitWorkArea/1105586401 var1527)) ; Statement: $i1 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int ibitWorkArea> 
(define-const var3767 Int (Int_valueOf/-1371140006 var3563)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var1793!5 (Array Int var634))
(assert (not (= var1793!5 null-__Array__Int__var634__)))
(assert (= (select var1793!5 4) (cast-from-Int-to-var634 var3767))) ; Statement: $r0[4] = $r8 
(define-const var1296 Int (modulus/1105586401 var1527)) ; Statement: $i2 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int modulus> 
(define-const var179 Int (Int_valueOf/-1371140006 var1296)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(declare-const var1793!6 (Array Int var634))
(assert (not (= var1793!6 null-__Array__Int__var634__)))
(assert (= (select var1793!6 5) (cast-from-Int-to-var634 var179))) ; Statement: $r0[5] = $r9 
(define-const var3475 Int (pos/1105586401 var1527)) ; Statement: $i3 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int pos> 
(define-const var25 Int (Int_valueOf/-1371140006 var3475)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3) 
(declare-const var1793!7 (Array Int var634))
(assert (not (= var1793!7 null-__Array__Int__var634__)))
(assert (= (select var1793!7 6) (cast-from-Int-to-var634 var25))) ; Statement: $r0[6] = $r10 
(define-const var1200 Int (readPos/1105586401 var1527)) ; Statement: $i4 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int readPos> 
(define-const var1246 Int (Int_valueOf/-1371140006 var1200)) ; Statement: $r11 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4) 
(declare-const var1793!8 (Array Int var634))
(assert (not (= var1793!8 null-__Array__Int__var634__)))
(assert (= (select var1793!8 7) (cast-from-Int-to-var634 var1246))) ; Statement: $r0[7] = $r11 
(define-const var1446 String (String_format/1339386452 "%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]" var1793!8)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", $r0) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var634-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2343-to-var634=([org.apache.tomcat.util.codec.binary.BaseNCodec$Context], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var634=([java.lang.String], java.lang.Object), buffer/1105586401=([org.apache.tomcat.util.codec.binary.BaseNCodec$Context], byte[]), var600_toHexString/1906360510=([byte[]], java.lang.String), currentLinePos/1105586401=([org.apache.tomcat.util.codec.binary.BaseNCodec$Context], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var634=([java.lang.Integer], java.lang.Object), eof/1105586401=([org.apache.tomcat.util.codec.binary.BaseNCodec$Context], boolean), var3458_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var3458-to-var634=([java.lang.Boolean], java.lang.Object), ibitWorkArea/1105586401=([org.apache.tomcat.util.codec.binary.BaseNCodec$Context], int), modulus/1105586401=([org.apache.tomcat.util.codec.binary.BaseNCodec$Context], int), pos/1105586401=([org.apache.tomcat.util.codec.binary.BaseNCodec$Context], int), readPos/1105586401=([org.apache.tomcat.util.codec.binary.BaseNCodec$Context], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2343=org.apache.tomcat.util.codec.binary.BaseNCodec$Context, var1527=r1, var634=java.lang.Object, var1793=$r0, var3356=$r2, var1577=$r3, var3569=$r4, var600=org.apache.tomcat.util.buf.HexUtils, var502=$r5, var1740=$i0, var2321=$r6, var1198=$z0, var3458=java.lang.Boolean, var3982=$r7, var3563=$i1, var3767=$r8, var1296=$i2, var179=$r9, var3475=$i3, var25=$r10, var1200=$i4, var1246=$r11, var1446=$r12}
; {org.apache.tomcat.util.codec.binary.BaseNCodec$Context=var2343, r1=var1527, java.lang.Object=var634, $r0=var1793, $r2=var3356, $r3=var1577, $r4=var3569, org.apache.tomcat.util.buf.HexUtils=var600, $r5=var502, $i0=var1740, $r6=var2321, $z0=var1198, java.lang.Boolean=var3458, $r7=var3982, $i1=var3563, $r8=var3767, $i2=var1296, $r9=var179, $i3=var3475, $r10=var25, $i4=var1200, $r11=var1246, $r12=var1446}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.tomcat.util.codec.binary.BaseNCodec$Context;	$r0 = newarray (java.lang.Object)[8];	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	$r4 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: byte[] buffer>;	$r5 = staticinvoke <org.apache.tomcat.util.buf.HexUtils: java.lang.String toHexString(byte[])>($r4);	$r0[1] = $r5;	$i0 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int currentLinePos>;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[2] = $r6;	$z0 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: boolean eof>;	$r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	$r0[3] = $r7;	$i1 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int ibitWorkArea>;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[4] = $r8;	$i2 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int modulus>;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r0[5] = $r9;	$i3 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int pos>;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3);	$r0[6] = $r10;	$i4 = r1.<org.apache.tomcat.util.codec.binary.BaseNCodec$Context: int readPos>;	$r11 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4);	$r0[7] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", $r0);	return $r12
;block_num 1