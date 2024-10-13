(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3020 0)
(declare-sort var1635 0)
(declare-sort var2268 0)
(declare-sort var540 0)
(declare-sort var2619 0)
(declare-sort var595 0)
(declare-sort var274 0)
(declare-sort var3127 0)
(declare-sort var1762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1635_getClientParam/-1269466014 (var1635) Int)
(declare-fun var1635_getCharsetSettings/-848071942 (var1635) var2619)
(declare-fun var2619_configurePreHandshake/1531994779 (var2619 Bool) Int)
(declare-fun var2619_getPasswordCharacterEncoding/-861467430 (var2619) String)
(declare-fun username/-714190539 (var3020) String)
(declare-fun var540-init () var540)
(declare-fun useConnectWithDb/-714190539 (var3020) Bool)
(declare-fun <init>/233406230 (var540 Int) void)
(declare-fun writeInteger/-383739395 (var540 var595 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun writeBytes/-546957861 (var540 var274 (Array Int Int)) void)
(declare-fun var1762_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var540 var3127 (Array Int Int)) void)
(declare-fun readBytes/890815292 (var540 var3127) (Array Int Int))
(declare-const null-var3020 var3020)
(declare-const null-var1635 var1635)
(declare-const null-String String)
(declare-const null-var540 var540)
(declare-const var595-INT4 var595)
(declare-const var595-INT1 var595)
(declare-const var274-STRING_FIXED var274)
(declare-const var3127-STRING_TERM var3127)
(declare-const var3127-STRING_LENENC var3127)
(declare-const var3127-STRING_EOF var3127)
(declare-const var3498 var3020) ; Statement: r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var3498 null-var3020)))
(declare-const var3618 var1635) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var3618 null-var1635)))
(declare-const var1021 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var1021 null-String)))
(declare-const var1012 var540) ; Statement: r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var1012 null-var540)))
(define-const var2060 Int (var1635_getClientParam/-1269466014 var3618)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var1664 var2619 (var1635_getCharsetSettings/-848071942 var3618)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var566 Int (var2619_configurePreHandshake/1531994779 var1664 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var1036 var2619 (var1635_getCharsetSettings/-848071942 var3618)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var450 String (var2619_getPasswordCharacterEncoding/-861467430 var1036)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var2026 String (username/-714190539 var3498)) ; Statement: $r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
 ; Statement: if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert (not (not (= var2026 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var2041 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $r7 = new com.mysql.cj.protocol.a.NativePacketPayload] 
(assert true) ; Non Conditional
(define-const var1157 var540 var540-init) ; Statement: $r7 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var545 Int (* 3 var2041)) ; Statement: $i2 = 3 * $i13 
(define-const var2539 Int (+ 88 var545)) ; Statement: $i3 = 88 + $i2 
(define-const var2062 Bool (useConnectWithDb/-714190539 var3498)) ; Statement: $z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i14 = 0 
(assert (= (ite var2062 1 0) 0)) ; Cond: $z0 == 0 
(define-const var468 Int 0) ; Statement: $i14 = 0 
(assert true) ; Non Conditional
(define-const var2930 Int (+ var2539 var468)) ; Statement: $i4 = $i3 + $i14 
(assert true)
;(assert (<init>/233406230 var1157 var2930)) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4) 

(declare-const var1157!1 var540)
(declare-const var2930!1 Int)
(define-const var804 var595 var595-INT4) ; Statement: $r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var1157!1 var804 var2060)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0) 

(declare-const var1157!2 var540)
(declare-const var804!1 var595)
(declare-const var2060!1 Int)
(define-const var3397 var595 var595-INT4) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4> 
(assert true)
;(assert (writeInteger/-383739395 var1157!2 var3397 16777215)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L) 

(declare-const var1157!3 var540)
(declare-const var3397!1 var595)
(declare-const var2812 Int)
(define-const var3203 var595 var595-INT1) ; Statement: $r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var2941 Int (cast-from-Int-to-Int var566)) ; Statement: $l5 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var1157!3 var3203 var2941)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5) 

(declare-const var1157!4 var540)
(declare-const var3203!1 var595)
(declare-const var2941!1 Int)
(define-const var3186 var274 var274-STRING_FIXED) ; Statement: $r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(define-const var1403 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[23] 
(assert true)
;(assert (writeBytes/-546957861 var1157!4 var3186 var1403)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11) 

(declare-const var1157!5 var540)
(declare-const var3186!1 var274)
(declare-const var1403!1 (Array Int Int))
(define-const var3396 var3127 var3127-STRING_TERM) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var2757 String (username/-714190539 var3498)) ; Statement: $r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var3936 (Array Int Int) (var1762_getBytes/-813242536 var2757 var450)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3) 
(assert true)
;(assert (writeBytes/771844277 var1157!5 var3396 var3936)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15) 

