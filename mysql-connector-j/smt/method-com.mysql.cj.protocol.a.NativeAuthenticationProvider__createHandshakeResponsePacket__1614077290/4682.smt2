(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var834 0)
(declare-sort var2717 0)
(declare-sort var2954 0)
(declare-sort var3984 0)
(declare-sort var943 0)
(declare-sort var311 0)
(declare-sort var2199 0)
(declare-sort var1558 0)
(declare-sort var2116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2717_getClientParam/-1269466014 (var2717) Int)
(declare-fun var2717_getCharsetSettings/-848071942 (var2717) var943)
(declare-fun var943_configurePreHandshake/1531994779 (var943 Bool) Int)
(declare-fun var943_getPasswordCharacterEncoding/-861467430 (var943) String)
(declare-fun username/-714190539 (var834) String)
(declare-fun var3984-init () var3984)
(declare-fun useConnectWithDb/-714190539 (var834) Bool)
(declare-fun <init>/233406230 (var3984 Int) void)
(declare-fun writeInteger/-383739395 (var3984 var311 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun writeBytes/-546957861 (var3984 var2199 (Array Int Int)) void)
(declare-fun var2116_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var3984 var1558 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var3984) Int)
(declare-fun getByteBuffer/-505169391 (var3984) (Array Int Int))
(declare-const null-var834 var834)
(declare-const null-var2717 var2717)
(declare-const null-String String)
(declare-const null-var3984 var3984)
(declare-const var311-INT4 var311)
(declare-const var311-INT1 var311)
(declare-const var2199-STRING_FIXED var2199)
(declare-const var1558-STRING_TERM var1558)
(declare-const var1558-STRING_EOF var1558)
(declare-const var2747 var834) ; Statement: r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var2747 null-var834)))
(declare-const var3858 var2717) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var3858 null-var2717)))
(declare-const var3913 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var3913 null-String)))
(declare-const var3003 var3984) ; Statement: r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3003 null-var3984)))
(define-const var2246 Int (var2717_getClientParam/-1269466014 var3858)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var2436 var943 (var2717_getCharsetSettings/-848071942 var3858)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var1557 Int (var943_configurePreHandshake/1531994779 var2436 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var2879 var943 (var2717_getCharsetSettings/-848071942 var3858)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var965 String (var943_getPasswordCharacterEncoding/-861467430 var2879)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var1802 String (username/-714190539 var2747)) ; Statement: $r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
 ; Statement: if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert (not (not (= var1802 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var1867 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $r7 = new com.mysql.cj.protocol.a.NativePacketPayload] 
(assert true) ; Non Conditional
(define-const var3804 var3984 var3984-init) ; Statement: $r7 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var799 Int (* 3 var1867)) ; Statement: $i2 = 3 * $i13 
(define-const var3938 Int (+ 88 var799)) ; Statement: $i3 = 88 + $i2 
(define-const var282 Bool (useConnectWithDb/-714190539 var2747)) ; Statement: $z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i14 = 0 
(assert (= (ite var282 1 0) 0)) ; Cond: $z0 == 0 
(define-const var648 Int 0) ; Statement: $i14 = 0 
(assert true) ; Non Conditional
(define-const var3943 Int (+ var3938 var648)) ; Statement: $i4 = $i3 + $i14 
(assert true)
;(assert (<init>/233406230 var3804 var3943)) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4) 

(declare-const var3804!1 var3984)
(declare-const var3943!1 Int)
(define-const var186 var311 var311-INT4) ; Statement: $r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var3804!1 var186 var2246)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0) 

(declare-const var3804!2 var3984)
(declare-const var186!1 var311)
(declare-const var2246!1 Int)
(define-const var2126 var311 var311-INT4) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var3804!2 var2126 16777215)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L) 

(declare-const var3804!3 var3984)
(declare-const var2126!1 var311)
(declare-const var3925 Int)
(define-const var738 var311 var311-INT1) ; Statement: $r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var3966 Int (cast-from-Int-to-Int var1557)) ; Statement: $l5 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var3804!3 var738 var3966)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5) 

(declare-const var3804!4 var3984)
(declare-const var738!1 var311)
(declare-const var3966!1 Int)
(define-const var3553 var2199 var2199-STRING_FIXED) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(define-const var818 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[23] 
(assert true)
;(assert (writeBytes/-546957861 var3804!4 var3553 var818)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11) 

(declare-const var3804!5 var3984)
(declare-const var3553!1 var2199)
(declare-const var818!1 (Array Int Int))
(define-const var679 var1558 var1558-STRING_TERM) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2806 String (username/-714190539 var2747)) ; Statement: $r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var3531 (Array Int Int) (var2116_getBytes/-813242536 var2806 var965)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3) 
(assert true)
;(assert (writeBytes/771844277 var3804!5 var679 var3531)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15) 

