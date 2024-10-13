(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2136 0)
(declare-sort var1093 0)
(declare-sort var1766 0)
(declare-sort var3535 0)
(declare-sort var2617 0)
(declare-sort var756 0)
(declare-sort var3934 0)
(declare-sort var242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1093_getClientParam/-1269466014 (var1093) Int)
(declare-fun var1093_getCharsetSettings/-848071942 (var1093) var2617)
(declare-fun var2617_configurePreHandshake/1531994779 (var2617 Bool) Int)
(declare-fun var2617_getPasswordCharacterEncoding/-861467430 (var2617) String)
(declare-fun var3535-init () var3535)
(declare-fun username/-714190539 (var2136) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun useConnectWithDb/-714190539 (var2136) Bool)
(declare-fun database/-714190539 (var2136) String)
(declare-fun <init>/233406230 (var3535 Int) void)
(declare-fun writeInteger/-383739395 (var3535 var756 Int) void)
(declare-fun var242_getBytes/-813242536 (String String) (Array Int Int))
(declare-fun writeBytes/771844277 (var3535 var3934 (Array Int Int)) void)
(declare-fun getPayloadLength/2056317546 (var3535) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getByteBuffer/-505169391 (var3535) (Array Int Int))
(declare-fun writeBytes/-285501893 (var3535 var3934 (Array Int Int) Int Int) void)
(declare-const null-var2136 var2136)
(declare-const null-var1093 var1093)
(declare-const null-String String)
(declare-const null-var3535 var3535)
(declare-const var756-INT1 var756)
(declare-const var3934-STRING_TERM var3934)
(declare-const var3934-STRING_EOF var3934)
(declare-const var1807 var2136) ; Statement: r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var1807 null-var2136)))
(declare-const var1754 var1093) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.ServerSession 
(assert (not (= var1754 null-var1093)))
(declare-const var1149 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var1149 null-String)))
(declare-const var178 var3535) ; Statement: r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var178 null-var3535)))
(define-const var1317 Int (var1093_getClientParam/-1269466014 var1754)) ; Statement: l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>() 
(define-const var1377 var2617 (var1093_getCharsetSettings/-848071942 var1754)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var3502 Int (var2617_configurePreHandshake/1531994779 var1377 (ite (= 1 0) true false))) ; Statement: i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0) 
(define-const var898 var2617 (var1093_getCharsetSettings/-848071942 var1754)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var80 String (var2617_getPasswordCharacterEncoding/-861467430 var898)) ; Statement: r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var2411 var3535 var3535-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var3347 String (username/-714190539 var1807)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(assert true)
(define-const var334 Int (length/-134980193 var3347)) ; Statement: $i2 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var989 Int (* 3 var334)) ; Statement: $i3 = 3 * $i2 
(define-const var3898 Int (+ 88 var989)) ; Statement: $i4 = 88 + $i3 
(define-const var3939 Bool (useConnectWithDb/-714190539 var1807)) ; Statement: $z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z0 == 0 goto $i15 = 1 
(assert (not (= (ite var3939 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3266 String (database/-714190539 var1807)) ; Statement: $r30 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database> 
(assert true)
(define-const var1910 Int (length/-134980193 var3266)) ; Statement: $i14 = virtualinvoke $r30.<java.lang.String: int length()>() 
(define-const var1900 Int (* 3 var1910)) ; Statement: $i15 = 3 * $i14 
 ; Statement: goto [?= $i5 = $i4 + $i15] 
(assert true) ; Non Conditional
(define-const var8 Int (+ var3898 var1900)) ; Statement: $i5 = $i4 + $i15 
(define-const var28 Int (+ var8 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (<init>/233406230 var2411 var28)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6) 

(declare-const var2411!1 var3535)
(declare-const var28!1 Int)
(define-const var3826 var756 var756-INT1) ; Statement: $r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var2411!1 var3826 17)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L) 

(declare-const var2411!2 var3535)
(declare-const var3826!1 var756)
(declare-const var626 Int)
(define-const var3860 var3934 var3934-STRING_TERM) ; Statement: $r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var812 String (username/-714190539 var1807)) ; Statement: $r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username> 
(define-const var3823 (Array Int Int) (var242_getBytes/-813242536 var812 var80)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3) 
(assert true)
;(assert (writeBytes/771844277 var2411!2 var3860 var3823)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10) 

(declare-const var2411!3 var3535)
(declare-const var3860!1 var3934)
(declare-const var3823!1 (Array Int Int))
(assert true)
(define-const var839 Int (getPayloadLength/2056317546 var178)) ; Statement: $i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
 ; Statement: if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (not (>= var839 256))) ; Negate: Cond: $i7 >= 256  
