(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1619 0)
(declare-sort var3071 0)
(declare-sort var1521 0)
(declare-sort var2728 0)
(declare-sort var3239 0)
(declare-sort var1797 0)
(declare-sort var1155 0)
(declare-sort var162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3071_getClientParam/-1269466014 (var3071) Int)
(declare-fun var3071_getCharsetSettings/-848071942 (var3071) var3239)
(declare-fun var3239_configurePreHandshake/1531994779 (var3239 Bool) Int)
(declare-fun var3239_getPasswordCharacterEncoding/-861467430 (var3239) String)
(declare-fun var2728-init () var2728)
(declare-fun username/-714190539 (var1619) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun useConnectWithDb/-714190539 (var1619) Bool)
(declare-fun database/-714190539 (var1619) String)
(declare-fun <init>/233406230 (var2728 Int) void)
(declare-fun writeInteger/-383739395 (var2728 var1797 Int) void)
(declare-fun var162_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var2728 var1155 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var2728) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1619 var1619)
(declare-const null-var3071 var3071)
(declare-const null-String String)
(declare-const null-var2728 var2728)
(declare-const var1797-INT1 var1797)
(declare-const var1155-STRING_TERM var1155)
(declare-const var1827 var1619) ; Statement: r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var1827 null-var1619)))
(declare-const var3416 var3071) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var3416 null-var3071)))
(declare-const var1052 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var1052 null-String)))
(declare-const var995 var2728) ; Statement: r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var995 null-var2728)))
(define-const var1136 Int (var3071_getClientParam/-1269466014 var3416)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var2407 var3239 (var3071_getCharsetSettings/-848071942 var3416)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var3409 Int (var3239_configurePreHandshake/1531994779 var2407 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var1152 var3239 (var3071_getCharsetSettings/-848071942 var3416)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var530 String (var3239_getPasswordCharacterEncoding/-861467430 var1152)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var3462 var2728 var2728-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var3005 String (username/-714190539 var1827)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var810 Int (length/-134980193 var3005)) ; Statement: $i2 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var2070 Int (* 3 var810)) ; Statement: $i3 = 3 * $i2 
(define-const var2696 Int (+ 88 var2070)) ; Statement: $i4 = 88 + $i3 
(define-const var2341 Bool (useConnectWithDb/-714190539 var1827)) ; Statement: $z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i15 = 1 
(assert (not (= (ite var2341 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3271 String (database/-714190539 var1827)) ; Statement: $r30 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(assert true)
(define-const var2699 Int (length/-134980193 var3271)) ; Statement: $i14 = virtualinvoke $r30.<java.lang.String: int length()>() 
(define-const var3807 Int (* 3 var2699)) ; Statement: $i15 = 3 * $i14 
 ; Statement: goto [?= $i5 = $i4 + $i15] 
(assert true) ; Non Conditional
(define-const var2990 Int (+ var2696 var3807)) ; Statement: $i5 = $i4 + $i15 
(define-const var2506 Int (+ var2990 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (<init>/233406230 var3462 var2506)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6) 

(declare-const var3462!1 var2728)
(declare-const var2506!1 Int)
(define-const var3363 var1797 var1797-INT1) ; Statement: $r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3462!1 var3363 17)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L) 

(declare-const var3462!2 var2728)
(declare-const var3363!1 var1797)
(declare-const var1198 Int)
(define-const var3595 var1155 var1155-STRING_TERM) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var1689 String (username/-714190539 var1827)) ; Statement: $r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var2292 (Array Int Int) (var162_getBytes/-813242536 var1689 var530)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3) 
(assert true)
;(assert (writeBytes/771844277 var3462!2 var3595 var2292)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10) 

(declare-const var3462!3 var2728)
(declare-const var3595!1 var1155)
(declare-const var2292!1 (Array Int Int))
(assert true)
(define-const var2891 Int (getPayloadLength/2056317546 var995)) ; Statement: $i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
 ; Statement: if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (>= var2891 256)) ; Cond: $i7 >= 256 
(define-const var2504 var1797 var1797-INT1) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3462!3 var2504 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r12, 0L) 

(declare-const var3462!4 var2728)
(declare-const var2504!1 var1797)
(declare-const var1365 Int)
(assert true) ; Non Conditional
(define-const var239 Bool (useConnectWithDb/-714190539 var1827)) ; Statement: $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (= (ite var239 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3493 var1155 var1155-STRING_TERM) ; Statement: $r25 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2223 String (database/-714190539 var1827)) ; Statement: $r24 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(define-const var3099 (Array Int Int) (var162_getBytes/-813242536 var2223 var530)) ; Statement: $r26 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r24, r3) 
(assert true)
;(assert (writeBytes/771844277 var3462!4 var3493 var3099)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r25, $r26) 

