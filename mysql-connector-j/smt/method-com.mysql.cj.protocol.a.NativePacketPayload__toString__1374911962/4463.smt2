(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2003 0)
(declare-sort var585 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/391730618 (var2003) Int)
(declare-fun payloadLength/391730618 (var2003) Int)
(declare-fun readBytes/-1056954471 (var2003 var585 Int) (Array Int Int))
(declare-fun var1783_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2003 var2003)
(declare-const var585-STRING_FIXED var585)
(declare-const var3434 var2003) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3434 null-var2003)))
(define-const var74 Int (position/391730618 var3434)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
(define-const var559 Int (payloadLength/391730618 var3434)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
 ; Statement: if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert (> var74 var559)) ; Cond: $i1 > $i0 
(define-const var2528 Int (payloadLength/391730618 var3434)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert true) ; Non Conditional
(define-const var2918 Int var2528) ; Statement: i2 = $i3 
 ; Statement: if $i3 >= 1024 goto $i4 = 1024 
(assert (not (>= var2528 1024))) ; Negate: Cond: $i3 >= 1024  
(define-const var2942 Int var2528) ; Statement: $i4 = $i3 
 ; Statement: goto [?= r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0] 
(assert true) ; Non Conditional
(declare-const var3434!1 var2003)
(assert (not (= var3434!1 null-var2003)))
(assert (= (position/391730618 var3434!1) 0)) ; Statement: r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0 
(define-const var263 var585 var585-STRING_FIXED) ; Statement: $r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(assert true)
(define-const var1859 (Array Int Int) (readBytes/-1056954471 var3434!1 var263 var2942)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4) 
(define-const var3223 String (var1783_dumpAsHex/-862480028 var1859 var2942)) ; Statement: $r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4) 
 ; Statement: if $i4 >= i2 goto return $r7 
(assert (not (>= var2942 var2918))) ; Negate: Cond: $i4 >= i2  
(define-const var184 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var184)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var184!1 String)
(assert (= var184!1 ""))
(assert true)
(define-const var2949 String (append/672562846 var184!1 var3223)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var184!2 String)
(assert (= var184!2 (str.++ var184!1 var3223)))
(assert true)
(define-const var1027 String (append/672562846 var2949 " ....(packet exceeds max. dump length)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ....(packet exceeds max. dump length)") 
(declare-const var2949!1 String)
(assert (= var2949!1 (str.++ var2949 " ....(packet exceeds max. dump length)")))
(assert true)
(define-const var2477 String (toString/-2075883882 var1027)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {position/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), payloadLength/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), readBytes/-1056954471=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, int], byte[]), var1783_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2003=com.mysql.cj.protocol.a.NativePacketPayload, var3434=r0, var74=$i1, var559=$i0, var2528=$i3, var2918=i2, var2942=$i4, var585=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var263=$r1, var1859=$r2, var1783=com.mysql.cj.util.StringUtils, var3223=$r7, var184=$r3, var2949=$r4, var1027=$r5, var2477=$r6}
; {com.mysql.cj.protocol.a.NativePacketPayload=var2003, r0=var3434, $i1=var74, $i0=var559, $i3=var2528, i2=var2918, $i4=var2942, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var585, $r1=var263, $r2=var1859, com.mysql.cj.util.StringUtils=var1783, $r7=var3223, $r3=var184, $r4=var2949, $r5=var1027, $r6=var2477}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload;	$i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	$i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	$i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	i2 = $i3;	if $i3 >= 1024 goto $i4 = 1024;	$i4 = $i3;	goto [?= r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0];	r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0;	$r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4);	$r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4);	if $i4 >= i2 goto return $r7;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ....(packet exceeds max. dump length)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 6