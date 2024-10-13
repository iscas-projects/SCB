(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2473 0)
(declare-sort var3046 0)
(declare-sort var337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/391730618 (var2473) Int)
(declare-fun payloadLength/391730618 (var2473) Int)
(declare-fun readBytes/-1056954471 (var2473 var3046 Int) (Array Int Int))
(declare-fun var337_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-const null-var2473 var2473)
(declare-const var3046-STRING_FIXED var3046)
(declare-const var3945 var2473) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3945 null-var2473)))
(define-const var342 Int (position/391730618 var3945)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
(define-const var3881 Int (payloadLength/391730618 var3945)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
 ; Statement: if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert (> var342 var3881)) ; Cond: $i1 > $i0 
(define-const var3071 Int (payloadLength/391730618 var3945)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert true) ; Non Conditional
(define-const var624 Int var3071) ; Statement: i2 = $i3 
 ; Statement: if $i3 >= 1024 goto $i4 = 1024 
(assert (>= var3071 1024)) ; Cond: $i3 >= 1024 
(define-const var3508 Int 1024) ; Statement: $i4 = 1024 
(assert true) ; Non Conditional
(declare-const var3945!1 var2473)
(assert (not (= var3945!1 null-var2473)))
(assert (= (position/391730618 var3945!1) 0)) ; Statement: r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0 
(define-const var2863 var3046 var3046-STRING_FIXED) ; Statement: $r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(assert true)
(define-const var2515 (Array Int Int) (readBytes/-1056954471 var3945!1 var2863 var3508)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4) 
(define-const var498 String (var337_dumpAsHex/-862480028 var2515 var3508)) ; Statement: $r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4) 
 ; Statement: if $i4 >= i2 goto return $r7 
(assert (>= var3508 var624)) ; Cond: $i4 >= i2 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {position/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), payloadLength/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), readBytes/-1056954471=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, int], byte[]), var337_dumpAsHex/-862480028=([byte[], int], java.lang.String)}
; {var2473=com.mysql.cj.protocol.a.NativePacketPayload, var3945=r0, var342=$i1, var3881=$i0, var3071=$i3, var624=i2, var3508=$i4, var3046=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var2863=$r1, var2515=$r2, var337=com.mysql.cj.util.StringUtils, var498=$r7}
; {com.mysql.cj.protocol.a.NativePacketPayload=var2473, r0=var3945, $i1=var342, $i0=var3881, $i3=var3071, i2=var624, $i4=var3508, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var3046, $r1=var2863, $r2=var2515, com.mysql.cj.util.StringUtils=var337, $r7=var498}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload;	$i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	$i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	$i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	i2 = $i3;	if $i3 >= 1024 goto $i4 = 1024;	$i4 = 1024;	r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0;	$r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4);	$r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4);	if $i4 >= i2 goto return $r7;	return $r7
;block_num 6