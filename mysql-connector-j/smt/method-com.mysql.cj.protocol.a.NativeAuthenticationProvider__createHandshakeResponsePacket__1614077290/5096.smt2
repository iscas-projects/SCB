(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var403 0)
(declare-sort var2142 0)
(declare-sort var2153 0)
(declare-sort var2146 0)
(declare-sort var1080 0)
(declare-sort var2491 0)
(declare-sort var3126 0)
(declare-sort var3812 0)
(declare-sort var2145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2142_getClientParam/-1269466014 (var2142) Int)
(declare-fun var2142_getCharsetSettings/-848071942 (var2142) var1080)
(declare-fun var1080_configurePreHandshake/1531994779 (var1080 Bool) Int)
(declare-fun var1080_getPasswordCharacterEncoding/-861467430 (var1080) String)
(declare-fun username/-714190539 (var403) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2146-init () var2146)
(declare-fun useConnectWithDb/-714190539 (var403) Bool)
(declare-fun database/-714190539 (var403) String)
(declare-fun <init>/233406230 (var2146 Int) void)
(declare-fun writeInteger/-383739395 (var2146 var2491 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun writeBytes/-546957861 (var2146 var3126 (Array Int Int)) void)
(declare-fun var2145_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var2146 var3812 (Array Int Int)) void)
(declare-fun readBytes/890815292 (var2146 var3812) (Array Int Int))
(declare-const null-var403 var403)
(declare-const null-var2142 var2142)
(declare-const null-String String)
(declare-const null-var2146 var2146)
(declare-const var2491-INT4 var2491)
(declare-const var2491-INT1 var2491)
(declare-const var3126-STRING_FIXED var3126)
(declare-const var3812-STRING_TERM var3812)
(declare-const var3812-STRING_LENENC var3812)
(declare-const var3812-STRING_EOF var3812)
(declare-const var3038 var403) ; Statement: r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var3038 null-var403)))
(declare-const var1058 var2142) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var1058 null-var2142)))
(declare-const var1046 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var1046 null-String)))
(declare-const var89 var2146) ; Statement: r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var89 null-var2146)))
(define-const var3312 Int (var2142_getClientParam/-1269466014 var1058)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var2115 var1080 (var2142_getCharsetSettings/-848071942 var1058)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var1894 Int (var1080_configurePreHandshake/1531994779 var2115 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var3276 var1080 (var2142_getCharsetSettings/-848071942 var1058)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var875 String (var1080_getPasswordCharacterEncoding/-861467430 var3276)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var719 String (username/-714190539 var3038)) ; Statement: $r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
 ; Statement: if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert (not (= var719 null-String))) ; Cond: $r5 != null 
(define-const var77 String (username/-714190539 var3038)) ; Statement: $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var1986 Int (length/-134980193 var77)) ; Statement: $i13 = virtualinvoke $r6.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var2192 var2146 var2146-init) ; Statement: $r7 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var572 Int (* 3 var1986)) ; Statement: $i2 = 3 * $i13 
(define-const var3003 Int (+ 88 var572)) ; Statement: $i3 = 88 + $i2 
(define-const var1828 Bool (useConnectWithDb/-714190539 var3038)) ; Statement: $z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i14 = 0 
(assert (not (= (ite var1828 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2784 String (database/-714190539 var3038)) ; Statement: $r34 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(assert true)
(define-const var1706 Int (length/-134980193 var2784)) ; Statement: $i12 = virtualinvoke $r34.<java.lang.String: int length()>() 
(define-const var1316 Int (* 3 var1706)) ; Statement: $i14 = 3 * $i12 
 ; Statement: goto [?= $i4 = $i3 + $i14] 
(assert true) ; Non Conditional
(define-const var2177 Int (+ var3003 var1316)) ; Statement: $i4 = $i3 + $i14 
(assert true)
;(assert (<init>/233406230 var2192 var2177)) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4) 

(declare-const var2192!1 var2146)
(declare-const var2177!1 Int)
(define-const var3807 var2491 var2491-INT4) ; Statement: $r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var2192!1 var3807 var3312)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0) 

(declare-const var2192!2 var2146)
(declare-const var3807!1 var2491)
(declare-const var3312!1 Int)
(define-const var1287 var2491 var2491-INT4) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var2192!2 var1287 16777215)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L) 

(declare-const var2192!3 var2146)
(declare-const var1287!1 var2491)
(declare-const var771 Int)
(define-const var2717 var2491 var2491-INT1) ; Statement: $r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var33 Int (cast-from-Int-to-Int var1894)) ; Statement: $l5 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var2192!3 var2717 var33)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5) 

(declare-const var2192!4 var2146)
(declare-const var2717!1 var2491)
(declare-const var33!1 Int)
(define-const var24 var3126 var3126-STRING_FIXED) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(define-const var3563 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[23] 
(assert true)
;(assert (writeBytes/-546957861 var2192!4 var24 var3563)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11) 

(declare-const var2192!5 var2146)
(declare-const var24!1 var3126)
(declare-const var3563!1 (Array Int Int))
(define-const var1215 var3812 var3812-STRING_TERM) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var852 String (username/-714190539 var3038)) ; Statement: $r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var2808 (Array Int Int) (var2145_getBytes/-813242536 var852 var875)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3) 
(assert true)
;(assert (writeBytes/771844277 var2192!5 var1215 var2808)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15) 

