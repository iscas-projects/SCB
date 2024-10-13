(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1436 0)
(declare-sort var2640 0)
(declare-sort var2157 0)
(declare-sort var2380 0)
(declare-sort var1881 0)
(declare-sort var1543 0)
(declare-sort var3780 0)
(declare-sort var1689 0)
(declare-sort var1802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2640_getClientParam/-1269466014 (var2640) Int)
(declare-fun var2640_getCharsetSettings/-848071942 (var2640) var1881)
(declare-fun var1881_configurePreHandshake/1531994779 (var1881 Bool) Int)
(declare-fun var1881_getPasswordCharacterEncoding/-861467430 (var1881) String)
(declare-fun username/-714190539 (var1436) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2380-init () var2380)
(declare-fun useConnectWithDb/-714190539 (var1436) Bool)
(declare-fun <init>/233406230 (var2380 Int) void)
(declare-fun writeInteger/-383739395 (var2380 var1543 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun writeBytes/-546957861 (var2380 var3780 (Array Int Int)) void)
(declare-fun var1802_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var2380 var1689 (Array Int Int)) void)
(declare-fun readBytes/890815292 (var2380 var1689) (Array Int Int))
(declare-const null-var1436 var1436)
(declare-const null-var2640 var2640)
(declare-const null-String String)
(declare-const null-var2380 var2380)
(declare-const var1543-INT4 var1543)
(declare-const var1543-INT1 var1543)
(declare-const var3780-STRING_FIXED var3780)
(declare-const var1689-STRING_TERM var1689)
(declare-const var1689-STRING_LENENC var1689)
(declare-const var1689-STRING_EOF var1689)
(declare-const var2230 var1436) ; Statement: r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var2230 null-var1436)))
(declare-const var1314 var2640) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var1314 null-var2640)))
(declare-const var3104 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var3104 null-String)))
(declare-const var3559 var2380) ; Statement: r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3559 null-var2380)))
(define-const var2275 Int (var2640_getClientParam/-1269466014 var1314)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var1542 var1881 (var2640_getCharsetSettings/-848071942 var1314)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var3326 Int (var1881_configurePreHandshake/1531994779 var1542 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var243 var1881 (var2640_getCharsetSettings/-848071942 var1314)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var3597 String (var1881_getPasswordCharacterEncoding/-861467430 var243)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var139 String (username/-714190539 var2230)) ; Statement: $r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
 ; Statement: if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert (not (= var139 null-String))) ; Cond: $r5 != null 
(define-const var2385 String (username/-714190539 var2230)) ; Statement: $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var3718 Int (length/-134980193 var2385)) ; Statement: $i13 = virtualinvoke $r6.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var2016 var2380 var2380-init) ; Statement: $r7 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var288 Int (* 3 var3718)) ; Statement: $i2 = 3 * $i13 
(define-const var1825 Int (+ 88 var288)) ; Statement: $i3 = 88 + $i2 
(define-const var442 Bool (useConnectWithDb/-714190539 var2230)) ; Statement: $z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i14 = 0 
(assert (= (ite var442 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1547 Int 0) ; Statement: $i14 = 0 
(assert true) ; Non Conditional
(define-const var1362 Int (+ var1825 var1547)) ; Statement: $i4 = $i3 + $i14 
(assert true)
;(assert (<init>/233406230 var2016 var1362)) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4) 

(declare-const var2016!1 var2380)
(declare-const var1362!1 Int)
(define-const var364 var1543 var1543-INT4) ; Statement: $r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var2016!1 var364 var2275)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0) 

(declare-const var2016!2 var2380)
(declare-const var364!1 var1543)
(declare-const var2275!1 Int)
(define-const var3276 var1543 var1543-INT4) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var2016!2 var3276 16777215)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L) 

(declare-const var2016!3 var2380)
(declare-const var3276!1 var1543)
(declare-const var2183 Int)
(define-const var2519 var1543 var1543-INT1) ; Statement: $r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var389 Int (cast-from-Int-to-Int var3326)) ; Statement: $l5 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var2016!3 var2519 var389)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5) 

(declare-const var2016!4 var2380)
(declare-const var2519!1 var1543)
(declare-const var389!1 Int)
(define-const var513 var3780 var3780-STRING_FIXED) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(define-const var2804 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[23] 
(assert true)
;(assert (writeBytes/-546957861 var2016!4 var513 var2804)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11) 

(declare-const var2016!5 var2380)
(declare-const var513!1 var3780)
(declare-const var2804!1 (Array Int Int))
(define-const var3393 var1689 var1689-STRING_TERM) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var545 String (username/-714190539 var2230)) ; Statement: $r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var3534 (Array Int Int) (var1802_getBytes/-813242536 var545 var3597)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3) 
(assert true)
;(assert (writeBytes/771844277 var2016!5 var3393 var3534)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15) 