(declare-const var1157!6 var540)
(declare-const var3396!1 var3127)
(declare-const var3936!1 (Array Int Int))
(define-const var2216 Int (bv2nat (bvand ((_ int2bv 64) var2060!1) ((_ int2bv 64) 2097152)))) ; Statement: $l6 = l0 & 2097152L 
(define-const var3223 Int (ite (> var2216 0) 1 (ite (< var2216 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (= var3223 0))) ; Negate: Cond: $b7 == 0  
(define-const var580 var3127 var3127-STRING_LENENC) ; Statement: $r32 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC> 
(define-const var3434 var3127 var3127-STRING_EOF) ; Statement: $r31 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var2628 (Array Int Int) (readBytes/890815292 var1012 var3434)) ; Statement: $r33 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType)>($r31) 
(assert true)
;(assert (writeBytes/771844277 var1157!6 var580 var2628)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r32, $r33) 

(declare-const var1157!7 var540)
(declare-const var580!1 var3127)
(declare-const var2628!1 (Array Int Int))
 ; Statement: goto [?= $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>] 
(assert true) ; Non Conditional
(define-const var3739 Bool (useConnectWithDb/-714190539 var3498)) ; Statement: $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert (= (ite var3739 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1882 var3127 var3127-STRING_TERM) ; Statement: $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var912 (Array Int Int) (var1762_getBytes/-813242536 var1021 var450)) ; Statement: $r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3) 
(assert true)
;(assert (writeBytes/771844277 var1157!7 var1882 var912)) ; Statement: virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22) 

(declare-const var1157!8 var540)
(declare-const var1882!1 var3127)
(declare-const var912!1 (Array Int Int))
(define-const var810 Int (bv2nat (bvand ((_ int2bv 64) var2060!1) ((_ int2bv 64) 1048576)))) ; Statement: $l10 = l0 & 1048576L 
(define-const var2307 Int (ite (> var810 0) 1 (ite (< var810 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto return $r7 
(assert (= var2307 0)) ; Cond: $b11 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1635_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var1635_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var2619_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var2619_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), var540-init=([], com.mysql.cj.protocol.a.NativePacketPayload), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), cast-from-Int-to-Int=([int], long), arr-Int-init=([], byte[]), writeBytes/-546957861=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, byte[]], void), var1762_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), readBytes/890815292=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType], byte[])}
; {var3020=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var3498=r4, var1635=com.mysql.cj.protocol.ServerSession, var3618=r0, var1021=r20, var2268=null_type, var540=com.mysql.cj.protocol.a.NativePacketPayload, var1012=r16, var2060=l0, var2619=com.mysql.cj.CharsetSettings, var1664=$r1, var566=i1, var1036=$r2, var450=r3, var2026=$r5, var2041=$i13, var1157=$r7, var545=$i2, var2539=$i3, var2062=$z0, var468=$i14, var2930=$i4, var595=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var804=$r8, var3397=$r9, var2812=16777215L, var3203=$r10, var2941=$l5, var274=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var3186=$r12, var1403=$r11, var3127=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var3396=$r14, var2757=$r13, var1762=com.mysql.cj.util.StringUtils, var3936=$r15, var2216=$l6, var3223=$b7, var580=$r32, var3434=$r31, var2628=$r33, var3739=$z1, var1882=$r21, var912=$r22, var810=$l10, var2307=$b11}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var3020, r4=var3498, com.mysql.cj.protocol.ServerSession=var1635, r0=var3618, r20=var1021, null_type=var2268, com.mysql.cj.protocol.a.NativePacketPayload=var540, r16=var1012, l0=var2060, com.mysql.cj.CharsetSettings=var2619, $r1=var1664, i1=var566, $r2=var1036, r3=var450, $r5=var2026, $i13=var2041, $r7=var1157, $i2=var545, $i3=var2539, $z0=var2062, $i14=var468, $i4=var2930, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var595, $r8=var804, $r9=var3397, 16777215L=var2812, $r10=var3203, $l5=var2941, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var274, $r12=var3186, $r11=var1403, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var3127, $r14=var3396, $r13=var2757, com.mysql.cj.util.StringUtils=var1762, $r15=var3936, $l6=var2216, $b7=var3223, $r32=var580, $r31=var3434, $r33=var2628, $z1=var3739, $r21=var1882, $r22=var912, $l10=var810, $b11=var2307}
;seq 
;cnt {}
;stmts r4 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r20 := @parameter1: java.lang.String;	r16 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r5 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	if $r5 != null goto $r6 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i13 = 0;	goto [?= $r7 = new com.mysql.cj.protocol.a.NativePacketPayload];	$r7 = new com.mysql.cj.protocol.a.NativePacketPayload;	$i2 = 3 * $i13;	$i3 = 88 + $i2;	$z0 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i14 = 0;	$i14 = 0;	$i4 = $i3 + $i14;	specialinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i4);	$r8 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r8, l0);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT4>;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r9, 16777215L);	$r10 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l5 = (long) i1;	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r10, $l5);	$r12 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r11 = newarray (byte)[23];	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,byte[])>($r12, $r11);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r13 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r15 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r13, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r14, $r15);	$l6 = l0 & 2097152L;	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r17 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r32 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC>;	$r31 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r33 = virtualinvoke r16.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType)>($r31);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r32, $r33);	goto [?= $z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>];	$z1 = r4.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r21 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r22 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r20, r3);	virtualinvoke $r7.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r21, $r22);	$l10 = l0 & 1048576L;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto return $r7;	return $r7
;block_num 9