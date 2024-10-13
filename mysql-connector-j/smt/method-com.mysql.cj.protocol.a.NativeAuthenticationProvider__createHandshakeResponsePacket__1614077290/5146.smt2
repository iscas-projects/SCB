(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var459 0)
(declare-sort var474 0)
(declare-sort var1911 0)
(declare-sort var146 0)
(declare-sort var3421 0)
(declare-sort var817 0)
(declare-sort var43 0)
(declare-sort var2873 0)
(declare-sort var527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var474_getClientParam/-1269466014 (var474) Int)
(declare-fun var474_getCharsetSettings/-848071942 (var474) var3421)
(declare-fun var3421_configurePreHandshake/1531994779 (var3421 Bool) Int)
(declare-fun var3421_getPasswordCharacterEncoding/-861467430 (var3421) String)
(declare-fun username/-714190539 (var459) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var146-init () var146)
(declare-fun useConnectWithDb/-714190539 (var459) Bool)
(declare-fun <init>/233406230 (var146 Int) void)
(declare-fun writeInteger/-383739395 (var146 var817 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun writeBytes/-546957861 (var146 var43 (Array Int Int)) void)
(declare-fun var527_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var146 var2873 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var146) Int)
(declare-fun getByteBuffer/-505169391 (var146) (Array Int Int))
(declare-const null-var459 var459)
(declare-const null-var474 var474)
(declare-const null-String String)
(declare-const null-var146 var146)
(declare-const var817-INT4 var817)
(declare-const var817-INT1 var817)
(declare-const var43-STRING_FIXED var43)
(declare-const var2873-STRING_TERM var2873)
(declare-const var2873-STRING_EOF var2873)
(declare-const var3893 var459) ; Statement: r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var3893 null-var459)))
(declare-const var985 var474) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var985 null-var474)))
(declare-const var1429 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var1429 null-String)))
(declare-const var2913 var146) ; Statement: r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var2913 null-var146)))
(define-const var708 Int (var474_getClientParam/-1269466014 var985)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var3592 var3421 (var474_getCharsetSettings/-848071942 var985)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var2397 Int (var3421_configurePreHandshake/1531994779 var3592 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var628 var3421 (var474_getCharsetSettings/-848071942 var985)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var2262 String (var3421_getPasswordCharacterEncoding/-861467430 var628)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var201 String (username/-714190539 var3893)) ; Statement: $r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
 ; Statement: if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert (not (= var201 null-String))) ; Cond: $r5 != null 
(define-const var1222 String (username/-714190539 var3893)) ; Statement: $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var1447 Int (length/-134980193 var1222)) ; Statement: $i13 = virtualinvoke $r6.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var2283 var146 var146-init) ; Statement: $r7 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var934 Int (* 3 var1447)) ; Statement: $i2 = 3 * $i13 
(define-const var359 Int (+ 88 var934)) ; Statement: $i3 = 88 + $i2 
(define-const var2098 Bool (useConnectWithDb/-714190539 var3893)) ; Statement: $z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i14 = 0 
(assert (= (ite var2098 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2853 Int 0) ; Statement: $i14 = 0 
(assert true) ; Non Conditional
(define-const var699 Int (+ var359 var2853)) ; Statement: $i4 = $i3 + $i14 
(assert true)
;(assert (<init>/233406230 var2283 var699)) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4) 

(declare-const var2283!1 var146)
(declare-const var699!1 Int)
(define-const var3099 var817 var817-INT4) ; Statement: $r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var2283!1 var3099 var708)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0) 

(declare-const var2283!2 var146)
(declare-const var3099!1 var817)
(declare-const var708!1 Int)
(define-const var1586 var817 var817-INT4) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var2283!2 var1586 16777215)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L) 

(declare-const var2283!3 var146)
(declare-const var1586!1 var817)
(declare-const var3355 Int)
(define-const var2278 var817 var817-INT1) ; Statement: $r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var1174 Int (cast-from-Int-to-Int var2397)) ; Statement: $l5 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var2283!3 var2278 var1174)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5) 

(declare-const var2283!4 var146)
(declare-const var2278!1 var817)
(declare-const var1174!1 Int)
(define-const var2289 var43 var43-STRING_FIXED) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(define-const var85 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[23] 
(assert true)
;(assert (writeBytes/-546957861 var2283!4 var2289 var85)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11) 

(declare-const var2283!5 var146)
(declare-const var2289!1 var43)
(declare-const var85!1 (Array Int Int))
(define-const var2404 var2873 var2873-STRING_TERM) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var1563 String (username/-714190539 var3893)) ; Statement: $r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var2725 (Array Int Int) (var527_getBytes/-813242536 var1563 var2262)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3) 
(assert true)
;(assert (writeBytes/771844277 var2283!5 var2404 var2725)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15) 