(declare-const var3804!6 var3984)
(declare-const var679!1 var1558)
(declare-const var3531!1 (Array Int Int))
(define-const var2281 Int (bv2nat (bvand ((_ int2bv 64) var2246!1) ((_ int2bv 64) 2097152)))) ; Statement: $l6 = l0 & 2097152L 
(define-const var1702 Int (ite (> var2281 0) 1 (ite (< var2281 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (= var1702 0)) ; Cond: $b7 == 0 
(define-const var3497 var311 var311-INT1) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
(define-const var3016 Int (getPayloadLength/2056317546 var3003)) ; Statement: $i8 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(define-const var1842 Int (cast-from-Int-to-Int var3016)) ; Statement: $l9 = (long) $i8 
(assert true)
;(assert (writeInteger/-383739395 var3804!6 var3497 var1842)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r17, $l9) 

(declare-const var3804!7 var3984)
(declare-const var3497!1 var311)
(declare-const var1842!1 Int)
(define-const var522 var1558 var1558-STRING_EOF) ; Statement: $r18 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var2306 (Array Int Int) (getByteBuffer/-505169391 var3003)) ; Statement: $r19 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(assert true)
;(assert (writeBytes/771844277 var3804!7 var522 var2306)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r18, $r19) 

(declare-const var3804!8 var3984)
(declare-const var522!1 var1558)
(declare-const var2306!1 (Array Int Int))
(assert true) ; Non Conditional
(define-const var2257 Bool (useConnectWithDb/-714190539 var2747)) ; Statement: $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert (= (ite var2257 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2009 var1558 var1558-STRING_TERM) ; Statement: $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var319 (Array Int Int) (var2116_getBytes/-813242536 var3913 var965)) ; Statement: $r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3) 
(assert true)
;(assert (writeBytes/771844277 var3804!8 var2009 var319)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22) 

(declare-const var3804!9 var3984)
(declare-const var2009!1 var1558)
(declare-const var319!1 (Array Int Int))
(define-const var2020 Int (bv2nat (bvand ((_ int2bv 64) var2246!1) ((_ int2bv 64) 1048576)))) ; Statement: $l10 = l0 & 1048576L 
(define-const var1160 Int (ite (> var2020 0) 1 (ite (< var2020 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto return $r7 
(assert (= var1160 0)) ; Cond: $b11 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2717_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var2717_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var943_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var943_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), var3984-init=([], com.mysql.cj.protocol.a.NativePacketPayload), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), cast-from-Int-to-Int=([int], long), arr-Int-init=([], byte[]), writeBytes/-546957861=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, byte[]], void), var2116_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[])}
; {var834=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var2747=r4, var2717=com.mysql.cj.protocol.ServerSession, var3858=r0, var3913=r20, var2954=null_type, var3984=com.mysql.cj.protocol.a.NativePacketPayload, var3003=r16, var2246=l0, var943=com.mysql.cj.CharsetSettings, var2436=$r1, var1557=i1, var2879=$r2, var965=r3, var1802=$r5, var1867=$i13, var3804=$r7, var799=$i2, var3938=$i3, var282=$z0, var648=$i14, var3943=$i4, var311=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var186=$r8, var2126=$r9, var3925=16777215L, var738=$r10, var3966=$l5, var2199=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var3553=$r12, var818=$r11, var1558=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var679=$r14, var2806=$r13, var2116=com.mysql.cj.util.StringUtils, var3531=$r15, var2281=$l6, var1702=$b7, var3497=$r17, var3016=$i8, var1842=$l9, var522=$r18, var2306=$r19, var2257=$z1, var2009=$r21, var319=$r22, var2020=$l10, var1160=$b11}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var834, r4=var2747, com.mysql.cj.protocol.ServerSession=var2717, r0=var3858, r20=var3913, null_type=var2954, com.mysql.cj.protocol.a.NativePacketPayload=var3984, r16=var3003, l0=var2246, com.mysql.cj.CharsetSettings=var943, $r1=var2436, i1=var1557, $r2=var2879, r3=var965, $r5=var1802, $i13=var1867, $r7=var3804, $i2=var799, $i3=var3938, $z0=var282, $i14=var648, $i4=var3943, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var311, $r8=var186, $r9=var2126, 16777215L=var3925, $r10=var738, $l5=var3966, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var2199, $r12=var3553, $r11=var818, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1558, $r14=var679, $r13=var2806, com.mysql.cj.util.StringUtils=var2116, $r15=var3531, $l6=var2281, $b7=var1702, $r17=var3497, $i8=var3016, $l9=var1842, $r18=var522, $r19=var2306, $z1=var2257, $r21=var2009, $r22=var319, $l10=var2020, $b11=var1160}
;seq 
;cnt {}
;stmts r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r20 := @parameter1: java.lang.String;	r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i13 = 0;	goto [?= $r7 = new com.mysql.cj.protocol.a.NativePacketPayload];	$r7 = new com.mysql.cj.protocol.a.NativePacketPayload;	$i2 = 3 * $i13;	$i3 = 88 + $i2;	$z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i14 = 0;	$i14 = 0;	$i4 = $i3 + $i14;	specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4);	$r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L);	$r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l5 = (long) i1;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5);	$r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r11 = newarray (byte)[23];	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15);	$l6 = l0 & 2097152L;	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$i8 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	$l9 = (long) $i8;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r17, $l9);	$r18 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r19 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r18, $r19);	$z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22);	$l10 = l0 & 1048576L;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto return $r7;	return $r7
;block_num 9