(define-const var2463 var756 var756-INT1) ; Statement: $r27 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
(define-const var1849 Int (getPayloadLength/2056317546 var178)) ; Statement: $i11 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(define-const var3237 Int (cast-from-Int-to-Int var1849)) ; Statement: $l12 = (long) $i11 
(assert true)
;(assert (writeInteger/-383739395 var2411!3 var2463 var3237)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r27, $l12) 

(declare-const var2411!4 var3535)
(declare-const var2463!1 var756)
(declare-const var3237!1 Int)
(define-const var341 var3934 var3934-STRING_EOF) ; Statement: $r28 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF> 
(assert true)
(define-const var1976 (Array Int Int) (getByteBuffer/-505169391 var178)) ; Statement: $r29 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(assert true)
(define-const var1728 Int (getPayloadLength/2056317546 var178)) ; Statement: $i13 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>() 
(assert true)
;(assert (writeBytes/-285501893 var2411!4 var341 var1976 0 var1728)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[],int,int)>($r28, $r29, 0, $i13) 

(declare-const var2411!5 var3535)
(declare-const var341!1 var3934)
(declare-const var1976!1 (Array Int Int))
(declare-const var1342 Int)
(declare-const var1728!1 Int)
 ; Statement: goto [?= $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>] 
(assert true) ; Non Conditional
(define-const var1102 Bool (useConnectWithDb/-714190539 var1807)) ; Statement: $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb> 
 ; Statement: if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert (= (ite var1102 1 0) 0)) ; Cond: $z1 == 0 
(define-const var31 var756 var756-INT1) ; Statement: $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var2411!5 var31 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r13, 0L) 

(declare-const var2411!6 var3535)
(declare-const var31!1 var756)
(declare-const var3483 Int)
(assert true) ; Non Conditional
(define-const var1104 var756 var756-INT1) ; Statement: $r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(define-const var3333 Int (cast-from-Int-to-Int var3502)) ; Statement: $l8 = (long) i1 
(assert true)
;(assert (writeInteger/-383739395 var2411!6 var1104 var3333)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8) 

(declare-const var2411!7 var3535)
(declare-const var1104!1 var756)
(declare-const var3333!1 Int)
(define-const var2850 var756 var756-INT1) ; Statement: $r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1> 
(assert true)
;(assert (writeInteger/-383739395 var2411!7 var2850 0)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L) 

(declare-const var2411!8 var3535)
(declare-const var2850!1 var756)
(declare-const var3483!1 Int)
(define-const var1129 var3934 var3934-STRING_TERM) ; Statement: $r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(define-const var1498 (Array Int Int) (var242_getBytes/-813242536 var1149 var80)) ; Statement: $r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3) 
(assert true)
;(assert (writeBytes/771844277 var2411!8 var1129 var1498)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18) 