(declare-const var3462!5 var2728)
(declare-const var3493!1 var1155)
(declare-const var3099!1 (Array Int Int))
 ; Statement: goto [?= $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>] 
(assert true) ; Non Conditional
(define-const var2542 var1797 var1797-INT1) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var1509 Int (cast-from-Int-to-Int var3409)) ; Statement: $l8 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var3462!5 var2542 var1509)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8) 

(declare-const var3462!6 var2728)
(declare-const var2542!1 var1797)
(declare-const var1509!1 Int)
(define-const var167 var1797 var1797-INT1) ; Statement: $r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var3462!6 var167 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L) 

(declare-const var3462!7 var2728)
(declare-const var167!1 var1797)
(declare-const var1365!1 Int)
(define-const var1861 var1155 var1155-STRING_TERM) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var3427 (Array Int Int) (var162_getBytes/-813242536 var1052 var530)) ; Statement: $r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3) 
(assert true)
;(assert (writeBytes/771844277 var3462!7 var1861 var3427)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18) 

(declare-const var3462!8 var2728)
(declare-const var1861!1 var1155)
(declare-const var3427!1 (Array Int Int))
(define-const var172 Int (bv2nat (bvand ((_ int2bv 64) var1136) ((_ int2bv 64) 1048576)))) ; Statement: $l9 = l0 & 1048576L 
(define-const var2037 Int (ite (> var172 0) 1 (ite (< var172 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto return $r4 
(assert (= var2037 0)) ; Cond: $b10 == 0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3071_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var3071_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var3239_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var3239_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var2728-init=([], com.mysql.cj.protocol.a.NativePacketPayload), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var162_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), cast-from-Int-to-Int=([int], long)}
; {var1619=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var1827=r5, var3071=com.mysql.cj.protocol.ServerSession, var3416=r0, var1052=r16, var1521=null_type, var2728=com.mysql.cj.protocol.a.NativePacketPayload, var995=r11, var1136=l0, var3239=com.mysql.cj.CharsetSettings, var2407=$r1, var3409=i1, var1152=$r2, var530=r3, var3462=$r4, var3005=$r6, var810=$i2, var2070=$i3, var2696=$i4, var2341=$z0, var3271=$r30, var2699=$i14, var3807=$i15, var2990=$i5, var2506=$i6, var1797=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var3363=$r7, var1198=17L, var1155=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var3595=$r9, var1689=$r8, var162=com.mysql.cj.util.StringUtils, var2292=$r10, var2891=$i7, var2504=$r12, var1365=0L, var239=$z1, var3493=$r25, var2223=$r24, var3099=$r26, var2542=$r14, var1509=$l8, var167=$r15, var1861=$r17, var3427=$r18, var172=$l9, var2037=$b10}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var1619, r5=var1827, com.mysql.cj.protocol.ServerSession=var3071, r0=var3416, r16=var1052, null_type=var1521, com.mysql.cj.protocol.a.NativePacketPayload=var2728, r11=var995, l0=var1136, com.mysql.cj.CharsetSettings=var3239, $r1=var2407, i1=var3409, $r2=var1152, r3=var530, $r4=var3462, $r6=var3005, $i2=var810, $i3=var2070, $i4=var2696, $z0=var2341, $r30=var3271, $i14=var2699, $i15=var3807, $i5=var2990, $i6=var2506, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var1797, $r7=var3363, 17L=var1198, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1155, $r9=var3595, $r8=var1689, com.mysql.cj.util.StringUtils=var162, $r10=var2292, $i7=var2891, $r12=var2504, 0L=var1365, $z1=var239, $r25=var3493, $r24=var2223, $r26=var3099, $r14=var2542, $l8=var1509, $r15=var167, $r17=var1861, $r18=var3427, $l9=var172, $b10=var2037}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r16 := @parameter1: java.lang.String;	r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i2 = virtualinvoke $r6.<java.lang.String: int length()>();	$i3 = 3 * $i2;	$i4 = 88 + $i3;	$z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i15 = 1;	$r30 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$i14 = virtualinvoke $r30.<java.lang.String: int length()>();	$i15 = 3 * $i14;	goto [?= $i5 = $i4 + $i15];	$i5 = $i4 + $i15;	$i6 = $i5 + 1;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6);	$r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10);	$i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r12, 0L);	$z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r25 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r24 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$r26 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r24, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r25, $r26);	goto [?= $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>];	$r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l8 = (long) i1;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8);	$r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L);	$r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18);	$l9 = l0 & 1048576L;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto return $r4;	return $r4
;block_num 8