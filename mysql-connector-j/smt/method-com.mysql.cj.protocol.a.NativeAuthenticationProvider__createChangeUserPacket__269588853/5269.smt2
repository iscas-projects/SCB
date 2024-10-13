(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2906 0)
(declare-sort var63 0)
(declare-sort var838 0)
(declare-sort var1375 0)
(declare-sort var2612 0)
(declare-sort var3042 0)
(declare-sort var1923 0)
(declare-sort var1335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var63_getClientParam/-1269466014 (var63) Int)
(declare-fun var63_getCharsetSettings/-848071942 (var63) var2612)
(declare-fun var2612_configurePreHandshake/1531994779 (var2612 Bool) Int)
(declare-fun var2612_getPasswordCharacterEncoding/-861467430 (var2612) String)
(declare-fun var1375-init () var1375)
(declare-fun username/-714190539 (var2906) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun useConnectWithDb/-714190539 (var2906) Bool)
(declare-fun <init>/233406230 (var1375 Int) void)
(declare-fun writeInteger/-383739395 (var1375 var3042 Int) void)
(declare-fun var1335_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var1375 var1923 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var1375) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getByteBuffer/-505169391 (var1375) (Array Int Int))
(declare-fun writeBytes/-285501893 (var1375 var1923 (Array Int Int) Int Int) void)
(declare-const null-var2906 var2906)
(declare-const null-var63 var63)
(declare-const null-String String)
(declare-const null-var1375 var1375)
(declare-const var3042-INT1 var3042)
(declare-const var1923-STRING_TERM var1923)
(declare-const var1923-STRING_EOF var1923)
(declare-const var3596 var2906) ; Statement: r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var3596 null-var2906)))
(declare-const var1373 var63) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var1373 null-var63)))
(declare-const var3115 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var3115 null-String)))
(declare-const var1629 var1375) ; Statement: r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var1629 null-var1375)))
(define-const var92 Int (var63_getClientParam/-1269466014 var1373)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var3670 var2612 (var63_getCharsetSettings/-848071942 var1373)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var181 Int (var2612_configurePreHandshake/1531994779 var3670 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var904 var2612 (var63_getCharsetSettings/-848071942 var1373)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var1442 String (var2612_getPasswordCharacterEncoding/-861467430 var904)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var2070 var1375 var1375-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var452 String (username/-714190539 var3596)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var3675 Int (length/-134980193 var452)) ; Statement: $i2 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var3953 Int (* 3 var3675)) ; Statement: $i3 = 3 * $i2 
(define-const var781 Int (+ 88 var3953)) ; Statement: $i4 = 88 + $i3 
(define-const var1580 Bool (useConnectWithDb/-714190539 var3596)) ; Statement: $z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i15 = 1 
(assert (= (ite var1580 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1595 Int 1) ; Statement: $i15 = 1 
(assert true) ; Non Conditional
(define-const var3039 Int (+ var781 var1595)) ; Statement: $i5 = $i4 + $i15 
(define-const var2846 Int (+ var3039 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (<init>/233406230 var2070 var2846)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6) 

(declare-const var2070!1 var1375)
(declare-const var2846!1 Int)
(define-const var1029 var3042 var3042-INT1) ; Statement: $r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var2070!1 var1029 17)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L) 

(declare-const var2070!2 var1375)
(declare-const var1029!1 var3042)
(declare-const var875 Int)
(define-const var613 var1923 var1923-STRING_TERM) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var117 String (username/-714190539 var3596)) ; Statement: $r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var1106 (Array Int Int) (var1335_getBytes/-813242536 var117 var1442)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3) 
(assert true)
;(assert (writeBytes/771844277 var2070!2 var613 var1106)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10) 

(declare-const var2070!3 var1375)
(declare-const var613!1 var1923)
(declare-const var1106!1 (Array Int Int))
(assert true)
(define-const var1881 Int (getPayloadLength/2056317546 var1629)) ; Statement: $i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
 ; Statement: if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (>= var1881 256))) ; Negate: Cond: $i7 >= 256  
(define-const var2078 var3042 var3042-INT1) ; Statement: $r27 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
(define-const var3530 Int (getPayloadLength/2056317546 var1629)) ; Statement: $i11 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(define-const var3876 Int (cast-from-Int-to-Int var3530)) ; Statement: $l12 = (long) $i11 
(assert true)
;(assert (writeInteger/-383739395 var2070!3 var2078 var3876)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r27, $l12) 

(declare-const var2070!4 var1375)
(declare-const var2078!1 var3042)
(declare-const var3876!1 Int)
(define-const var3361 var1923 var1923-STRING_EOF) ; Statement: $r28 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var1305 (Array Int Int) (getByteBuffer/-505169391 var1629)) ; Statement: $r29 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(assert true)
(define-const var2007 Int (getPayloadLength/2056317546 var1629)) ; Statement: $i13 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(assert true)
;(assert (writeBytes/-285501893 var2070!4 var3361 var1305 0 var2007)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[],int,int)>($r28, $r29, 0, $i13) 

