(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2040 0)
(declare-sort var974 0)
(declare-sort var2639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/391730618 (var2040) Int)
(declare-fun payloadLength/391730618 (var2040) Int)
(declare-fun readBytes/-1056954471 (var2040 var974 Int) (Array Int Int))
(declare-fun var2639_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2040 var2040)
(declare-const var974-STRING_FIXED var974)
(declare-const var812 var2040) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var812 null-var2040)))
(define-const var1101 Int (position/391730618 var812)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
(define-const var3866 Int (payloadLength/391730618 var812)) ; Statement: $i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
 ; Statement: if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength> 
(assert (not (> var1101 var3866))) ; Negate: Cond: $i1 > $i0  
(define-const var3735 Int (position/391730618 var812)) ; Statement: $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> 
 ; Statement: goto [?= i2 = $i3] 
(assert true) ; Non Conditional
(define-const var210 Int var3735) ; Statement: i2 = $i3 
 ; Statement: if $i3 >= 1024 goto $i4 = 1024 
(assert (>= var3735 1024)) ; Cond: $i3 >= 1024 
(define-const var3939 Int 1024) ; Statement: $i4 = 1024 
(assert true) ; Non Conditional
(declare-const var812!1 var2040)
(assert (not (= var812!1 null-var2040)))
(assert (= (position/391730618 var812!1) 0)) ; Statement: r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0 
(define-const var2152 var974 var974-STRING_FIXED) ; Statement: $r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED> 
(assert true)
(define-const var3567 (Array Int Int) (readBytes/-1056954471 var812!1 var2152 var3939)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4) 
(define-const var40 String (var2639_dumpAsHex/-862480028 var3567 var3939)) ; Statement: $r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4) 
 ; Statement: if $i4 >= i2 goto return $r7 
(assert (not (>= var3939 var210))) ; Negate: Cond: $i4 >= i2  
(define-const var2471 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2471)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2471!1 String)
(assert (= var2471!1 ""))
(assert true)
(define-const var2787 String (append/672562846 var2471!1 var40)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2471!2 String)
(assert (= var2471!2 (str.++ var2471!1 var40)))
(assert true)
(define-const var3075 String (append/672562846 var2787 " ....(packet exceeds max. dump length)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ....(packet exceeds max. dump length)") 
(declare-const var2787!1 String)
(assert (= var2787!1 (str.++ var2787 " ....(packet exceeds max. dump length)")))
(assert true)
(define-const var1873 String (toString/-2075883882 var3075)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {position/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), payloadLength/391730618=([com.mysql.cj.protocol.a.NativePacketPayload], int), readBytes/-1056954471=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, int], byte[]), var2639_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2040=com.mysql.cj.protocol.a.NativePacketPayload, var812=r0, var1101=$i1, var3866=$i0, var3735=$i3, var210=i2, var3939=$i4, var974=com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType, var2152=$r1, var3567=$r2, var2639=com.mysql.cj.util.StringUtils, var40=$r7, var2471=$r3, var2787=$r4, var3075=$r5, var1873=$r6}
; {com.mysql.cj.protocol.a.NativePacketPayload=var2040, r0=var812, $i1=var1101, $i0=var3866, $i3=var3735, i2=var210, $i4=var3939, com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType=var974, $r1=var2152, $r2=var3567, com.mysql.cj.util.StringUtils=var2639, $r7=var40, $r3=var2471, $r4=var2787, $r5=var3075, $r6=var1873}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativePacketPayload;	$i1 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	$i0 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	if $i1 > $i0 goto $i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int payloadLength>;	$i3 = r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position>;	goto [?= i2 = $i3];	i2 = $i3;	if $i3 >= 1024 goto $i4 = 1024;	$i4 = 1024;	r0.<com.mysql.cj.protocol.a.NativePacketPayload: int position> = 0;	$r1 = <com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType: com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType STRING_FIXED>;	$r2 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] readBytes(com.mysql.cj.protocol.a.NativeConstants$StringLengthDataType,int)>($r1, $i4);	$r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r2, $i4);	if $i4 >= i2 goto return $r7;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ....(packet exceeds max. dump length)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 6