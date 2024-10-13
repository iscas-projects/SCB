(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2683 0)
(declare-sort var3532 0)
(declare-sort var2823 0)
(declare-sort var3181 0)
(declare-sort var3794 0)
(declare-sort var72 0)
(declare-sort var2142 0)
(declare-sort var1523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3532_getClientParam/-1269466014 (var3532) Int)
(declare-fun var3532_getCharsetSettings/-848071942 (var3532) var3794)
(declare-fun var3794_configurePreHandshake/1531994779 (var3794 Bool) Int)
(declare-fun var3794_getPasswordCharacterEncoding/-861467430 (var3794) String)
(declare-fun var3181-init () var3181)
(declare-fun username/-714190539 (var2683) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun useConnectWithDb/-714190539 (var2683) Bool)
(declare-fun <init>/233406230 (var3181 Int) void)
(declare-fun writeInteger/-383739395 (var3181 var72 Int) void)
(declare-fun var1523_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var3181 var2142 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var3181) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getByteBuffer/-505169391 (var3181) (Array Int Int))
(declare-fun writeBytes/-285501893 (var3181 var2142 (Array Int Int) Int Int) void)
(declare-fun database/-714190539 (var2683) String)
(declare-const null-var2683 var2683)
(declare-const null-var3532 var3532)
(declare-const null-String String)
(declare-const null-var3181 var3181)
(declare-const var72-INT1 var72)
(declare-const var2142-STRING_TERM var2142)
(declare-const var2142-STRING_EOF var2142)
(declare-const var351 var2683) ; Statement: r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var351 null-var2683)))
(declare-const var3628 var3532) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var3628 null-var3532)))
(declare-const var2887 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var2887 null-String)))
(declare-const var2811 var3181) ; Statement: r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var2811 null-var3181)))
(define-const var2702 Int (var3532_getClientParam/-1269466014 var3628)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var2132 var3794 (var3532_getCharsetSettings/-848071942 var3628)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var3101 Int (var3794_configurePreHandshake/1531994779 var2132 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var3407 var3794 (var3532_getCharsetSettings/-848071942 var3628)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var691 String (var3794_getPasswordCharacterEncoding/-861467430 var3407)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var289 var3181 var3181-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var2361 String (username/-714190539 var351)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var3260 Int (length/-134980193 var2361)) ; Statement: $i2 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var1574 Int (* 3 var3260)) ; Statement: $i3 = 3 * $i2 
(define-const var2400 Int (+ 88 var1574)) ; Statement: $i4 = 88 + $i3 
(define-const var363 Bool (useConnectWithDb/-714190539 var351)) ; Statement: $z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i15 = 1 
(assert (= (ite var363 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2021 Int 1) ; Statement: $i15 = 1 
(assert true) ; Non Conditional
(define-const var2916 Int (+ var2400 var2021)) ; Statement: $i5 = $i4 + $i15 
(define-const var1155 Int (+ var2916 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (<init>/233406230 var289 var1155)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6) 

(declare-const var289!1 var3181)
(declare-const var1155!1 Int)
(define-const var981 var72 var72-INT1) ; Statement: $r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var289!1 var981 17)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L) 

(declare-const var289!2 var3181)
(declare-const var981!1 var72)
(declare-const var2086 Int)
(define-const var538 var2142 var2142-STRING_TERM) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var1289 String (username/-714190539 var351)) ; Statement: $r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var2366 (Array Int Int) (var1523_getBytes/-813242536 var1289 var691)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3) 
(assert true)
;(assert (writeBytes/771844277 var289!2 var538 var2366)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10) 

(declare-const var289!3 var3181)
(declare-const var538!1 var2142)
(declare-const var2366!1 (Array Int Int))
(assert true)
(define-const var1113 Int (getPayloadLength/2056317546 var2811)) ; Statement: $i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
 ; Statement: if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (>= var1113 256))) ; Negate: Cond: $i7 >= 256  
(define-const var2939 var72 var72-INT1) ; Statement: $r27 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
(define-const var2049 Int (getPayloadLength/2056317546 var2811)) ; Statement: $i11 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(define-const var1638 Int (cast-from-Int-to-Int var2049)) ; Statement: $l12 = (long) $i11 
(assert true)
;(assert (writeInteger/-383739395 var289!3 var2939 var1638)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r27, $l12) 

(declare-const var289!4 var3181)
(declare-const var2939!1 var72)
(declare-const var1638!1 Int)
(define-const var3730 var2142 var2142-STRING_EOF) ; Statement: $r28 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var3468 (Array Int Int) (getByteBuffer/-505169391 var2811)) ; Statement: $r29 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(assert true)
(define-const var1394 Int (getPayloadLength/2056317546 var2811)) ; Statement: $i13 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(assert true)
;(assert (writeBytes/-285501893 var289!4 var3730 var3468 0 var1394)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[],int,int)>($r28, $r29, 0, $i13) 

(declare-const var289!5 var3181)
(declare-const var3730!1 var2142)
(declare-const var3468!1 (Array Int Int))
(declare-const var898 Int)
(declare-const var1394!1 Int)
 ; Statement: goto [?= $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>] 
