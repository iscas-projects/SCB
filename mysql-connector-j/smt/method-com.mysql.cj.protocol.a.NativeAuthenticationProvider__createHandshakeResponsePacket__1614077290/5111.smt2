(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3719 0)
(declare-sort var1379 0)
(declare-sort var1625 0)
(declare-sort var3446 0)
(declare-sort var3541 0)
(declare-sort var3324 0)
(declare-sort var647 0)
(declare-sort var258 0)
(declare-sort var168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1379_getClientParam/-1269466014 (var1379) Int)
(declare-fun var1379_getCharsetSettings/-848071942 (var1379) var3541)
(declare-fun var3541_configurePreHandshake/1531994779 (var3541 Bool) Int)
(declare-fun var3541_getPasswordCharacterEncoding/-861467430 (var3541) String)
(declare-fun username/-714190539 (var3719) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3446-init () var3446)
(declare-fun useConnectWithDb/-714190539 (var3719) Bool)
(declare-fun database/-714190539 (var3719) String)
(declare-fun <init>/233406230 (var3446 Int) void)
(declare-fun writeInteger/-383739395 (var3446 var3324 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun writeBytes/-546957861 (var3446 var647 (Array Int Int)) void)
(declare-fun var168_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var3446 var258 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var3446) Int)
(declare-fun getByteBuffer/-505169391 (var3446) (Array Int Int))
(declare-const null-var3719 var3719)
(declare-const null-var1379 var1379)
(declare-const null-String String)
(declare-const null-var3446 var3446)
(declare-const var3324-INT4 var3324)
(declare-const var3324-INT1 var3324)
(declare-const var647-STRING_FIXED var647)
(declare-const var258-STRING_TERM var258)
(declare-const var258-STRING_EOF var258)
(declare-const var3424 var3719) ; Statement: r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var3424 null-var3719)))
(declare-const var108 var1379) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var108 null-var1379)))
(declare-const var71 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var71 null-String)))
(declare-const var3074 var3446) ; Statement: r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3074 null-var3446)))
(define-const var1638 Int (var1379_getClientParam/-1269466014 var108)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var849 var3541 (var1379_getCharsetSettings/-848071942 var108)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var2633 Int (var3541_configurePreHandshake/1531994779 var849 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var2506 var3541 (var1379_getCharsetSettings/-848071942 var108)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var896 String (var3541_getPasswordCharacterEncoding/-861467430 var2506)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var2405 String (username/-714190539 var3424)) ; Statement: $r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
 ; Statement: if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert (not (= var2405 null-String))) ; Cond: $r5 != null 
(define-const var3114 String (username/-714190539 var3424)) ; Statement: $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var1116 Int (length/-134980193 var3114)) ; Statement: $i13 = virtualinvoke $r6.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var1795 var3446 var3446-init) ; Statement: $r7 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var822 Int (* 3 var1116)) ; Statement: $i2 = 3 * $i13 
(define-const var2795 Int (+ 88 var822)) ; Statement: $i3 = 88 + $i2 
(define-const var1065 Bool (useConnectWithDb/-714190539 var3424)) ; Statement: $z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i14 = 0 
(assert (not (= (ite var1065 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1319 String (database/-714190539 var3424)) ; Statement: $r34 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(assert true)
(define-const var517 Int (length/-134980193 var1319)) ; Statement: $i12 = virtualinvoke $r34.<java.lang.String: int length()>() 
(define-const var3354 Int (* 3 var517)) ; Statement: $i14 = 3 * $i12 
 ; Statement: goto [?= $i4 = $i3 + $i14] 
(assert true) ; Non Conditional
(define-const var2507 Int (+ var2795 var3354)) ; Statement: $i4 = $i3 + $i14 
(assert true)
;(assert (<init>/233406230 var1795 var2507)) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4) 

(declare-const var1795!1 var3446)
(declare-const var2507!1 Int)
(define-const var2631 var3324 var3324-INT4) ; Statement: $r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var1795!1 var2631 var1638)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0) 

(declare-const var1795!2 var3446)
(declare-const var2631!1 var3324)
(declare-const var1638!1 Int)
(define-const var3503 var3324 var3324-INT4) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var1795!2 var3503 16777215)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L) 

(declare-const var1795!3 var3446)
(declare-const var3503!1 var3324)
(declare-const var2051 Int)
(define-const var3949 var3324 var3324-INT1) ; Statement: $r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var250 Int (cast-from-Int-to-Int var2633)) ; Statement: $l5 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var1795!3 var3949 var250)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5) 

(declare-const var1795!4 var3446)
(declare-const var3949!1 var3324)
(declare-const var250!1 Int)
(define-const var2886 var647 var647-STRING_FIXED) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(define-const var2777 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[23] 
(assert true)
;(assert (writeBytes/-546957861 var1795!4 var2886 var2777)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11) 

(declare-const var1795!5 var3446)
(declare-const var2886!1 var647)
(declare-const var2777!1 (Array Int Int))
(define-const var1910 var258 var258-STRING_TERM) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var723 String (username/-714190539 var3424)) ; Statement: $r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var1656 (Array Int Int) (var168_getBytes/-813242536 var723 var896)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3) 
(assert true)
;(assert (writeBytes/771844277 var1795!5 var1910 var1656)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15) 

