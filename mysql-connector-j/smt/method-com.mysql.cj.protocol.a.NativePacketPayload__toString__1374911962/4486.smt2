(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2306 0)
(declare-sort var2570 0)
(declare-sort var3621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/391730618 (var2306) Int)
(declare-fun payloadLength/391730618 (var2306) Int)
(declare-fun readBytes/-1056954471 (var2306 var2570 Int) (Array Int Int))
(declare-fun var3621_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2306 var2306)
(declare-const var2570-STRING_FIXED var2570)
(declare-const var2052 var2306) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var2052 null-var2306)))
(define-const var2489 Int (position/391730618 var2052)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
(define-const var2674 Int (payloadLength/391730618 var2052)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
 ; Statement: if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert (> var2489 var2674)) ; Cond: $i1 > $i0 
(define-const var263 Int (payloadLength/391730618 var2052)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert true) ; Non Conditional
(define-const var188 Int var263) ; Statement: i2 = $i3 
 ; Statement: if $i3 >= 1024 goto $i4 = 1024 
(assert (>= var263 1024)) ; Cond: $i3 >= 1024 
(define-const var2730 Int 1024) ; Statement: $i4 = 1024 
(assert true) ; Non Conditional
(declare-const var2052!1 var2306)
(assert (not (= var2052!1 null-var2306)))
(assert (= (position/391730618 var2052!1) 0)) ; Statement: r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0 
(define-const var1469 var2570 var2570-STRING_FIXED) ; Statement: $r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(assert true)
(define-const var172 (Array Int Int) (readBytes/-1056954471 var2052!1 var1469 var2730)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4) 
(define-const var2607 String (var3621_dumpAsHex/-862480028 var172 var2730)) ; Statement: $r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4) 
 ; Statement: if $i4 >= i2 goto return $r7 
(assert (not (>= var2730 var188))) ; Negate: Cond: $i4 >= i2  
(define-const var3014 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3014)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3014!1 String)
(assert (= var3014!1 ""))
(assert true)
(define-const var3015 String (append/672562846 var3014!1 var2607)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3014!2 String)
(assert (= var3014!2 (str.++ var3014!1 var2607)))
(assert true)
(define-const var363 String (append/672562846 var3015 " ....(packet exceeds max. dump length)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ....(packet exceeds max. dump length)") 
(declare-const var3015!1 String)
(assert (= var3015!1 (str.++ var3015 " ....(packet exceeds max. dump length)")))
(assert true)
(define-const var2169 String (toString/-2075883882 var363)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {position/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), payloadLength/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), readBytes/-1056954471=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, int], byte[]), var3621_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2306=com.mysql.cj.protocol.a.NativePacketPayload, var2052=r0, var2489=$i1, var2674=$i0, var263=$i3, var188=i2, var2730=$i4, var2570=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var1469=$r1, var172=$r2, var3621=com.mysql.cj.util.StringUtils, var2607=$r7, var3014=$r3, var3015=$r4, var363=$r5, var2169=$r6}
; {com.mysql.cj.protocol.a.NativePacketPayload=var2306, r0=var2052, $i1=var2489, $i0=var2674, $i3=var263, i2=var188, $i4=var2730, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var2570, $r1=var1469, $r2=var172, com.mysql.cj.util.StringUtils=var3621, $r7=var2607, $r3=var3014, $r4=var3015, $r5=var363, $r6=var2169}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload;	$i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	$i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	$i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	i2 = $i3;	if $i3 >= 1024 goto $i4 = 1024;	$i4 = 1024;	r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0;	$r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4);	$r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4);	if $i4 >= i2 goto return $r7;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ....(packet exceeds max. dump length)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 6