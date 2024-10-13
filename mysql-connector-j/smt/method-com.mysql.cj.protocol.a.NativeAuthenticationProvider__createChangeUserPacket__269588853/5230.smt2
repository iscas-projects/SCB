(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var2060 0)
(declare-sort var643 0)
(declare-sort var3671 0)
(declare-sort var1255 0)
(declare-sort var1027 0)
(declare-sort var1513 0)
(declare-sort var702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2060_getClientParam/-1269466014 (var2060) Int)
(declare-fun var2060_getCharsetSettings/-848071942 (var2060) var1255)
(declare-fun var1255_configurePreHandshake/1531994779 (var1255 Bool) Int)
(declare-fun var1255_getPasswordCharacterEncoding/-861467430 (var1255) String)
(declare-fun var3671-init () var3671)
(declare-fun username/-714190539 (var1125) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun useConnectWithDb/-714190539 (var1125) Bool)
(declare-fun database/-714190539 (var1125) String)
(declare-fun <init>/233406230 (var3671 Int) void)
(declare-fun writeInteger/-383739395 (var3671 var1027 Int) void)
(declare-fun var702_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var3671 var1513 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var3671) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1125 var1125)
(declare-const null-var2060 var2060)
(declare-const null-String String)
(declare-const null-var3671 var3671)
(declare-const var1027-INT1 var1027)
(declare-const var1513-STRING_TERM var1513)
(declare-const var3461 var1125) ; Statement: r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var3461 null-var1125)))
(declare-const var3193 var2060) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var3193 null-var2060)))
(declare-const var3930 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var3930 null-String)))
(declare-const var3308 var3671) ; Statement: r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3308 null-var3671)))
(define-const var2631 Int (var2060_getClientParam/-1269466014 var3193)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var2319 var1255 (var2060_getCharsetSettings/-848071942 var3193)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var3393 Int (var1255_configurePreHandshake/1531994779 var2319 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var814 var1255 (var2060_getCharsetSettings/-848071942 var3193)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var1618 String (var1255_getPasswordCharacterEncoding/-861467430 var814)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var1752 var3671 var3671-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var2204 String (username/-714190539 var3461)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var1643 Int (length/-134980193 var2204)) ; Statement: $i2 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var1346 Int (* 3 var1643)) ; Statement: $i3 = 3 * $i2 
(define-const var3712 Int (+ 88 var1346)) ; Statement: $i4 = 88 + $i3 
(define-const var435 Bool (useConnectWithDb/-714190539 var3461)) ; Statement: $z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i15 = 1 
(assert (not (= (ite var435 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1308 String (database/-714190539 var3461)) ; Statement: $r30 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(assert true)
(define-const var1321 Int (length/-134980193 var1308)) ; Statement: $i14 = virtualinvoke $r30.<java.lang.String: int length()>() 
(define-const var3381 Int (* 3 var1321)) ; Statement: $i15 = 3 * $i14 
 ; Statement: goto [?= $i5 = $i4 + $i15] 
(assert true) ; Non Conditional
(define-const var2411 Int (+ var3712 var3381)) ; Statement: $i5 = $i4 + $i15 
(define-const var522 Int (+ var2411 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (<init>/233406230 var1752 var522)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6) 

(declare-const var1752!1 var3671)
(declare-const var522!1 Int)
(define-const var2940 var1027 var1027-INT1) ; Statement: $r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var1752!1 var2940 17)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L) 

(declare-const var1752!2 var3671)
(declare-const var2940!1 var1027)
(declare-const var3001 Int)
(define-const var2200 var1513 var1513-STRING_TERM) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var240 String (username/-714190539 var3461)) ; Statement: $r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var1108 (Array Int Int) (var702_getBytes/-813242536 var240 var1618)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3) 
(assert true)
;(assert (writeBytes/771844277 var1752!2 var2200 var1108)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10) 

(declare-const var1752!3 var3671)
(declare-const var2200!1 var1513)
(declare-const var1108!1 (Array Int Int))
(assert true)
(define-const var1005 Int (getPayloadLength/2056317546 var3308)) ; Statement: $i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
 ; Statement: if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (>= var1005 256)) ; Cond: $i7 >= 256 
(define-const var1269 var1027 var1027-INT1) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var1752!3 var1269 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r12, 0L) 

(declare-const var1752!4 var3671)
(declare-const var1269!1 var1027)
(declare-const var127 Int)
(assert true) ; Non Conditional
(define-const var3683 Bool (useConnectWithDb/-714190539 var3461)) ; Statement: $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (= (ite var3683 1 0) 0)) ; Cond: $z1 == 0 
(define-const var839 var1027 var1027-INT1) ; Statement: $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var1752!4 var839 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r13, 0L) 