(declare-const var1795!6 var3446)
(declare-const var1910!1 var258)
(declare-const var1656!1 (Array Int Int))
(define-const var2497 Int (bv2nat (bvand ((_ int2bv 64) var1638!1) ((_ int2bv 64) 2097152)))) ; Statement: $l6 = l0 & 2097152L 
(define-const var3203 Int (ite (> var2497 0) 1 (ite (< var2497 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (= var3203 0)) ; Cond: $b7 == 0 
(define-const var969 var3324 var3324-INT1) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
(define-const var3830 Int (getPayloadLength/2056317546 var3074)) ; Statement: $i8 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(define-const var1115 Int (cast-from-Int-to-Int var3830)) ; Statement: $l9 = (long) $i8 
(assert true)
;(assert (writeInteger/-383739395 var1795!6 var969 var1115)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r17, $l9) 

(declare-const var1795!7 var3446)
(declare-const var969!1 var3324)
(declare-const var1115!1 Int)
(define-const var594 var258 var258-STRING_EOF) ; Statement: $r18 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var3621 (Array Int Int) (getByteBuffer/-505169391 var3074)) ; Statement: $r19 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(assert true)
;(assert (writeBytes/771844277 var1795!7 var594 var3621)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r18, $r19) 

(declare-const var1795!8 var3446)
(declare-const var594!1 var258)
(declare-const var3621!1 (Array Int Int))
(assert true) ; Non Conditional
(define-const var3933 Bool (useConnectWithDb/-714190539 var3424)) ; Statement: $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert (= (ite var3933 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1051 var258 var258-STRING_TERM) ; Statement: $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var1842 (Array Int Int) (var168_getBytes/-813242536 var71 var896)) ; Statement: $r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3) 
(assert true)
;(assert (writeBytes/771844277 var1795!8 var1051 var1842)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22) 

(declare-const var1795!9 var3446)
(declare-const var1051!1 var258)
(declare-const var1842!1 (Array Int Int))
(define-const var1633 Int (bv2nat (bvand ((_ int2bv 64) var1638!1) ((_ int2bv 64) 1048576)))) ; Statement: $l10 = l0 & 1048576L 
(define-const var2432 Int (ite (> var1633 0) 1 (ite (< var1633 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto return $r7 
(assert (= var2432 0)) ; Cond: $b11 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1379_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var1379_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var3541_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var3541_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), var3446-init=([], com.mysql.cj.protocol.a.NativePacketPayload), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), cast-from-Int-to-Int=([int], long), arr-Int-init=([], byte[]), writeBytes/-546957861=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, byte[]], void), var168_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[])}
; {var3719=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var3424=r4, var1379=com.mysql.cj.protocol.ServerSession, var108=r0, var71=r20, var1625=null_type, var3446=com.mysql.cj.protocol.a.NativePacketPayload, var3074=r16, var1638=l0, var3541=com.mysql.cj.CharsetSettings, var849=$r1, var2633=i1, var2506=$r2, var896=r3, var2405=$r5, var3114=$r6, var1116=$i13, var1795=$r7, var822=$i2, var2795=$i3, var1065=$z0, var1319=$r34, var517=$i12, var3354=$i14, var2507=$i4, var3324=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var2631=$r8, var3503=$r9, var2051=16777215L, var3949=$r10, var250=$l5, var647=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var2886=$r12, var2777=$r11, var258=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var1910=$r14, var723=$r13, var168=com.mysql.cj.util.StringUtils, var1656=$r15, var2497=$l6, var3203=$b7, var969=$r17, var3830=$i8, var1115=$l9, var594=$r18, var3621=$r19, var3933=$z1, var1051=$r21, var1842=$r22, var1633=$l10, var2432=$b11}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var3719, r4=var3424, com.mysql.cj.protocol.ServerSession=var1379, r0=var108, r20=var71, null_type=var1625, com.mysql.cj.protocol.a.NativePacketPayload=var3446, r16=var3074, l0=var1638, com.mysql.cj.CharsetSettings=var3541, $r1=var849, i1=var2633, $r2=var2506, r3=var896, $r5=var2405, $r6=var3114, $i13=var1116, $r7=var1795, $i2=var822, $i3=var2795, $z0=var1065, $r34=var1319, $i12=var517, $i14=var3354, $i4=var2507, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var3324, $r8=var2631, $r9=var3503, 16777215L=var2051, $r10=var3949, $l5=var250, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var647, $r12=var2886, $r11=var2777, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var258, $r14=var1910, $r13=var723, com.mysql.cj.util.StringUtils=var168, $r15=var1656, $l6=var2497, $b7=var3203, $r17=var969, $i8=var3830, $l9=var1115, $r18=var594, $r19=var3621, $z1=var3933, $r21=var1051, $r22=var1842, $l10=var1633, $b11=var2432}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r20 := @parameter1: java.lang.String;	r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i13 = virtualinvoke $r6.<java.lang.String: int length()>();	$r7 = new com.mysql.cj.protocol.a.NativePacketPayload;	$i2 = 3 * $i13;	$i3 = 88 + $i2;	$z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i14 = 0;	$r34 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$i12 = virtualinvoke $r34.<java.lang.String: int length()>();	$i14 = 3 * $i12;	goto [?= $i4 = $i3 + $i14];	$i4 = $i3 + $i14;	specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4);	$r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L);	$r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l5 = (long) i1;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5);	$r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r11 = newarray (byte)[23];	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15);	$l6 = l0 & 2097152L;	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$i8 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	$l9 = (long) $i8;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r17, $l9);	$r18 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r19 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r18, $r19);	$z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22);	$l10 = l0 & 1048576L;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto return $r7;	return $r7
;block_num 9