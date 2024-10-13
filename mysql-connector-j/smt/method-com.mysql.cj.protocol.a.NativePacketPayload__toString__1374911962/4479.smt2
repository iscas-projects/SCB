(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3220 0)
(declare-sort var834 0)
(declare-sort var1022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/391730618 (var3220) Int)
(declare-fun payloadLength/391730618 (var3220) Int)
(declare-fun readBytes/-1056954471 (var3220 var834 Int) (Array Int Int))
(declare-fun var1022_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-const null-var3220 var3220)
(declare-const var834-STRING_FIXED var834)
(declare-const var1879 var3220) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var1879 null-var3220)))
(define-const var1546 Int (position/391730618 var1879)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
(define-const var1556 Int (payloadLength/391730618 var1879)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
 ; Statement: if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert (> var1546 var1556)) ; Cond: $i1 > $i0 
(define-const var513 Int (payloadLength/391730618 var1879)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert true) ; Non Conditional
(define-const var3820 Int var513) ; Statement: i2 = $i3 
 ; Statement: if $i3 >= 1024 goto $i4 = 1024 
(assert (not (>= var513 1024))) ; Negate: Cond: $i3 >= 1024  
(define-const var1187 Int var513) ; Statement: $i4 = $i3 
 ; Statement: goto [?= r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0] 
(assert true) ; Non Conditional
(declare-const var1879!1 var3220)
(assert (not (= var1879!1 null-var3220)))
(assert (= (position/391730618 var1879!1) 0)) ; Statement: r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0 
(define-const var758 var834 var834-STRING_FIXED) ; Statement: $r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(assert true)
(define-const var707 (Array Int Int) (readBytes/-1056954471 var1879!1 var758 var1187)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4) 
(define-const var124 String (var1022_dumpAsHex/-862480028 var707 var1187)) ; Statement: $r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4) 
 ; Statement: if $i4 >= i2 goto return $r7 
(assert (>= var1187 var3820)) ; Cond: $i4 >= i2 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {position/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), payloadLength/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), readBytes/-1056954471=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, int], byte[]), var1022_dumpAsHex/-862480028=([byte[], int], java.lang.String)}
; {var3220=com.mysql.cj.protocol.a.NativePacketPayload, var1879=r0, var1546=$i1, var1556=$i0, var513=$i3, var3820=i2, var1187=$i4, var834=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var758=$r1, var707=$r2, var1022=com.mysql.cj.util.StringUtils, var124=$r7}
; {com.mysql.cj.protocol.a.NativePacketPayload=var3220, r0=var1879, $i1=var1546, $i0=var1556, $i3=var513, i2=var3820, $i4=var1187, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var834, $r1=var758, $r2=var707, com.mysql.cj.util.StringUtils=var1022, $r7=var124}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload;	$i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	$i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	$i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	i2 = $i3;	if $i3 >= 1024 goto $i4 = 1024;	$i4 = $i3;	goto [?= r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0];	r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0;	$r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4);	$r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4);	if $i4 >= i2 goto return $r7;	return $r7
;block_num 6