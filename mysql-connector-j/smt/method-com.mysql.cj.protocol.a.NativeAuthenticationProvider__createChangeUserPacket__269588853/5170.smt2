(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3268 0)
(declare-sort var37 0)
(declare-sort var2659 0)
(declare-sort var2032 0)
(declare-sort var535 0)
(declare-sort var2608 0)
(declare-sort var1882 0)
(declare-sort var1204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var37_getClientParam/-1269466014 (var37) Int)
(declare-fun var37_getCharsetSettings/-848071942 (var37) var535)
(declare-fun var535_configurePreHandshake/1531994779 (var535 Bool) Int)
(declare-fun var535_getPasswordCharacterEncoding/-861467430 (var535) String)
(declare-fun var2032-init () var2032)
(declare-fun username/-714190539 (var3268) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun useConnectWithDb/-714190539 (var3268) Bool)
(declare-fun database/-714190539 (var3268) String)
(declare-fun <init>/233406230 (var2032 Int) void)
(declare-fun writeInteger/-383739395 (var2032 var2608 Int) void)
(declare-fun var1204_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var2032 var1882 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var2032) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getByteBuffer/-505169391 (var2032) (Array Int Int))
(declare-fun writeBytes/-285501893 (var2032 var1882 (Array Int Int) Int Int) void)
(declare-const null-var3268 var3268)
(declare-const null-var37 var37)
(declare-const null-String String)
(declare-const null-var2032 var2032)
(declare-const var2608-INT1 var2608)
(declare-const var1882-STRING_TERM var1882)
(declare-const var1882-STRING_EOF var1882)
(declare-const var2219 var3268) ; Statement: r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var2219 null-var3268)))
(declare-const var623 var37) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var623 null-var37)))
(declare-const var736 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var736 null-String)))
(declare-const var207 var2032) ; Statement: r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var207 null-var2032)))
(define-const var560 Int (var37_getClientParam/-1269466014 var623)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var3624 var535 (var37_getCharsetSettings/-848071942 var623)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var2838 Int (var535_configurePreHandshake/1531994779 var3624 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var1800 var535 (var37_getCharsetSettings/-848071942 var623)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var1552 String (var535_getPasswordCharacterEncoding/-861467430 var1800)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var3363 var2032 var2032-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var210 String (username/-714190539 var2219)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var927 Int (length/-134980193 var210)) ; Statement: $i2 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var2394 Int (* 3 var927)) ; Statement: $i3 = 3 * $i2 
(define-const var2002 Int (+ 88 var2394)) ; Statement: $i4 = 88 + $i3 
(define-const var1851 Bool (useConnectWithDb/-714190539 var2219)) ; Statement: $z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i15 = 1 
(assert (not (= (ite var1851 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2407 String (database/-714190539 var2219)) ; Statement: $r30 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(assert true)
(define-const var3160 Int (length/-134980193 var2407)) ; Statement: $i14 = virtualinvoke $r30.<java.lang.String: int length()>() 
(define-const var1835 Int (* 3 var3160)) ; Statement: $i15 = 3 * $i14 
 ; Statement: goto [?= $i5 = $i4 + $i15] 
(assert true) ; Non Conditional
(define-const var3431 Int (+ var2002 var1835)) ; Statement: $i5 = $i4 + $i15 
(define-const var3518 Int (+ var3431 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (<init>/233406230 var3363 var3518)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6) 

(declare-const var3363!1 var2032)
(declare-const var3518!1 Int)
(define-const var205 var2608 var2608-INT1) ; Statement: $r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3363!1 var205 17)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L) 

(declare-const var3363!2 var2032)
(declare-const var205!1 var2608)
(declare-const var2161 Int)
(define-const var2549 var1882 var1882-STRING_TERM) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2257 String (username/-714190539 var2219)) ; Statement: $r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var401 (Array Int Int) (var1204_getBytes/-813242536 var2257 var1552)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3) 
(assert true)
;(assert (writeBytes/771844277 var3363!2 var2549 var401)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10) 

(declare-const var3363!3 var2032)
(declare-const var2549!1 var1882)
(declare-const var401!1 (Array Int Int))
(assert true)
(define-const var3157 Int (getPayloadLength/2056317546 var207)) ; Statement: $i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
 ; Statement: if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (>= var3157 256))) ; Negate: Cond: $i7 >= 256  
(define-const var2790 var2608 var2608-INT1) ; Statement: $r27 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
(define-const var1451 Int (getPayloadLength/2056317546 var207)) ; Statement: $i11 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(define-const var650 Int (cast-from-Int-to-Int var1451)) ; Statement: $l12 = (long) $i11 
(assert true)
;(assert (writeInteger/-383739395 var3363!3 var2790 var650)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r27, $l12) 

(declare-const var3363!4 var2032)
(declare-const var2790!1 var2608)
(declare-const var650!1 Int)
(define-const var1422 var1882 var1882-STRING_EOF) ; Statement: $r28 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var3976 (Array Int Int) (getByteBuffer/-505169391 var207)) ; Statement: $r29 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(assert true)
(define-const var579 Int (getPayloadLength/2056317546 var207)) ; Statement: $i13 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(assert true)
;(assert (writeBytes/-285501893 var3363!4 var1422 var3976 0 var579)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[],int,int)>($r28, $r29, 0, $i13) 

(declare-const var3363!5 var2032)
(declare-const var1422!1 var1882)
(declare-const var3976!1 (Array Int Int))
(declare-const var2245 Int)
(declare-const var579!1 Int)
 ; Statement: goto [?= $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>] 
