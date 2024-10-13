(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2321 0)
(declare-sort var339 0)
(declare-sort var1135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/391730618 (var2321) Int)
(declare-fun payloadLength/391730618 (var2321) Int)
(declare-fun readBytes/-1056954471 (var2321 var339 Int) (Array Int Int))
(declare-fun var1135_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-const null-var2321 var2321)
(declare-const var339-STRING_FIXED var339)
(declare-const var3219 var2321) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3219 null-var2321)))
(define-const var695 Int (position/391730618 var3219)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
(define-const var1773 Int (payloadLength/391730618 var3219)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
 ; Statement: if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert (not (> var695 var1773))) ; Negate: Cond: $i1 > $i0  
(define-const var2477 Int (position/391730618 var3219)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
 ; Statement: goto [?= i2 = $i3] 
(assert true) ; Non Conditional
(define-const var570 Int var2477) ; Statement: i2 = $i3 
 ; Statement: if $i3 >= 1024 goto $i4 = 1024 
(assert (>= var2477 1024)) ; Cond: $i3 >= 1024 
(define-const var3540 Int 1024) ; Statement: $i4 = 1024 
(assert true) ; Non Conditional
(declare-const var3219!1 var2321)
(assert (not (= var3219!1 null-var2321)))
(assert (= (position/391730618 var3219!1) 0)) ; Statement: r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0 
(define-const var3203 var339 var339-STRING_FIXED) ; Statement: $r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(assert true)
(define-const var392 (Array Int Int) (readBytes/-1056954471 var3219!1 var3203 var3540)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4) 
(define-const var388 String (var1135_dumpAsHex/-862480028 var392 var3540)) ; Statement: $r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4) 
 ; Statement: if $i4 >= i2 goto return $r7 
(assert (>= var3540 var570)) ; Cond: $i4 >= i2 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {position/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), payloadLength/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), readBytes/-1056954471=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, int], byte[]), var1135_dumpAsHex/-862480028=([byte[], int], java.lang.String)}
; {var2321=com.mysql.cj.protocol.a.NativePacketPayload, var3219=r0, var695=$i1, var1773=$i0, var2477=$i3, var570=i2, var3540=$i4, var339=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var3203=$r1, var392=$r2, var1135=com.mysql.cj.util.StringUtils, var388=$r7}
; {com.mysql.cj.protocol.a.NativePacketPayload=var2321, r0=var3219, $i1=var695, $i0=var1773, $i3=var2477, i2=var570, $i4=var3540, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var339, $r1=var3203, $r2=var392, com.mysql.cj.util.StringUtils=var1135, $r7=var388}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload;	$i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	$i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	$i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	goto [?= i2 = $i3];	i2 = $i3;	if $i3 >= 1024 goto $i4 = 1024;	$i4 = 1024;	r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0;	$r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4);	$r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4);	if $i4 >= i2 goto return $r7;	return $r7
;block_num 6