(declare-const var1752!5 var3671)
(declare-const var839!1 var1027)
(declare-const var127!1 Int)
(assert true) ; Non Conditional
(define-const var2622 var1027 var1027-INT1) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var1129 Int (cast-from-Int-to-Int var3393)) ; Statement: $l8 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var1752!5 var2622 var1129)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8) 

(declare-const var1752!6 var3671)
(declare-const var2622!1 var1027)
(declare-const var1129!1 Int)
(define-const var3228 var1027 var1027-INT1) ; Statement: $r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var1752!6 var3228 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L) 

(declare-const var1752!7 var3671)
(declare-const var3228!1 var1027)
(declare-const var127!2 Int)
(define-const var3888 var1513 var1513-STRING_TERM) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var257 (Array Int Int) (var702_getBytes/-813242536 var3930 var1618)) ; Statement: $r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3) 
(assert true)
;(assert (writeBytes/771844277 var1752!7 var3888 var257)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18) 

(declare-const var1752!8 var3671)
(declare-const var3888!1 var1513)
(declare-const var257!1 (Array Int Int))
(define-const var441 Int (bv2nat (bvand ((_ int2bv 64) var2631) ((_ int2bv 64) 1048576)))) ; Statement: $l9 = l0 & 1048576L 
(define-const var1413 Int (ite (> var441 0) 1 (ite (< var441 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto return $r4 
(assert (= var1413 0)) ; Cond: $b10 == 0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2060_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var2060_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var1255_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var1255_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var3671-init=([], com.mysql.cj.protocol.a.NativePacketPayload), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var702_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), cast-from-Int-to-Int=([int], long)}
; {var1125=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var3461=r5, var2060=com.mysql.cj.protocol.ServerSession, var3193=r0, var3930=r16, var643=null_type, var3671=com.mysql.cj.protocol.a.NativePacketPayload, var3308=r11, var2631=l0, var1255=com.mysql.cj.CharsetSettings, var2319=$r1, var3393=i1, var814=$r2, var1618=r3, var1752=$r4, var2204=$r6, var1643=$i2, var1346=$i3, var3712=$i4, var435=$z0, var1308=$r30, var1321=$i14, var3381=$i15, var2411=$i5, var522=$i6, var1027=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var2940=$r7, var3001=17L, var1513=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var2200=$r9, var240=$r8, var702=com.mysql.cj.util.StringUtils, var1108=$r10, var1005=$i7, var1269=$r12, var127=0L, var3683=$z1, var839=$r13, var2622=$r14, var1129=$l8, var3228=$r15, var3888=$r17, var257=$r18, var441=$l9, var1413=$b10}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var1125, r5=var3461, com.mysql.cj.protocol.ServerSession=var2060, r0=var3193, r16=var3930, null_type=var643, com.mysql.cj.protocol.a.NativePacketPayload=var3671, r11=var3308, l0=var2631, com.mysql.cj.CharsetSettings=var1255, $r1=var2319, i1=var3393, $r2=var814, r3=var1618, $r4=var1752, $r6=var2204, $i2=var1643, $i3=var1346, $i4=var3712, $z0=var435, $r30=var1308, $i14=var1321, $i15=var3381, $i5=var2411, $i6=var522, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var1027, $r7=var2940, 17L=var3001, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1513, $r9=var2200, $r8=var240, com.mysql.cj.util.StringUtils=var702, $r10=var1108, $i7=var1005, $r12=var1269, 0L=var127, $z1=var3683, $r13=var839, $r14=var2622, $l8=var1129, $r15=var3228, $r17=var3888, $r18=var257, $l9=var441, $b10=var1413}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r16 := @parameter1: java.lang.String;	r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i2 = virtualinvoke $r6.<java.lang.String: int length()>();	$i3 = 3 * $i2;	$i4 = 88 + $i3;	$z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i15 = 1;	$r30 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$i14 = virtualinvoke $r30.<java.lang.String: int length()>();	$i15 = 3 * $i14;	goto [?= $i5 = $i4 + $i15];	$i5 = $i4 + $i15;	$i6 = $i5 + 1;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6);	$r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10);	$i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r12, 0L);	$z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r13, 0L);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l8 = (long) i1;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8);	$r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L);	$r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18);	$l9 = l0 & 1048576L;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto return $r4;	return $r4
;block_num 8