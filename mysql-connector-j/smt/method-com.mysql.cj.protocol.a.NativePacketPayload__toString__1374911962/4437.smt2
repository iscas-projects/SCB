(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1866 0)
(declare-sort var2807 0)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/391730618 (var1866) Int)
(declare-fun payloadLength/391730618 (var1866) Int)
(declare-fun readBytes/-1056954471 (var1866 var2807 Int) (Array Int Int))
(declare-fun var1441_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-const null-var1866 var1866)
(declare-const var2807-STRING_FIXED var2807)
(declare-const var3464 var1866) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3464 null-var1866)))
(define-const var1466 Int (position/391730618 var3464)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
(define-const var2154 Int (payloadLength/391730618 var3464)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
 ; Statement: if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert (not (> var1466 var2154))) ; Negate: Cond: $i1 > $i0  
(define-const var3431 Int (position/391730618 var3464)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
 ; Statement: goto [?= i2 = $i3] 
(assert true) ; Non Conditional
(define-const var3369 Int var3431) ; Statement: i2 = $i3 
 ; Statement: if $i3 >= 1024 goto $i4 = 1024 
(assert (not (>= var3431 1024))) ; Negate: Cond: $i3 >= 1024  
(define-const var3670 Int var3431) ; Statement: $i4 = $i3 
 ; Statement: goto [?= r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0] 
(assert true) ; Non Conditional
(declare-const var3464!1 var1866)
(assert (not (= var3464!1 null-var1866)))
(assert (= (position/391730618 var3464!1) 0)) ; Statement: r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0 
(define-const var3009 var2807 var2807-STRING_FIXED) ; Statement: $r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(assert true)
(define-const var617 (Array Int Int) (readBytes/-1056954471 var3464!1 var3009 var3670)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4) 
(define-const var3517 String (var1441_dumpAsHex/-862480028 var617 var3670)) ; Statement: $r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4) 
 ; Statement: if $i4 >= i2 goto return $r7 
(assert (>= var3670 var3369)) ; Cond: $i4 >= i2 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {position/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), payloadLength/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), readBytes/-1056954471=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, int], byte[]), var1441_dumpAsHex/-862480028=([byte[], int], java.lang.String)}
; {var1866=com.mysql.cj.protocol.a.NativePacketPayload, var3464=r0, var1466=$i1, var2154=$i0, var3431=$i3, var3369=i2, var3670=$i4, var2807=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var3009=$r1, var617=$r2, var1441=com.mysql.cj.util.StringUtils, var3517=$r7}
; {com.mysql.cj.protocol.a.NativePacketPayload=var1866, r0=var3464, $i1=var1466, $i0=var2154, $i3=var3431, i2=var3369, $i4=var3670, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var2807, $r1=var3009, $r2=var617, com.mysql.cj.util.StringUtils=var1441, $r7=var3517}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload;	$i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	$i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	$i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	goto [?= i2 = $i3];	i2 = $i3;	if $i3 >= 1024 goto $i4 = 1024;	$i4 = $i3;	goto [?= r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0];	r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0;	$r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4);	$r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4);	if $i4 >= i2 goto return $r7;	return $r7
;block_num 6