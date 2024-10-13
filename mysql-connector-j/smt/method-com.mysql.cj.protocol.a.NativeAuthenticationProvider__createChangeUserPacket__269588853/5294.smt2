(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2428 0)
(declare-sort var1893 0)
(declare-sort var304 0)
(declare-sort var3732 0)
(declare-sort var3990 0)
(declare-sort var2179 0)
(declare-sort var1218 0)
(declare-sort var2631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1893_getClientParam/-1269466014 (var1893) Int)
(declare-fun var1893_getCharsetSettings/-848071942 (var1893) var3990)
(declare-fun var3990_configurePreHandshake/1531994779 (var3990 Bool) Int)
(declare-fun var3990_getPasswordCharacterEncoding/-861467430 (var3990) String)
(declare-fun var3732-init () var3732)
(declare-fun username/-714190539 (var2428) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun useConnectWithDb/-714190539 (var2428) Bool)
(declare-fun <init>/233406230 (var3732 Int) void)
(declare-fun writeInteger/-383739395 (var3732 var2179 Int) void)
(declare-fun var2631_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var3732 var1218 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var3732) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2428 var2428)
(declare-const null-var1893 var1893)
(declare-const null-String String)
(declare-const null-var3732 var3732)
(declare-const var2179-INT1 var2179)
(declare-const var1218-STRING_TERM var1218)
(declare-const var3816 var2428) ; Statement: r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var3816 null-var2428)))
(declare-const var1619 var1893) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var1619 null-var1893)))
(declare-const var2515 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var2515 null-String)))
(declare-const var3473 var3732) ; Statement: r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3473 null-var3732)))
(define-const var1862 Int (var1893_getClientParam/-1269466014 var1619)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var671 var3990 (var1893_getCharsetSettings/-848071942 var1619)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var2963 Int (var3990_configurePreHandshake/1531994779 var671 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var835 var3990 (var1893_getCharsetSettings/-848071942 var1619)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var3552 String (var3990_getPasswordCharacterEncoding/-861467430 var835)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var3501 var3732 var3732-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var880 String (username/-714190539 var3816)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var3809 Int (length/-134980193 var880)) ; Statement: $i2 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var447 Int (* 3 var3809)) ; Statement: $i3 = 3 * $i2 
(define-const var3322 Int (+ 88 var447)) ; Statement: $i4 = 88 + $i3 
(define-const var2409 Bool (useConnectWithDb/-714190539 var3816)) ; Statement: $z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i15 = 1 
(assert (= (ite var2409 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2759 Int 1) ; Statement: $i15 = 1 
(assert true) ; Non Conditional
(define-const var3755 Int (+ var3322 var2759)) ; Statement: $i5 = $i4 + $i15 
(define-const var525 Int (+ var3755 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (<init>/233406230 var3501 var525)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6) 

(declare-const var3501!1 var3732)
(declare-const var525!1 Int)
(define-const var66 var2179 var2179-INT1) ; Statement: $r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3501!1 var66 17)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L) 

(declare-const var3501!2 var3732)
(declare-const var66!1 var2179)
(declare-const var3533 Int)
(define-const var1822 var1218 var1218-STRING_TERM) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2370 String (username/-714190539 var3816)) ; Statement: $r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var2211 (Array Int Int) (var2631_getBytes/-813242536 var2370 var3552)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3) 
(assert true)
;(assert (writeBytes/771844277 var3501!2 var1822 var2211)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10) 

(declare-const var3501!3 var3732)
(declare-const var1822!1 var1218)
(declare-const var2211!1 (Array Int Int))
(assert true)
(define-const var1842 Int (getPayloadLength/2056317546 var3473)) ; Statement: $i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
 ; Statement: if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (>= var1842 256)) ; Cond: $i7 >= 256 
(define-const var2814 var2179 var2179-INT1) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3501!3 var2814 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r12, 0L) 

(declare-const var3501!4 var3732)
(declare-const var2814!1 var2179)
(declare-const var2954 Int)
(assert true) ; Non Conditional
(define-const var3299 Bool (useConnectWithDb/-714190539 var3816)) ; Statement: $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (= (ite var3299 1 0) 0)) ; Cond: $z1 == 0 
(define-const var872 var2179 var2179-INT1) ; Statement: $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3501!4 var872 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r13, 0L) 