(assert true) ; Non Conditional
(define-const var3130 Bool (useConnectWithDb/-714190539 var351)) ; Statement: $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (= (ite var3130 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1216 var2142 var2142-STRING_TERM) ; Statement: $r25 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2681 String (database/-714190539 var351)) ; Statement: $r24 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(define-const var3424 (Array Int Int) (var1523_getBytes/-813242536 var2681 var691)) ; Statement: $r26 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r24, r3) 
(assert true)
;(assert (writeBytes/771844277 var289!5 var1216 var3424)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r25, $r26) 

(declare-const var289!6 var3181)
(declare-const var1216!1 var2142)
(declare-const var3424!1 (Array Int Int))
 ; Statement: goto [?= $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>] 
(assert true) ; Non Conditional
(define-const var2250 var72 var72-INT1) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var2983 Int (cast-from-Int-to-Int var3101)) ; Statement: $l8 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var289!6 var2250 var2983)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8) 

(declare-const var289!7 var3181)
(declare-const var2250!1 var72)
(declare-const var2983!1 Int)
(define-const var535 var72 var72-INT1) ; Statement: $r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var289!7 var535 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L) 

(declare-const var289!8 var3181)
(declare-const var535!1 var72)
(declare-const var3875 Int)
(define-const var1336 var2142 var2142-STRING_TERM) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var3934 (Array Int Int) (var1523_getBytes/-813242536 var2887 var691)) ; Statement: $r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3) 
(assert true)
;(assert (writeBytes/771844277 var289!8 var1336 var3934)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18) 

(declare-const var289!9 var3181)
(declare-const var1336!1 var2142)
(declare-const var3934!1 (Array Int Int))
(define-const var1376 Int (bv2nat (bvand ((_ int2bv 64) var2702) ((_ int2bv 64) 1048576)))) ; Statement: $l9 = l0 & 1048576L 
(define-const var2245 Int (ite (> var1376 0) 1 (ite (< var1376 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto return $r4 
(assert (= var2245 0)) ; Cond: $b10 == 0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3532_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var3532_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var3794_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var3794_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var3181-init=([], com.mysql.cj.protocol.a.NativePacketPayload), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var1523_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), cast-from-Int-to-Int=([int], long), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), writeBytes/-285501893=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[], int, int], void), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String)}
; {var2683=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var351=r5, var3532=com.mysql.cj.protocol.ServerSession, var3628=r0, var2887=r16, var2823=null_type, var3181=com.mysql.cj.protocol.a.NativePacketPayload, var2811=r11, var2702=l0, var3794=com.mysql.cj.CharsetSettings, var2132=$r1, var3101=i1, var3407=$r2, var691=r3, var289=$r4, var2361=$r6, var3260=$i2, var1574=$i3, var2400=$i4, var363=$z0, var2021=$i15, var2916=$i5, var1155=$i6, var72=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var981=$r7, var2086=17L, var2142=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var538=$r9, var1289=$r8, var1523=com.mysql.cj.util.StringUtils, var2366=$r10, var1113=$i7, var2939=$r27, var2049=$i11, var1638=$l12, var3730=$r28, var3468=$r29, var1394=$i13, var898=0, var3130=$z1, var1216=$r25, var2681=$r24, var3424=$r26, var2250=$r14, var2983=$l8, var535=$r15, var3875=0L, var1336=$r17, var3934=$r18, var1376=$l9, var2245=$b10}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var2683, r5=var351, com.mysql.cj.protocol.ServerSession=var3532, r0=var3628, r16=var2887, null_type=var2823, com.mysql.cj.protocol.a.NativePacketPayload=var3181, r11=var2811, l0=var2702, com.mysql.cj.CharsetSettings=var3794, $r1=var2132, i1=var3101, $r2=var3407, r3=var691, $r4=var289, $r6=var2361, $i2=var3260, $i3=var1574, $i4=var2400, $z0=var363, $i15=var2021, $i5=var2916, $i6=var1155, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var72, $r7=var981, 17L=var2086, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var2142, $r9=var538, $r8=var1289, com.mysql.cj.util.StringUtils=var1523, $r10=var2366, $i7=var1113, $r27=var2939, $i11=var2049, $l12=var1638, $r28=var3730, $r29=var3468, $i13=var1394, 0=var898, $z1=var3130, $r25=var1216, $r24=var2681, $r26=var3424, $r14=var2250, $l8=var2983, $r15=var535, 0L=var3875, $r17=var1336, $r18=var3934, $l9=var1376, $b10=var2245}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r16 := @parameter1: java.lang.String;	r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i2 = virtualinvoke $r6.<java.lang.String: int length()>();	$i3 = 3 * $i2;	$i4 = 88 + $i3;	$z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i15 = 1;	$i15 = 1;	$i5 = $i4 + $i15;	$i6 = $i5 + 1;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6);	$r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10);	$i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r27 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$i11 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	$l12 = (long) $i11;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r27, $l12);	$r28 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r29 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	$i13 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[],int,int)>($r28, $r29, 0, $i13);	goto [?= $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>];	$z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r25 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r24 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$r26 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r24, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r25, $r26);	goto [?= $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>];	$r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l8 = (long) i1;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8);	$r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L);	$r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18);	$l9 = l0 & 1048576L;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto return $r4;	return $r4
;block_num 8