(declare-const var2070!5 var1375)
(declare-const var3361!1 var1923)
(declare-const var1305!1 (Array Int Int))
(declare-const var785 Int)
(declare-const var2007!1 Int)
 ; Statement: goto [?= $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>] 
(assert true) ; Non Conditional
(define-const var1343 Bool (useConnectWithDb/-714190539 var3596)) ; Statement: $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (= (ite var1343 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2649 var3042 var3042-INT1) ; Statement: $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var2070!5 var2649 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r13, 0L) 

(declare-const var2070!6 var1375)
(declare-const var2649!1 var3042)
(declare-const var2305 Int)
(assert true) ; Non Conditional
(define-const var3566 var3042 var3042-INT1) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var1703 Int (cast-from-Int-to-Int var181)) ; Statement: $l8 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var2070!6 var3566 var1703)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8) 

(declare-const var2070!7 var1375)
(declare-const var3566!1 var3042)
(declare-const var1703!1 Int)
(define-const var1930 var3042 var3042-INT1) ; Statement: $r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var2070!7 var1930 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L) 

(declare-const var2070!8 var1375)
(declare-const var1930!1 var3042)
(declare-const var2305!1 Int)
(define-const var2516 var1923 var1923-STRING_TERM) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var691 (Array Int Int) (var1335_getBytes/-813242536 var3115 var1442)) ; Statement: $r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3) 
(assert true)
;(assert (writeBytes/771844277 var2070!8 var2516 var691)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18) 

(declare-const var2070!9 var1375)
(declare-const var2516!1 var1923)
(declare-const var691!1 (Array Int Int))
(define-const var941 Int (bv2nat (bvand ((_ int2bv 64) var92) ((_ int2bv 64) 1048576)))) ; Statement: $l9 = l0 & 1048576L 
(define-const var37 Int (ite (> var941 0) 1 (ite (< var941 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto return $r4 
(assert (= var37 0)) ; Cond: $b10 == 0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var63_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var63_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var2612_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var2612_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var1375-init=([], com.mysql.cj.protocol.a.NativePacketPayload), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var1335_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), cast-from-Int-to-Int=([int], long), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), writeBytes/-285501893=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[], int, int], void)}
; {var2906=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var3596=r5, var63=com.mysql.cj.protocol.ServerSession, var1373=r0, var3115=r16, var838=null_type, var1375=com.mysql.cj.protocol.a.NativePacketPayload, var1629=r11, var92=l0, var2612=com.mysql.cj.CharsetSettings, var3670=$r1, var181=i1, var904=$r2, var1442=r3, var2070=$r4, var452=$r6, var3675=$i2, var3953=$i3, var781=$i4, var1580=$z0, var1595=$i15, var3039=$i5, var2846=$i6, var3042=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var1029=$r7, var875=17L, var1923=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var613=$r9, var117=$r8, var1335=com.mysql.cj.util.StringUtils, var1106=$r10, var1881=$i7, var2078=$r27, var3530=$i11, var3876=$l12, var3361=$r28, var1305=$r29, var2007=$i13, var785=0, var1343=$z1, var2649=$r13, var2305=0L, var3566=$r14, var1703=$l8, var1930=$r15, var2516=$r17, var691=$r18, var941=$l9, var37=$b10}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var2906, r5=var3596, com.mysql.cj.protocol.ServerSession=var63, r0=var1373, r16=var3115, null_type=var838, com.mysql.cj.protocol.a.NativePacketPayload=var1375, r11=var1629, l0=var92, com.mysql.cj.CharsetSettings=var2612, $r1=var3670, i1=var181, $r2=var904, r3=var1442, $r4=var2070, $r6=var452, $i2=var3675, $i3=var3953, $i4=var781, $z0=var1580, $i15=var1595, $i5=var3039, $i6=var2846, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var3042, $r7=var1029, 17L=var875, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1923, $r9=var613, $r8=var117, com.mysql.cj.util.StringUtils=var1335, $r10=var1106, $i7=var1881, $r27=var2078, $i11=var3530, $l12=var3876, $r28=var3361, $r29=var1305, $i13=var2007, 0=var785, $z1=var1343, $r13=var2649, 0L=var2305, $r14=var3566, $l8=var1703, $r15=var1930, $r17=var2516, $r18=var691, $l9=var941, $b10=var37}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r16 := @parameter1: java.lang.String;	r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i2 = virtualinvoke $r6.<java.lang.String: int length()>();	$i3 = 3 * $i2;	$i4 = 88 + $i3;	$z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i15 = 1;	$i15 = 1;	$i5 = $i4 + $i15;	$i6 = $i5 + 1;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6);	$r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10);	$i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r27 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$i11 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	$l12 = (long) $i11;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r27, $l12);	$r28 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r29 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	$i13 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[],int,int)>($r28, $r29, 0, $i13);	goto [?= $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>];	$z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r13, 0L);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l8 = (long) i1;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8);	$r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L);	$r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18);	$l9 = l0 & 1048576L;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto return $r4;	return $r4
;block_num 8