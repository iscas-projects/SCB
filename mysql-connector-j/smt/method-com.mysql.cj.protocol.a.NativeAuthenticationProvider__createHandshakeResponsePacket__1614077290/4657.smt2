(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2903 0)
(declare-sort var2957 0)
(declare-sort var3983 0)
(declare-sort var1773 0)
(declare-sort var610 0)
(declare-sort var2561 0)
(declare-sort var2626 0)
(declare-sort var1493 0)
(declare-sort var3899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2957_getClientParam/-1269466014 (var2957) Int)
(declare-fun var2957_getCharsetSettings/-848071942 (var2957) var610)
(declare-fun var610_configurePreHandshake/1531994779 (var610 Bool) Int)
(declare-fun var610_getPasswordCharacterEncoding/-861467430 (var610) String)
(declare-fun username/-714190539 (var2903) String)
(declare-fun var1773-init () var1773)
(declare-fun useConnectWithDb/-714190539 (var2903) Bool)
(declare-fun database/-714190539 (var2903) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/233406230 (var1773 Int) void)
(declare-fun writeInteger/-383739395 (var1773 var2561 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun writeBytes/-546957861 (var1773 var2626 (Array Int Int)) void)
(declare-fun var3899_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var1773 var1493 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var1773) Int)
(declare-fun getByteBuffer/-505169391 (var1773) (Array Int Int))
(declare-const null-var2903 var2903)
(declare-const null-var2957 var2957)
(declare-const null-String String)
(declare-const null-var1773 var1773)
(declare-const var2561-INT4 var2561)
(declare-const var2561-INT1 var2561)
(declare-const var2626-STRING_FIXED var2626)
(declare-const var1493-STRING_TERM var1493)
(declare-const var1493-STRING_EOF var1493)
(declare-const var2020 var2903) ; Statement: r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var2020 null-var2903)))
(declare-const var1608 var2957) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var1608 null-var2957)))
(declare-const var2209 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var2209 null-String)))
(declare-const var1811 var1773) ; Statement: r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var1811 null-var1773)))
(define-const var3971 Int (var2957_getClientParam/-1269466014 var1608)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var1960 var610 (var2957_getCharsetSettings/-848071942 var1608)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var766 Int (var610_configurePreHandshake/1531994779 var1960 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var430 var610 (var2957_getCharsetSettings/-848071942 var1608)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var118 String (var610_getPasswordCharacterEncoding/-861467430 var430)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var2196 String (username/-714190539 var2020)) ; Statement: $r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
 ; Statement: if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert (not (not (= var2196 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var358 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $r7 = new com.mysql.cj.protocol.a.NativePacketPayload] 
(assert true) ; Non Conditional
(define-const var577 var1773 var1773-init) ; Statement: $r7 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var999 Int (* 3 var358)) ; Statement: $i2 = 3 * $i13 
(define-const var2911 Int (+ 88 var999)) ; Statement: $i3 = 88 + $i2 
(define-const var1855 Bool (useConnectWithDb/-714190539 var2020)) ; Statement: $z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i14 = 0 
(assert (not (= (ite var1855 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1866 String (database/-714190539 var2020)) ; Statement: $r34 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(assert true)
(define-const var689 Int (length/-134980193 var1866)) ; Statement: $i12 = virtualinvoke $r34.<java.lang.String: int length()>() 
(define-const var2935 Int (* 3 var689)) ; Statement: $i14 = 3 * $i12 
 ; Statement: goto [?= $i4 = $i3 + $i14] 
(assert true) ; Non Conditional
(define-const var3596 Int (+ var2911 var2935)) ; Statement: $i4 = $i3 + $i14 
(assert true)
;(assert (<init>/233406230 var577 var3596)) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4) 

(declare-const var577!1 var1773)
(declare-const var3596!1 Int)
(define-const var866 var2561 var2561-INT4) ; Statement: $r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var577!1 var866 var3971)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0) 

(declare-const var577!2 var1773)
(declare-const var866!1 var2561)
(declare-const var3971!1 Int)
(define-const var2057 var2561 var2561-INT4) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var577!2 var2057 16777215)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L) 

(declare-const var577!3 var1773)
(declare-const var2057!1 var2561)
(declare-const var164 Int)
(define-const var2061 var2561 var2561-INT1) ; Statement: $r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var1625 Int (cast-from-Int-to-Int var766)) ; Statement: $l5 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var577!3 var2061 var1625)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5) 

(declare-const var577!4 var1773)
(declare-const var2061!1 var2561)
(declare-const var1625!1 Int)
(define-const var2386 var2626 var2626-STRING_FIXED) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(define-const var1406 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[23] 
(assert true)
;(assert (writeBytes/-546957861 var577!4 var2386 var1406)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11) 

(declare-const var577!5 var1773)
(declare-const var2386!1 var2626)
(declare-const var1406!1 (Array Int Int))
(define-const var3536 var1493 var1493-STRING_TERM) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var710 String (username/-714190539 var2020)) ; Statement: $r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var1063 (Array Int Int) (var3899_getBytes/-813242536 var710 var118)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3) 
(assert true)
;(assert (writeBytes/771844277 var577!5 var3536 var1063)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15) 