(declare-const var2192!6 var2146)
(declare-const var1215!1 var3812)
(declare-const var2808!1 (Array Int Int))
(define-const var296 Int (bv2nat (bvand ((_ int2bv 64) var3312!1) ((_ int2bv 64) 2097152)))) ; Statement: $l6 = l0 & 2097152L 
(define-const var1553 Int (ite (> var296 0) 1 (ite (< var296 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (= var1553 0))) ; Negate: Cond: $b7 == 0  
(define-const var3939 var3812 var3812-STRING_LENENC) ; Statement: $r32 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC> 
(define-const var1187 var3812 var3812-STRING_EOF) ; Statement: $r31 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var194 (Array Int Int) (readBytes/890815292 var89 var1187)) ; Statement: $r33 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType)>($r31) 
(assert true)
;(assert (writeBytes/771844277 var2192!6 var3939 var194)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r32, $r33) 

(declare-const var2192!7 var2146)
(declare-const var3939!1 var3812)
(declare-const var194!1 (Array Int Int))
 ; Statement: goto [?= $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>] 
(assert true) ; Non Conditional
(define-const var2501 Bool (useConnectWithDb/-714190539 var3038)) ; Statement: $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert (= (ite var2501 1 0) 0)) ; Cond: $z1 == 0 
(define-const var71 var3812 var3812-STRING_TERM) ; Statement: $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2362 (Array Int Int) (var2145_getBytes/-813242536 var1046 var875)) ; Statement: $r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3) 
(assert true)
;(assert (writeBytes/771844277 var2192!7 var71 var2362)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22) 

(declare-const var2192!8 var2146)
(declare-const var71!1 var3812)
(declare-const var2362!1 (Array Int Int))
(define-const var1197 Int (bv2nat (bvand ((_ int2bv 64) var3312!1) ((_ int2bv 64) 1048576)))) ; Statement: $l10 = l0 & 1048576L 
(define-const var200 Int (ite (> var1197 0) 1 (ite (< var1197 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto return $r7 
(assert (= var200 0)) ; Cond: $b11 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2142_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var2142_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var1080_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var1080_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), var2146-init=([], com.mysql.cj.protocol.a.NativePacketPayload), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), cast-from-Int-to-Int=([int], long), arr-Int-init=([], byte[]), writeBytes/-546957861=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, byte[]], void), var2145_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), readBytes/890815292=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType], byte[])}
; {var403=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var3038=r4, var2142=com.mysql.cj.protocol.ServerSession, var1058=r0, var1046=r20, var2153=null_type, var2146=com.mysql.cj.protocol.a.NativePacketPayload, var89=r16, var3312=l0, var1080=com.mysql.cj.CharsetSettings, var2115=$r1, var1894=i1, var3276=$r2, var875=r3, var719=$r5, var77=$r6, var1986=$i13, var2192=$r7, var572=$i2, var3003=$i3, var1828=$z0, var2784=$r34, var1706=$i12, var1316=$i14, var2177=$i4, var2491=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var3807=$r8, var1287=$r9, var771=16777215L, var2717=$r10, var33=$l5, var3126=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var24=$r12, var3563=$r11, var3812=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var1215=$r14, var852=$r13, var2145=com.mysql.cj.util.StringUtils, var2808=$r15, var296=$l6, var1553=$b7, var3939=$r32, var1187=$r31, var194=$r33, var2501=$z1, var71=$r21, var2362=$r22, var1197=$l10, var200=$b11}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var403, r4=var3038, com.mysql.cj.protocol.ServerSession=var2142, r0=var1058, r20=var1046, null_type=var2153, com.mysql.cj.protocol.a.NativePacketPayload=var2146, r16=var89, l0=var3312, com.mysql.cj.CharsetSettings=var1080, $r1=var2115, i1=var1894, $r2=var3276, r3=var875, $r5=var719, $r6=var77, $i13=var1986, $r7=var2192, $i2=var572, $i3=var3003, $z0=var1828, $r34=var2784, $i12=var1706, $i14=var1316, $i4=var2177, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var2491, $r8=var3807, $r9=var1287, 16777215L=var771, $r10=var2717, $l5=var33, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var3126, $r12=var24, $r11=var3563, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var3812, $r14=var1215, $r13=var852, com.mysql.cj.util.StringUtils=var2145, $r15=var2808, $l6=var296, $b7=var1553, $r32=var3939, $r31=var1187, $r33=var194, $z1=var2501, $r21=var71, $r22=var2362, $l10=var1197, $b11=var200}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r20 := @parameter1: java.lang.String;	r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i13 = virtualinvoke $r6.<java.lang.String: int length()>();	$r7 = new com.mysql.cj.protocol.a.NativePacketPayload;	$i2 = 3 * $i13;	$i3 = 88 + $i2;	$z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i14 = 0;	$r34 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$i12 = virtualinvoke $r34.<java.lang.String: int length()>();	$i14 = 3 * $i12;	goto [?= $i4 = $i3 + $i14];	$i4 = $i3 + $i14;	specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4);	$r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L);	$r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l5 = (long) i1;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5);	$r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r11 = newarray (byte)[23];	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15);	$l6 = l0 & 2097152L;	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r32 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC>;	$r31 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r33 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType)>($r31);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r32, $r33);	goto [?= $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>];	$z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22);	$l10 = l0 & 1048576L;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto return $r7;	return $r7
;block_num 9