(declare-const var3501!5 var3732)
(declare-const var872!1 var2179)
(declare-const var2954!1 Int)
(assert true) ; Non Conditional
(define-const var2066 var2179 var2179-INT1) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var3575 Int (cast-from-Int-to-Int var2963)) ; Statement: $l8 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var3501!5 var2066 var3575)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8) 

(declare-const var3501!6 var3732)
(declare-const var2066!1 var2179)
(declare-const var3575!1 Int)
(define-const var3256 var2179 var2179-INT1) ; Statement: $r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3501!6 var3256 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L) 

(declare-const var3501!7 var3732)
(declare-const var3256!1 var2179)
(declare-const var2954!2 Int)
(define-const var3540 var1218 var1218-STRING_TERM) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var3729 (Array Int Int) (var2631_getBytes/-813242536 var2515 var3552)) ; Statement: $r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3) 
(assert true)
;(assert (writeBytes/771844277 var3501!7 var3540 var3729)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18) 

(declare-const var3501!8 var3732)
(declare-const var3540!1 var1218)
(declare-const var3729!1 (Array Int Int))
(define-const var3769 Int (bv2nat (bvand ((_ int2bv 64) var1862) ((_ int2bv 64) 1048576)))) ; Statement: $l9 = l0 & 1048576L 
(define-const var1215 Int (ite (> var3769 0) 1 (ite (< var3769 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto return $r4 
(assert (= var1215 0)) ; Cond: $b10 == 0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1893_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var1893_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var3990_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var3990_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var3732-init=([], com.mysql.cj.protocol.a.NativePacketPayload), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var2631_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), cast-from-Int-to-Int=([int], long)}
; {var2428=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var3816=r5, var1893=com.mysql.cj.protocol.ServerSession, var1619=r0, var2515=r16, var304=null_type, var3732=com.mysql.cj.protocol.a.NativePacketPayload, var3473=r11, var1862=l0, var3990=com.mysql.cj.CharsetSettings, var671=$r1, var2963=i1, var835=$r2, var3552=r3, var3501=$r4, var880=$r6, var3809=$i2, var447=$i3, var3322=$i4, var2409=$z0, var2759=$i15, var3755=$i5, var525=$i6, var2179=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var66=$r7, var3533=17L, var1218=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var1822=$r9, var2370=$r8, var2631=com.mysql.cj.util.StringUtils, var2211=$r10, var1842=$i7, var2814=$r12, var2954=0L, var3299=$z1, var872=$r13, var2066=$r14, var3575=$l8, var3256=$r15, var3540=$r17, var3729=$r18, var3769=$l9, var1215=$b10}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var2428, r5=var3816, com.mysql.cj.protocol.ServerSession=var1893, r0=var1619, r16=var2515, null_type=var304, com.mysql.cj.protocol.a.NativePacketPayload=var3732, r11=var3473, l0=var1862, com.mysql.cj.CharsetSettings=var3990, $r1=var671, i1=var2963, $r2=var835, r3=var3552, $r4=var3501, $r6=var880, $i2=var3809, $i3=var447, $i4=var3322, $z0=var2409, $i15=var2759, $i5=var3755, $i6=var525, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var2179, $r7=var66, 17L=var3533, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1218, $r9=var1822, $r8=var2370, com.mysql.cj.util.StringUtils=var2631, $r10=var2211, $i7=var1842, $r12=var2814, 0L=var2954, $z1=var3299, $r13=var872, $r14=var2066, $l8=var3575, $r15=var3256, $r17=var3540, $r18=var3729, $l9=var3769, $b10=var1215}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r16 := @parameter1: java.lang.String;	r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i2 = virtualinvoke $r6.<java.lang.String: int length()>();	$i3 = 3 * $i2;	$i4 = 88 + $i3;	$z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i15 = 1;	$i15 = 1;	$i5 = $i4 + $i15;	$i6 = $i5 + 1;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6);	$r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10);	$i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r12, 0L);	$z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r13, 0L);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l8 = (long) i1;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8);	$r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L);	$r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18);	$l9 = l0 & 1048576L;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto return $r4;	return $r4
;block_num 8