(declare-const var577!6 var1773)
(declare-const var3536!1 var1493)
(declare-const var1063!1 (Array Int Int))
(define-const var3955 Int (bv2nat (bvand ((_ int2bv 64) var3971!1) ((_ int2bv 64) 2097152)))) ; Statement: $l6 = l0 & 2097152L 
(define-const var2540 Int (ite (> var3955 0) 1 (ite (< var3955 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (= var2540 0)) ; Cond: $b7 == 0 
(define-const var2998 var2561 var2561-INT1) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
(define-const var2696 Int (getPayloadLength/2056317546 var1811)) ; Statement: $i8 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(define-const var1467 Int (cast-from-Int-to-Int var2696)) ; Statement: $l9 = (long) $i8 
(assert true)
;(assert (writeInteger/-383739395 var577!6 var2998 var1467)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r17, $l9) 

(declare-const var577!7 var1773)
(declare-const var2998!1 var2561)
(declare-const var1467!1 Int)
(define-const var3087 var1493 var1493-STRING_EOF) ; Statement: $r18 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var3511 (Array Int Int) (getByteBuffer/-505169391 var1811)) ; Statement: $r19 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(assert true)
;(assert (writeBytes/771844277 var577!7 var3087 var3511)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r18, $r19) 

(declare-const var577!8 var1773)
(declare-const var3087!1 var1493)
(declare-const var3511!1 (Array Int Int))
(assert true) ; Non Conditional
(define-const var3334 Bool (useConnectWithDb/-714190539 var2020)) ; Statement: $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert (= (ite var3334 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3845 var1493 var1493-STRING_TERM) ; Statement: $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var691 (Array Int Int) (var3899_getBytes/-813242536 var2209 var118)) ; Statement: $r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3) 
(assert true)
;(assert (writeBytes/771844277 var577!8 var3845 var691)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22) 

(declare-const var577!9 var1773)
(declare-const var3845!1 var1493)
(declare-const var691!1 (Array Int Int))
(define-const var478 Int (bv2nat (bvand ((_ int2bv 64) var3971!1) ((_ int2bv 64) 1048576)))) ; Statement: $l10 = l0 & 1048576L 
(define-const var3318 Int (ite (> var478 0) 1 (ite (< var478 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto return $r7 
(assert (= var3318 0)) ; Cond: $b11 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2957_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var2957_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var610_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var610_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), var1773-init=([], com.mysql.cj.protocol.a.NativePacketPayload), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), cast-from-Int-to-Int=([int], long), arr-Int-init=([], byte[]), writeBytes/-546957861=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, byte[]], void), var3899_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[])}
; {var2903=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var2020=r4, var2957=com.mysql.cj.protocol.ServerSession, var1608=r0, var2209=r20, var3983=null_type, var1773=com.mysql.cj.protocol.a.NativePacketPayload, var1811=r16, var3971=l0, var610=com.mysql.cj.CharsetSettings, var1960=$r1, var766=i1, var430=$r2, var118=r3, var2196=$r5, var358=$i13, var577=$r7, var999=$i2, var2911=$i3, var1855=$z0, var1866=$r34, var689=$i12, var2935=$i14, var3596=$i4, var2561=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var866=$r8, var2057=$r9, var164=16777215L, var2061=$r10, var1625=$l5, var2626=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var2386=$r12, var1406=$r11, var1493=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var3536=$r14, var710=$r13, var3899=com.mysql.cj.util.StringUtils, var1063=$r15, var3955=$l6, var2540=$b7, var2998=$r17, var2696=$i8, var1467=$l9, var3087=$r18, var3511=$r19, var3334=$z1, var3845=$r21, var691=$r22, var478=$l10, var3318=$b11}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var2903, r4=var2020, com.mysql.cj.protocol.ServerSession=var2957, r0=var1608, r20=var2209, null_type=var3983, com.mysql.cj.protocol.a.NativePacketPayload=var1773, r16=var1811, l0=var3971, com.mysql.cj.CharsetSettings=var610, $r1=var1960, i1=var766, $r2=var430, r3=var118, $r5=var2196, $i13=var358, $r7=var577, $i2=var999, $i3=var2911, $z0=var1855, $r34=var1866, $i12=var689, $i14=var2935, $i4=var3596, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var2561, $r8=var866, $r9=var2057, 16777215L=var164, $r10=var2061, $l5=var1625, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var2626, $r12=var2386, $r11=var1406, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1493, $r14=var3536, $r13=var710, com.mysql.cj.util.StringUtils=var3899, $r15=var1063, $l6=var3955, $b7=var2540, $r17=var2998, $i8=var2696, $l9=var1467, $r18=var3087, $r19=var3511, $z1=var3334, $r21=var3845, $r22=var691, $l10=var478, $b11=var3318}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r20 := @parameter1: java.lang.String;	r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i13 = 0;	goto [?= $r7 = new com.mysql.cj.protocol.a.NativePacketPayload];	$r7 = new com.mysql.cj.protocol.a.NativePacketPayload;	$i2 = 3 * $i13;	$i3 = 88 + $i2;	$z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i14 = 0;	$r34 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$i12 = virtualinvoke $r34.<java.lang.String: int length()>();	$i14 = 3 * $i12;	goto [?= $i4 = $i3 + $i14];	$i4 = $i3 + $i14;	specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4);	$r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L);	$r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l5 = (long) i1;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5);	$r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r11 = newarray (byte)[23];	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15);	$l6 = l0 & 2097152L;	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$i8 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	$l9 = (long) $i8;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r17, $l9);	$r18 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r19 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r18, $r19);	$z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22);	$l10 = l0 & 1048576L;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto return $r7;	return $r7
;block_num 9