(declare-const var2016!6 var2380)
(declare-const var3393!1 var1689)
(declare-const var3534!1 (Array Int Int))
(define-const var2211 Int (bv2nat (bvand ((_ int2bv 64) var2275!1) ((_ int2bv 64) 2097152)))) ; Statement: $l6 = l0 & 2097152L 
(define-const var1683 Int (ite (> var2211 0) 1 (ite (< var2211 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (= var1683 0))) ; Negate: Cond: $b7 == 0  
(define-const var2150 var1689 var1689-STRING_LENENC) ; Statement: $r32 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC> 
(define-const var821 var1689 var1689-STRING_EOF) ; Statement: $r31 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var3970 (Array Int Int) (readBytes/890815292 var3559 var821)) ; Statement: $r33 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType)>($r31) 
(assert true)
;(assert (writeBytes/771844277 var2016!6 var2150 var3970)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r32, $r33) 

(declare-const var2016!7 var2380)
(declare-const var2150!1 var1689)
(declare-const var3970!1 (Array Int Int))
 ; Statement: goto [?= $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>] 
(assert true) ; Non Conditional
(define-const var170 Bool (useConnectWithDb/-714190539 var2230)) ; Statement: $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert (= (ite var170 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1620 var1689 var1689-STRING_TERM) ; Statement: $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var3374 (Array Int Int) (var1802_getBytes/-813242536 var3104 var3597)) ; Statement: $r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3) 
(assert true)
;(assert (writeBytes/771844277 var2016!7 var1620 var3374)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22) 

(declare-const var2016!8 var2380)
(declare-const var1620!1 var1689)
(declare-const var3374!1 (Array Int Int))
(define-const var2663 Int (bv2nat (bvand ((_ int2bv 64) var2275!1) ((_ int2bv 64) 1048576)))) ; Statement: $l10 = l0 & 1048576L 
(define-const var411 Int (ite (> var2663 0) 1 (ite (< var2663 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto return $r7 
(assert (= var411 0)) ; Cond: $b11 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2640_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var2640_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var1881_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var1881_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), var2380-init=([], com.mysql.cj.protocol.a.NativePacketPayload), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), cast-from-Int-to-Int=([int], long), arr-Int-init=([], byte[]), writeBytes/-546957861=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, byte[]], void), var1802_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), readBytes/890815292=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType], byte[])}
; {var1436=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var2230=r4, var2640=com.mysql.cj.protocol.ServerSession, var1314=r0, var3104=r20, var2157=null_type, var2380=com.mysql.cj.protocol.a.NativePacketPayload, var3559=r16, var2275=l0, var1881=com.mysql.cj.CharsetSettings, var1542=$r1, var3326=i1, var243=$r2, var3597=r3, var139=$r5, var2385=$r6, var3718=$i13, var2016=$r7, var288=$i2, var1825=$i3, var442=$z0, var1547=$i14, var1362=$i4, var1543=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var364=$r8, var3276=$r9, var2183=16777215L, var2519=$r10, var389=$l5, var3780=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var513=$r12, var2804=$r11, var1689=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var3393=$r14, var545=$r13, var1802=com.mysql.cj.util.StringUtils, var3534=$r15, var2211=$l6, var1683=$b7, var2150=$r32, var821=$r31, var3970=$r33, var170=$z1, var1620=$r21, var3374=$r22, var2663=$l10, var411=$b11}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var1436, r4=var2230, com.mysql.cj.protocol.ServerSession=var2640, r0=var1314, r20=var3104, null_type=var2157, com.mysql.cj.protocol.a.NativePacketPayload=var2380, r16=var3559, l0=var2275, com.mysql.cj.CharsetSettings=var1881, $r1=var1542, i1=var3326, $r2=var243, r3=var3597, $r5=var139, $r6=var2385, $i13=var3718, $r7=var2016, $i2=var288, $i3=var1825, $z0=var442, $i14=var1547, $i4=var1362, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var1543, $r8=var364, $r9=var3276, 16777215L=var2183, $r10=var2519, $l5=var389, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var3780, $r12=var513, $r11=var2804, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1689, $r14=var3393, $r13=var545, com.mysql.cj.util.StringUtils=var1802, $r15=var3534, $l6=var2211, $b7=var1683, $r32=var2150, $r31=var821, $r33=var3970, $z1=var170, $r21=var1620, $r22=var3374, $l10=var2663, $b11=var411}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r20 := @parameter1: java.lang.String;	r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i13 = virtualinvoke $r6.<java.lang.String: int length()>();	$r7 = new com.mysql.cj.protocol.a.NativePacketPayload;	$i2 = 3 * $i13;	$i3 = 88 + $i2;	$z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i14 = 0;	$i14 = 0;	$i4 = $i3 + $i14;	specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4);	$r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L);	$r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l5 = (long) i1;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5);	$r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r11 = newarray (byte)[23];	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15);	$l6 = l0 & 2097152L;	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r32 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC>;	$r31 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r33 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType)>($r31);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r32, $r33);	goto [?= $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>];	$z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22);	$l10 = l0 & 1048576L;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto return $r7;	return $r7
;block_num 9