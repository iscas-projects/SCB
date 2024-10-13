(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort var1416 0)
(declare-sort var3001 0)
(declare-sort var2119 0)
(declare-sort var333 0)
(declare-sort var504 0)
(declare-sort var1683 0)
(declare-sort var2157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1416_getClientParam/-1269466014 (var1416) Int)
(declare-fun var1416_getCharsetSettings/-848071942 (var1416) var333)
(declare-fun var333_configurePreHandshake/1531994779 (var333 Bool) Int)
(declare-fun var333_getPasswordCharacterEncoding/-861467430 (var333) String)
(declare-fun var2119-init () var2119)
(declare-fun username/-714190539 (var122) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun useConnectWithDb/-714190539 (var122) Bool)
(declare-fun <init>/233406230 (var2119 Int) void)
(declare-fun writeInteger/-383739395 (var2119 var504 Int) void)
(declare-fun var2157_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var2119 var1683 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var2119) Int)
(declare-fun database/-714190539 (var122) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var122 var122)
(declare-const null-var1416 var1416)
(declare-const null-String String)
(declare-const null-var2119 var2119)
(declare-const var504-INT1 var504)
(declare-const var1683-STRING_TERM var1683)
(declare-const var2973 var122) ; Statement: r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var2973 null-var122)))
(declare-const var1493 var1416) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var1493 null-var1416)))
(declare-const var3990 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var3990 null-String)))
(declare-const var1733 var2119) ; Statement: r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var1733 null-var2119)))
(define-const var3865 Int (var1416_getClientParam/-1269466014 var1493)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var1581 var333 (var1416_getCharsetSettings/-848071942 var1493)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var1558 Int (var333_configurePreHandshake/1531994779 var1581 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var3822 var333 (var1416_getCharsetSettings/-848071942 var1493)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var2977 String (var333_getPasswordCharacterEncoding/-861467430 var3822)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var1171 var2119 var2119-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var2546 String (username/-714190539 var2973)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var2421 Int (length/-134980193 var2546)) ; Statement: $i2 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var1250 Int (* 3 var2421)) ; Statement: $i3 = 3 * $i2 
(define-const var300 Int (+ 88 var1250)) ; Statement: $i4 = 88 + $i3 
(define-const var1307 Bool (useConnectWithDb/-714190539 var2973)) ; Statement: $z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i15 = 1 
(assert (= (ite var1307 1 0) 0)) ; Cond: $z0 == 0 
(define-const var460 Int 1) ; Statement: $i15 = 1 
(assert true) ; Non Conditional
(define-const var3 Int (+ var300 var460)) ; Statement: $i5 = $i4 + $i15 
(define-const var1932 Int (+ var3 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (<init>/233406230 var1171 var1932)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6) 

(declare-const var1171!1 var2119)
(declare-const var1932!1 Int)
(define-const var2098 var504 var504-INT1) ; Statement: $r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var1171!1 var2098 17)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L) 

(declare-const var1171!2 var2119)
(declare-const var2098!1 var504)
(declare-const var197 Int)
(define-const var2236 var1683 var1683-STRING_TERM) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var654 String (username/-714190539 var2973)) ; Statement: $r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var3870 (Array Int Int) (var2157_getBytes/-813242536 var654 var2977)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3) 
(assert true)
;(assert (writeBytes/771844277 var1171!2 var2236 var3870)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10) 

(declare-const var1171!3 var2119)
(declare-const var2236!1 var1683)
(declare-const var3870!1 (Array Int Int))
(assert true)
(define-const var269 Int (getPayloadLength/2056317546 var1733)) ; Statement: $i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
 ; Statement: if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (>= var269 256)) ; Cond: $i7 >= 256 
(define-const var450 var504 var504-INT1) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var1171!3 var450 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r12, 0L) 

(declare-const var1171!4 var2119)
(declare-const var450!1 var504)
(declare-const var94 Int)
(assert true) ; Non Conditional
(define-const var1941 Bool (useConnectWithDb/-714190539 var2973)) ; Statement: $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (= (ite var1941 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1660 var1683 var1683-STRING_TERM) ; Statement: $r25 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var351 String (database/-714190539 var2973)) ; Statement: $r24 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(define-const var1770 (Array Int Int) (var2157_getBytes/-813242536 var351 var2977)) ; Statement: $r26 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r24, r3) 
(assert true)
;(assert (writeBytes/771844277 var1171!4 var1660 var1770)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r25, $r26) 

