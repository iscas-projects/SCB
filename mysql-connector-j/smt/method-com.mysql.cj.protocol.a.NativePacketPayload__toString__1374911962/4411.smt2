(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1369 0)
(declare-sort var225 0)
(declare-sort var1189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/391730618 (var1369) Int)
(declare-fun payloadLength/391730618 (var1369) Int)
(declare-fun readBytes/-1056954471 (var1369 var225 Int) (Array Int Int))
(declare-fun var1189_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1369 var1369)
(declare-const var225-STRING_FIXED var225)
(declare-const var991 var1369) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var991 null-var1369)))
(define-const var2155 Int (position/391730618 var991)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
(define-const var978 Int (payloadLength/391730618 var991)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
 ; Statement: if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert (not (> var2155 var978))) ; Negate: Cond: $i1 > $i0  
(define-const var3252 Int (position/391730618 var991)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
 ; Statement: goto [?= i2 = $i3] 
(assert true) ; Non Conditional
(define-const var191 Int var3252) ; Statement: i2 = $i3 
 ; Statement: if $i3 >= 1024 goto $i4 = 1024 
(assert (not (>= var3252 1024))) ; Negate: Cond: $i3 >= 1024  
(define-const var998 Int var3252) ; Statement: $i4 = $i3 
 ; Statement: goto [?= r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0] 
(assert true) ; Non Conditional
(declare-const var991!1 var1369)
(assert (not (= var991!1 null-var1369)))
(assert (= (position/391730618 var991!1) 0)) ; Statement: r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0 
(define-const var1752 var225 var225-STRING_FIXED) ; Statement: $r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(assert true)
(define-const var3646 (Array Int Int) (readBytes/-1056954471 var991!1 var1752 var998)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4) 
(define-const var1619 String (var1189_dumpAsHex/-862480028 var3646 var998)) ; Statement: $r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4) 
 ; Statement: if $i4 >= i2 goto return $r7 
(assert (not (>= var998 var191))) ; Negate: Cond: $i4 >= i2  
(define-const var372 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var372)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var372!1 String)
(assert (= var372!1 ""))
(assert true)
(define-const var3519 String (append/672562846 var372!1 var1619)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var372!2 String)
(assert (= var372!2 (str.++ var372!1 var1619)))
(assert true)
(define-const var2986 String (append/672562846 var3519 " ....(packet exceeds max. dump length)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ....(packet exceeds max. dump length)") 
(declare-const var3519!1 String)
(assert (= var3519!1 (str.++ var3519 " ....(packet exceeds max. dump length)")))
(assert true)
(define-const var2278 String (toString/-2075883882 var2986)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {position/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), payloadLength/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), readBytes/-1056954471=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, int], byte[]), var1189_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1369=com.mysql.cj.protocol.a.NativePacketPayload, var991=r0, var2155=$i1, var978=$i0, var3252=$i3, var191=i2, var998=$i4, var225=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var1752=$r1, var3646=$r2, var1189=com.mysql.cj.util.StringUtils, var1619=$r7, var372=$r3, var3519=$r4, var2986=$r5, var2278=$r6}
; {com.mysql.cj.protocol.a.NativePacketPayload=var1369, r0=var991, $i1=var2155, $i0=var978, $i3=var3252, i2=var191, $i4=var998, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var225, $r1=var1752, $r2=var3646, com.mysql.cj.util.StringUtils=var1189, $r7=var1619, $r3=var372, $r4=var3519, $r5=var2986, $r6=var2278}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload;	$i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	$i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	$i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	goto [?= i2 = $i3];	i2 = $i3;	if $i3 >= 1024 goto $i4 = 1024;	$i4 = $i3;	goto [?= r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0];	r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0;	$r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4);	$r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4);	if $i4 >= i2 goto return $r7;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ....(packet exceeds max. dump length)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 6