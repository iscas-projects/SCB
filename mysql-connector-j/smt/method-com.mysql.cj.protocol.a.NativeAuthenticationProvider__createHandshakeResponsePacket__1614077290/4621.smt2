(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var380 0)
(declare-sort var2655 0)
(declare-sort var1544 0)
(declare-sort var2738 0)
(declare-sort var3030 0)
(declare-sort var2799 0)
(declare-sort var267 0)
(declare-sort var826 0)
(declare-sort var1846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2655_getClientParam/-1269466014 (var2655) Int)
(declare-fun var2655_getCharsetSettings/-848071942 (var2655) var3030)
(declare-fun var3030_configurePreHandshake/1531994779 (var3030 Bool) Int)
(declare-fun var3030_getPasswordCharacterEncoding/-861467430 (var3030) String)
(declare-fun username/-714190539 (var380) String)
(declare-fun var2738-init () var2738)
(declare-fun useConnectWithDb/-714190539 (var380) Bool)
(declare-fun database/-714190539 (var380) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/233406230 (var2738 Int) void)
(declare-fun writeInteger/-383739395 (var2738 var2799 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun writeBytes/-546957861 (var2738 var267 (Array Int Int)) void)
(declare-fun var1846_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var2738 var826 (Array Int Int)) void)
(declare-fun readBytes/890815292 (var2738 var826) (Array Int Int))
(declare-const null-var380 var380)
(declare-const null-var2655 var2655)
(declare-const null-String String)
(declare-const null-var2738 var2738)
(declare-const var2799-INT4 var2799)
(declare-const var2799-INT1 var2799)
(declare-const var267-STRING_FIXED var267)
(declare-const var826-STRING_TERM var826)
(declare-const var826-STRING_LENENC var826)
(declare-const var826-STRING_EOF var826)
(declare-const var515 var380) ; Statement: r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var515 null-var380)))
(declare-const var212 var2655) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var212 null-var2655)))
(declare-const var3600 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var3600 null-String)))
(declare-const var3984 var2738) ; Statement: r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3984 null-var2738)))
(define-const var2439 Int (var2655_getClientParam/-1269466014 var212)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var1566 var3030 (var2655_getCharsetSettings/-848071942 var212)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var1679 Int (var3030_configurePreHandshake/1531994779 var1566 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var3900 var3030 (var2655_getCharsetSettings/-848071942 var212)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var3241 String (var3030_getPasswordCharacterEncoding/-861467430 var3900)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var1664 String (username/-714190539 var515)) ; Statement: $r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
 ; Statement: if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert (not (not (= var1664 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var1604 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $r7 = new com.mysql.cj.protocol.a.NativePacketPayload] 
(assert true) ; Non Conditional
(define-const var3920 var2738 var2738-init) ; Statement: $r7 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var1105 Int (* 3 var1604)) ; Statement: $i2 = 3 * $i13 
(define-const var2115 Int (+ 88 var1105)) ; Statement: $i3 = 88 + $i2 
(define-const var2967 Bool (useConnectWithDb/-714190539 var515)) ; Statement: $z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i14 = 0 
(assert (not (= (ite var2967 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1598 String (database/-714190539 var515)) ; Statement: $r34 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(assert true)
(define-const var319 Int (length/-134980193 var1598)) ; Statement: $i12 = virtualinvoke $r34.<java.lang.String: int length()>() 
(define-const var1726 Int (* 3 var319)) ; Statement: $i14 = 3 * $i12 
 ; Statement: goto [?= $i4 = $i3 + $i14] 
(assert true) ; Non Conditional
(define-const var2828 Int (+ var2115 var1726)) ; Statement: $i4 = $i3 + $i14 
(assert true)
;(assert (<init>/233406230 var3920 var2828)) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4) 

(declare-const var3920!1 var2738)
(declare-const var2828!1 Int)
(define-const var3507 var2799 var2799-INT4) ; Statement: $r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var3920!1 var3507 var2439)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0) 

(declare-const var3920!2 var2738)
(declare-const var3507!1 var2799)
(declare-const var2439!1 Int)
(define-const var14 var2799 var2799-INT4) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var3920!2 var14 16777215)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L) 

(declare-const var3920!3 var2738)
(declare-const var14!1 var2799)
(declare-const var117 Int)
(define-const var366 var2799 var2799-INT1) ; Statement: $r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var272 Int (cast-from-Int-to-Int var1679)) ; Statement: $l5 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var3920!3 var366 var272)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5) 

(declare-const var3920!4 var2738)
(declare-const var366!1 var2799)
(declare-const var272!1 Int)
(define-const var2596 var267 var267-STRING_FIXED) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(define-const var1115 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[23] 
(assert true)
;(assert (writeBytes/-546957861 var3920!4 var2596 var1115)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11) 

(declare-const var3920!5 var2738)
(declare-const var2596!1 var267)
(declare-const var1115!1 (Array Int Int))
(define-const var3036 var826 var826-STRING_TERM) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2402 String (username/-714190539 var515)) ; Statement: $r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var3563 (Array Int Int) (var1846_getBytes/-813242536 var2402 var3241)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3) 
(assert true)
;(assert (writeBytes/771844277 var3920!5 var3036 var3563)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15) 