(declare-const var1171!5 var2119)
(declare-const var1660!1 var1683)
(declare-const var1770!1 (Array Int Int))
 ; Statement: goto [?= $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>] 
(assert true) ; Non Conditional
(define-const var2022 var504 var504-INT1) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var48 Int (cast-from-Int-to-Int var1558)) ; Statement: $l8 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var1171!5 var2022 var48)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8) 

(declare-const var1171!6 var2119)
(declare-const var2022!1 var504)
(declare-const var48!1 Int)
(define-const var114 var504 var504-INT1) ; Statement: $r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var1171!6 var114 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L) 

(declare-const var1171!7 var2119)
(declare-const var114!1 var504)
(declare-const var94!1 Int)
(define-const var1433 var1683 var1683-STRING_TERM) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var955 (Array Int Int) (var2157_getBytes/-813242536 var3990 var2977)) ; Statement: $r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3) 
(assert true)
;(assert (writeBytes/771844277 var1171!7 var1433 var955)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18) 

(declare-const var1171!8 var2119)
(declare-const var1433!1 var1683)
(declare-const var955!1 (Array Int Int))
(define-const var517 Int (bv2nat (bvand ((_ int2bv 64) var3865) ((_ int2bv 64) 1048576)))) ; Statement: $l9 = l0 & 1048576L 
(define-const var3673 Int (ite (> var517 0) 1 (ite (< var517 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto return $r4 
(assert (= var3673 0)) ; Cond: $b10 == 0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1416_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var1416_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var333_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var333_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var2119-init=([], com.mysql.cj.protocol.a.NativePacketPayload), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var2157_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), cast-from-Int-to-Int=([int], long)}
; {var122=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var2973=r5, var1416=com.mysql.cj.protocol.ServerSession, var1493=r0, var3990=r16, var3001=null_type, var2119=com.mysql.cj.protocol.a.NativePacketPayload, var1733=r11, var3865=l0, var333=com.mysql.cj.CharsetSettings, var1581=$r1, var1558=i1, var3822=$r2, var2977=r3, var1171=$r4, var2546=$r6, var2421=$i2, var1250=$i3, var300=$i4, var1307=$z0, var460=$i15, var3=$i5, var1932=$i6, var504=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var2098=$r7, var197=17L, var1683=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var2236=$r9, var654=$r8, var2157=com.mysql.cj.util.StringUtils, var3870=$r10, var269=$i7, var450=$r12, var94=0L, var1941=$z1, var1660=$r25, var351=$r24, var1770=$r26, var2022=$r14, var48=$l8, var114=$r15, var1433=$r17, var955=$r18, var517=$l9, var3673=$b10}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var122, r5=var2973, com.mysql.cj.protocol.ServerSession=var1416, r0=var1493, r16=var3990, null_type=var3001, com.mysql.cj.protocol.a.NativePacketPayload=var2119, r11=var1733, l0=var3865, com.mysql.cj.CharsetSettings=var333, $r1=var1581, i1=var1558, $r2=var3822, r3=var2977, $r4=var1171, $r6=var2546, $i2=var2421, $i3=var1250, $i4=var300, $z0=var1307, $i15=var460, $i5=var3, $i6=var1932, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var504, $r7=var2098, 17L=var197, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1683, $r9=var2236, $r8=var654, com.mysql.cj.util.StringUtils=var2157, $r10=var3870, $i7=var269, $r12=var450, 0L=var94, $z1=var1941, $r25=var1660, $r24=var351, $r26=var1770, $r14=var2022, $l8=var48, $r15=var114, $r17=var1433, $r18=var955, $l9=var517, $b10=var3673}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r16 := @parameter1: java.lang.String;	r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i2 = virtualinvoke $r6.<java.lang.String: int length()>();	$i3 = 3 * $i2;	$i4 = 88 + $i3;	$z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i15 = 1;	$i15 = 1;	$i5 = $i4 + $i15;	$i6 = $i5 + 1;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6);	$r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10);	$i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r12, 0L);	$z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r25 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r24 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$r26 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r24, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r25, $r26);	goto [?= $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>];	$r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l8 = (long) i1;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8);	$r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L);	$r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18);	$l9 = l0 & 1048576L;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto return $r4;	return $r4
;block_num 8