(declare-const var2283!6 var146)
(declare-const var2404!1 var2873)
(declare-const var2725!1 (Array Int Int))
(define-const var738 Int (bv2nat (bvand ((_ int2bv 64) var708!1) ((_ int2bv 64) 2097152)))) ; Statement: $l6 = l0 & 2097152L 
(define-const var411 Int (ite (> var738 0) 1 (ite (< var738 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (= var411 0)) ; Cond: $b7 == 0 
(define-const var1747 var817 var817-INT1) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
(define-const var1676 Int (getPayloadLength/2056317546 var2913)) ; Statement: $i8 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(define-const var1128 Int (cast-from-Int-to-Int var1676)) ; Statement: $l9 = (long) $i8 
(assert true)
;(assert (writeInteger/-383739395 var2283!6 var1747 var1128)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r17, $l9) 

(declare-const var2283!7 var146)
(declare-const var1747!1 var817)
(declare-const var1128!1 Int)
(define-const var3483 var2873 var2873-STRING_EOF) ; Statement: $r18 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var1123 (Array Int Int) (getByteBuffer/-505169391 var2913)) ; Statement: $r19 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(assert true)
;(assert (writeBytes/771844277 var2283!7 var3483 var1123)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r18, $r19) 

(declare-const var2283!8 var146)
(declare-const var3483!1 var2873)
(declare-const var1123!1 (Array Int Int))
(assert true) ; Non Conditional
(define-const var558 Bool (useConnectWithDb/-714190539 var3893)) ; Statement: $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert (= (ite var558 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2111 var2873 var2873-STRING_TERM) ; Statement: $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2020 (Array Int Int) (var527_getBytes/-813242536 var1429 var2262)) ; Statement: $r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3) 
(assert true)
;(assert (writeBytes/771844277 var2283!8 var2111 var2020)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22) 

(declare-const var2283!9 var146)
(declare-const var2111!1 var2873)
(declare-const var2020!1 (Array Int Int))
(define-const var3808 Int (bv2nat (bvand ((_ int2bv 64) var708!1) ((_ int2bv 64) 1048576)))) ; Statement: $l10 = l0 & 1048576L 
(define-const var3680 Int (ite (> var3808 0) 1 (ite (< var3808 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto return $r7 
(assert (= var3680 0)) ; Cond: $b11 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var474_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var474_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var3421_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var3421_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), var146-init=([], com.mysql.cj.protocol.a.NativePacketPayload), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), cast-from-Int-to-Int=([int], long), arr-Int-init=([], byte[]), writeBytes/-546957861=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, byte[]], void), var527_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[])}
; {var459=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var3893=r4, var474=com.mysql.cj.protocol.ServerSession, var985=r0, var1429=r20, var1911=null_type, var146=com.mysql.cj.protocol.a.NativePacketPayload, var2913=r16, var708=l0, var3421=com.mysql.cj.CharsetSettings, var3592=$r1, var2397=i1, var628=$r2, var2262=r3, var201=$r5, var1222=$r6, var1447=$i13, var2283=$r7, var934=$i2, var359=$i3, var2098=$z0, var2853=$i14, var699=$i4, var817=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var3099=$r8, var1586=$r9, var3355=16777215L, var2278=$r10, var1174=$l5, var43=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var2289=$r12, var85=$r11, var2873=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var2404=$r14, var1563=$r13, var527=com.mysql.cj.util.StringUtils, var2725=$r15, var738=$l6, var411=$b7, var1747=$r17, var1676=$i8, var1128=$l9, var3483=$r18, var1123=$r19, var558=$z1, var2111=$r21, var2020=$r22, var3808=$l10, var3680=$b11}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var459, r4=var3893, com.mysql.cj.protocol.ServerSession=var474, r0=var985, r20=var1429, null_type=var1911, com.mysql.cj.protocol.a.NativePacketPayload=var146, r16=var2913, l0=var708, com.mysql.cj.CharsetSettings=var3421, $r1=var3592, i1=var2397, $r2=var628, r3=var2262, $r5=var201, $r6=var1222, $i13=var1447, $r7=var2283, $i2=var934, $i3=var359, $z0=var2098, $i14=var2853, $i4=var699, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var817, $r8=var3099, $r9=var1586, 16777215L=var3355, $r10=var2278, $l5=var1174, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var43, $r12=var2289, $r11=var85, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var2873, $r14=var2404, $r13=var1563, com.mysql.cj.util.StringUtils=var527, $r15=var2725, $l6=var738, $b7=var411, $r17=var1747, $i8=var1676, $l9=var1128, $r18=var3483, $r19=var1123, $z1=var558, $r21=var2111, $r22=var2020, $l10=var3808, $b11=var3680}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r20 := @parameter1: java.lang.String;	r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i13 = virtualinvoke $r6.<java.lang.String: int length()>();	$r7 = new com.mysql.cj.protocol.a.NativePacketPayload;	$i2 = 3 * $i13;	$i3 = 88 + $i2;	$z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i14 = 0;	$i14 = 0;	$i4 = $i3 + $i14;	specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4);	$r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L);	$r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l5 = (long) i1;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5);	$r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r11 = newarray (byte)[23];	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15);	$l6 = l0 & 2097152L;	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$i8 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	$l9 = (long) $i8;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r17, $l9);	$r18 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r19 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r18, $r19);	$z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22);	$l10 = l0 & 1048576L;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto return $r7;	return $r7
;block_num 9