(declare-const var3920!6 var2738)
(declare-const var3036!1 var826)
(declare-const var3563!1 (Array Int Int))
(define-const var2834 Int (bv2nat (bvand ((_ int2bv 64) var2439!1) ((_ int2bv 64) 2097152)))) ; Statement: $l6 = l0 & 2097152L 
(define-const var2553 Int (ite (> var2834 0) 1 (ite (< var2834 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (= var2553 0))) ; Negate: Cond: $b7 == 0  
(define-const var3720 var826 var826-STRING_LENENC) ; Statement: $r32 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC> 
(define-const var3294 var826 var826-STRING_EOF) ; Statement: $r31 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var1928 (Array Int Int) (readBytes/890815292 var3984 var3294)) ; Statement: $r33 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType)>($r31) 
(assert true)
;(assert (writeBytes/771844277 var3920!6 var3720 var1928)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r32, $r33) 

(declare-const var3920!7 var2738)
(declare-const var3720!1 var826)
(declare-const var1928!1 (Array Int Int))
 ; Statement: goto [?= $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>] 
(assert true) ; Non Conditional
(define-const var2104 Bool (useConnectWithDb/-714190539 var515)) ; Statement: $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert (= (ite var2104 1 0) 0)) ; Cond: $z1 == 0 
(define-const var644 var826 var826-STRING_TERM) ; Statement: $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var3155 (Array Int Int) (var1846_getBytes/-813242536 var3600 var3241)) ; Statement: $r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3) 
(assert true)
;(assert (writeBytes/771844277 var3920!7 var644 var3155)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22) 

(declare-const var3920!8 var2738)
(declare-const var644!1 var826)
(declare-const var3155!1 (Array Int Int))
(define-const var3657 Int (bv2nat (bvand ((_ int2bv 64) var2439!1) ((_ int2bv 64) 1048576)))) ; Statement: $l10 = l0 & 1048576L 
(define-const var2340 Int (ite (> var3657 0) 1 (ite (< var3657 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto return $r7 
(assert (= var2340 0)) ; Cond: $b11 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2655_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var2655_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var3030_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var3030_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), var2738-init=([], com.mysql.cj.protocol.a.NativePacketPayload), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), cast-from-Int-to-Int=([int], long), arr-Int-init=([], byte[]), writeBytes/-546957861=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, byte[]], void), var1846_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), readBytes/890815292=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType], byte[])}
; {var380=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var515=r4, var2655=com.mysql.cj.protocol.ServerSession, var212=r0, var3600=r20, var1544=null_type, var2738=com.mysql.cj.protocol.a.NativePacketPayload, var3984=r16, var2439=l0, var3030=com.mysql.cj.CharsetSettings, var1566=$r1, var1679=i1, var3900=$r2, var3241=r3, var1664=$r5, var1604=$i13, var3920=$r7, var1105=$i2, var2115=$i3, var2967=$z0, var1598=$r34, var319=$i12, var1726=$i14, var2828=$i4, var2799=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var3507=$r8, var14=$r9, var117=16777215L, var366=$r10, var272=$l5, var267=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var2596=$r12, var1115=$r11, var826=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var3036=$r14, var2402=$r13, var1846=com.mysql.cj.util.StringUtils, var3563=$r15, var2834=$l6, var2553=$b7, var3720=$r32, var3294=$r31, var1928=$r33, var2104=$z1, var644=$r21, var3155=$r22, var3657=$l10, var2340=$b11}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var380, r4=var515, com.mysql.cj.protocol.ServerSession=var2655, r0=var212, r20=var3600, null_type=var1544, com.mysql.cj.protocol.a.NativePacketPayload=var2738, r16=var3984, l0=var2439, com.mysql.cj.CharsetSettings=var3030, $r1=var1566, i1=var1679, $r2=var3900, r3=var3241, $r5=var1664, $i13=var1604, $r7=var3920, $i2=var1105, $i3=var2115, $z0=var2967, $r34=var1598, $i12=var319, $i14=var1726, $i4=var2828, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var2799, $r8=var3507, $r9=var14, 16777215L=var117, $r10=var366, $l5=var272, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var267, $r12=var2596, $r11=var1115, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var826, $r14=var3036, $r13=var2402, com.mysql.cj.util.StringUtils=var1846, $r15=var3563, $l6=var2834, $b7=var2553, $r32=var3720, $r31=var3294, $r33=var1928, $z1=var2104, $r21=var644, $r22=var3155, $l10=var3657, $b11=var2340}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r20 := @parameter1: java.lang.String;	r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i13 = 0;	goto [?= $r7 = new com.mysql.cj.protocol.a.NativePacketPayload];	$r7 = new com.mysql.cj.protocol.a.NativePacketPayload;	$i2 = 3 * $i13;	$i3 = 88 + $i2;	$z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i14 = 0;	$r34 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$i12 = virtualinvoke $r34.<java.lang.String: int length()>();	$i14 = 3 * $i12;	goto [?= $i4 = $i3 + $i14];	$i4 = $i3 + $i14;	specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4);	$r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L);	$r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l5 = (long) i1;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5);	$r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r11 = newarray (byte)[23];	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15);	$l6 = l0 & 2097152L;	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r32 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC>;	$r31 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r33 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType)>($r31);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r32, $r33);	goto [?= $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>];	$z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22);	$l10 = l0 & 1048576L;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto return $r7;	return $r7
;block_num 9