(assert true) ; Non Conditional
(define-const var2636 Bool (useConnectWithDb/-714190539 var2219)) ; Statement: $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (= (ite var2636 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var750 var1882 var1882-STRING_TERM) ; Statement: $r25 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2006 String (database/-714190539 var2219)) ; Statement: $r24 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(define-const var2309 (Array Int Int) (var1204_getBytes/-813242536 var2006 var1552)) ; Statement: $r26 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r24, r3) 
(assert true)
;(assert (writeBytes/771844277 var3363!5 var750 var2309)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r25, $r26) 

(declare-const var3363!6 var2032)
(declare-const var750!1 var1882)
(declare-const var2309!1 (Array Int Int))
 ; Statement: goto [?= $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>] 
(assert true) ; Non Conditional
(define-const var3537 var2608 var2608-INT1) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var2834 Int (cast-from-Int-to-Int var2838)) ; Statement: $l8 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var3363!6 var3537 var2834)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8) 

(declare-const var3363!7 var2032)
(declare-const var3537!1 var2608)
(declare-const var2834!1 Int)
(define-const var177 var2608 var2608-INT1) ; Statement: $r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3363!7 var177 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L) 

(declare-const var3363!8 var2032)
(declare-const var177!1 var2608)
(declare-const var3863 Int)
(define-const var1616 var1882 var1882-STRING_TERM) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var3641 (Array Int Int) (var1204_getBytes/-813242536 var736 var1552)) ; Statement: $r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3) 
(assert true)
;(assert (writeBytes/771844277 var3363!8 var1616 var3641)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18) 

(declare-const var3363!9 var2032)
(declare-const var1616!1 var1882)
(declare-const var3641!1 (Array Int Int))
(define-const var1537 Int (bv2nat (bvand ((_ int2bv 64) var560) ((_ int2bv 64) 1048576)))) ; Statement: $l9 = l0 & 1048576L 
(define-const var2845 Int (ite (> var1537 0) 1 (ite (< var1537 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto return $r4 
(assert (= var2845 0)) ; Cond: $b10 == 0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var37_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var37_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var535_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var535_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var2032-init=([], com.mysql.cj.protocol.a.NativePacketPayload), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var1204_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), cast-from-Int-to-Int=([int], long), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), writeBytes/-285501893=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[], int, int], void)}
; {var3268=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var2219=r5, var37=com.mysql.cj.protocol.ServerSession, var623=r0, var736=r16, var2659=null_type, var2032=com.mysql.cj.protocol.a.NativePacketPayload, var207=r11, var560=l0, var535=com.mysql.cj.CharsetSettings, var3624=$r1, var2838=i1, var1800=$r2, var1552=r3, var3363=$r4, var210=$r6, var927=$i2, var2394=$i3, var2002=$i4, var1851=$z0, var2407=$r30, var3160=$i14, var1835=$i15, var3431=$i5, var3518=$i6, var2608=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var205=$r7, var2161=17L, var1882=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var2549=$r9, var2257=$r8, var1204=com.mysql.cj.util.StringUtils, var401=$r10, var3157=$i7, var2790=$r27, var1451=$i11, var650=$l12, var1422=$r28, var3976=$r29, var579=$i13, var2245=0, var2636=$z1, var750=$r25, var2006=$r24, var2309=$r26, var3537=$r14, var2834=$l8, var177=$r15, var3863=0L, var1616=$r17, var3641=$r18, var1537=$l9, var2845=$b10}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var3268, r5=var2219, com.mysql.cj.protocol.ServerSession=var37, r0=var623, r16=var736, null_type=var2659, com.mysql.cj.protocol.a.NativePacketPayload=var2032, r11=var207, l0=var560, com.mysql.cj.CharsetSettings=var535, $r1=var3624, i1=var2838, $r2=var1800, r3=var1552, $r4=var3363, $r6=var210, $i2=var927, $i3=var2394, $i4=var2002, $z0=var1851, $r30=var2407, $i14=var3160, $i15=var1835, $i5=var3431, $i6=var3518, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var2608, $r7=var205, 17L=var2161, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1882, $r9=var2549, $r8=var2257, com.mysql.cj.util.StringUtils=var1204, $r10=var401, $i7=var3157, $r27=var2790, $i11=var1451, $l12=var650, $r28=var1422, $r29=var3976, $i13=var579, 0=var2245, $z1=var2636, $r25=var750, $r24=var2006, $r26=var2309, $r14=var3537, $l8=var2834, $r15=var177, 0L=var3863, $r17=var1616, $r18=var3641, $l9=var1537, $b10=var2845}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r16 := @parameter1: java.lang.String;	r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i2 = virtualinvoke $r6.<java.lang.String: int length()>();	$i3 = 3 * $i2;	$i4 = 88 + $i3;	$z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i15 = 1;	$r30 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$i14 = virtualinvoke $r30.<java.lang.String: int length()>();	$i15 = 3 * $i14;	goto [?= $i5 = $i4 + $i15];	$i5 = $i4 + $i15;	$i6 = $i5 + 1;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6);	$r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10);	$i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r27 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$i11 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	$l12 = (long) $i11;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r27, $l12);	$r28 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r29 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	$i13 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[],int,int)>($r28, $r29, 0, $i13);	goto [?= $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>];	$z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r25 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r24 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$r26 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r24, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r25, $r26);	goto [?= $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>];	$r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l8 = (long) i1;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8);	$r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L);	$r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18);	$l9 = l0 & 1048576L;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto return $r4;	return $r4
;block_num 8