(declare-const var2411!9 var3535)
(declare-const var1129!1 var3934)
(declare-const var1498!1 (Array Int Int))
(define-const var156 Int (bv2nat (bvand ((_ int2bv 64) var1317) ((_ int2bv 64) 1048576)))) ; Statement: $l9 = l0 & 1048576L 
(define-const var169 Int (ite (> var156 0) 1 (ite (< var156 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto return $r4 
(assert (= var169 0)) ; Cond: $b10 == 0 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1093_getClientParam/-1269466014=([com.mysql.cj.protocol.ServerSession], long), var1093_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var2617_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), var2617_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var3535-init=([], com.mysql.cj.protocol.a.NativePacketPayload), username/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), length/-134980193=([java.lang.String], int), useConnectWithDb/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), database/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var242_getBytes/-813242536=([java.lang.String, java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void), getPayloadLength/2056317546=([com.mysql.cj.protocol.a.NativePacketPayload], int), cast-from-Int-to-Int=([int], long), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), writeBytes/-285501893=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[], int, int], void)}
; {var2136=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var1807=r5, var1093=com.mysql.cj.protocol.ServerSession, var1754=r0, var1149=r16, var1766=null_type, var3535=com.mysql.cj.protocol.a.NativePacketPayload, var178=r11, var1317=l0, var2617=com.mysql.cj.CharsetSettings, var1377=$r1, var3502=i1, var898=$r2, var80=r3, var2411=$r4, var3347=$r6, var334=$i2, var989=$i3, var3898=$i4, var3939=$z0, var3266=$r30, var1910=$i14, var1900=$i15, var8=$i5, var28=$i6, var756=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var3826=$r7, var626=17L, var3934=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var3860=$r9, var812=$r8, var242=com.mysql.cj.util.StringUtils, var3823=$r10, var839=$i7, var2463=$r27, var1849=$i11, var3237=$l12, var341=$r28, var1976=$r29, var1728=$i13, var1342=0, var1102=$z1, var31=$r13, var3483=0L, var1104=$r14, var3333=$l8, var2850=$r15, var1129=$r17, var1498=$r18, var156=$l9, var169=$b10}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var2136, r5=var1807, com.mysql.cj.protocol.ServerSession=var1093, r0=var1754, r16=var1149, null_type=var1766, com.mysql.cj.protocol.a.NativePacketPayload=var3535, r11=var178, l0=var1317, com.mysql.cj.CharsetSettings=var2617, $r1=var1377, i1=var3502, $r2=var898, r3=var80, $r4=var2411, $r6=var3347, $i2=var334, $i3=var989, $i4=var3898, $z0=var3939, $r30=var3266, $i14=var1910, $i15=var1900, $i5=var8, $i6=var28, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var756, $r7=var3826, 17L=var626, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var3934, $r9=var3860, $r8=var812, com.mysql.cj.util.StringUtils=var242, $r10=var3823, $i7=var839, $r27=var2463, $i11=var1849, $l12=var3237, $r28=var341, $r29=var1976, $i13=var1728, 0=var1342, $z1=var1102, $r13=var31, 0L=var3483, $r14=var1104, $l8=var3333, $r15=var2850, $r17=var1129, $r18=var1498, $l9=var156, $b10=var169}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r5 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r0 := @parameter0: com.mysql.cj.protocol.ServerSession;	r16 := @parameter1: java.lang.String;	r11 := @parameter2: com.mysql.cj.protocol.a.NativePacketPayload;	l0 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: long getClientParam()>();	$r1 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	i1 = interfaceinvoke $r1.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(0);	$r2 = interfaceinvoke r0.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	r3 = interfaceinvoke $r2.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r6 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$i2 = virtualinvoke $r6.<java.lang.String: int length()>();	$i3 = 3 * $i2;	$i4 = 88 + $i3;	$z0 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z0 == 0 goto $i15 = 1;	$r30 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String database>;	$i14 = virtualinvoke $r30.<java.lang.String: int length()>();	$i15 = 3 * $i14;	goto [?= $i5 = $i4 + $i15];	$i5 = $i4 + $i15;	$i6 = $i5 + 1;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>($i6);	$r7 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r7, 17L);	$r9 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r8 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String username>;	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>($r8, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r9, $r10);	$i7 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	if $i7 >= 256 goto $r12 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r27 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$i11 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	$l12 = (long) $i11;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r27, $l12);	$r28 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_EOF>;	$r29 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	$i13 = virtualinvoke r11.<com.mysql.cj.protocol.a.NativePacketPayload: int getPayloadLength()>();	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[],int,int)>($r28, $r29, 0, $i13);	goto [?= $z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>];	$z1 = r5.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean useConnectWithDb>;	if $z1 == 0 goto $r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$r13 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r13, 0L);	$r14 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	$l8 = (long) i1;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r14, $l8);	$r15 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT1>;	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r15, 0L);	$r17 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r18 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r16, r3);	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r17, $r18);	$l9 = l0 & 1048576L;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto return $r4;	return $r4
;block_num 8