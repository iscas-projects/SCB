(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var796 0)
(declare-sort var2512 0)
(declare-sort var1352 0)
(declare-sort var1018 0)
(declare-sort var2888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWidth/-156802475 (var796) Int)
(declare-fun getHeight/-2127535592 (var796) Int)
(declare-fun foreColor/-52512001 (var2512) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun var2888_rgbToAnsi8BitElement/1675685867 (Int var1352) var1018)
(declare-fun backColor/-52512001 (var2512) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var796 var796)
(declare-const null-var2512 var2512)
(declare-const null-Int Int)
(declare-const var1352-FORE var1352)
(declare-const null-var1018 var1018)
(declare-const var2618 var796) ; Statement: r0 := @parameter0: com.google.zxing.common.BitMatrix 
(assert (not (= var2618 null-var796)))
(declare-const var2305 var2512) ; Statement: r1 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var2305 null-var2512)))
(assert true)
(define-const var514 Int (getWidth/-156802475 var2618)) ; Statement: i0 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getWidth()>() 
(assert true)
(define-const var3462 Int (getHeight/-2127535592 var2618)) ; Statement: i1 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getHeight()>() 
(define-const var827 Int (foreColor/-52512001 var2305)) ; Statement: $r2 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
 ; Statement: if $r2 != null goto $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
(assert (not (= var827 null-Int))) ; Cond: $r2 != null 
(define-const var2063 Int (foreColor/-52512001 var2305)) ; Statement: $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
(assert true)
(define-const var3501 Int (intValue/-1815674922 var2063)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.Integer: int intValue()>() 
(define-const var3475 var1352 var1352-FORE) ; Statement: $r4 = <cn.hutool.core.lang.ansi.ForeOrBack: cn.hutool.core.lang.ansi.ForeOrBack FORE> 
(define-const var1580 var1018 (var2888_rgbToAnsi8BitElement/1675685867 var3501 var3475)) ; Statement: $r16 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: cn.hutool.core.lang.ansi.AnsiElement rgbToAnsi8BitElement(int,cn.hutool.core.lang.ansi.ForeOrBack)>($i2, $r4) 
(assert true) ; Non Conditional
(define-const var134 var1018 var1580) ; Statement: r5 = $r16 
(define-const var2103 Int (backColor/-52512001 var2305)) ; Statement: $r6 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
 ; Statement: if $r6 != null goto $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
(assert (not (not (= var2103 null-Int)))) ; Negate: Cond: $r6 != null  
(define-const var2187 var1018 null-var1018) ; Statement: $r17 = null 
 ; Statement: goto [?= r9 = $r17] 
(assert true) ; Non Conditional
(define-const var2875 var1018 var2187) ; Statement: r9 = $r17 
(define-const var3722 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3722)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3722!1 String)
(assert (= var3722!1 ""))
(define-const var712 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 > i1 goto $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (> var712 var3462)) ; Cond: i6 > i1 
(assert true)
(define-const var2615 String (toString/-2075883882 var3722!1)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getWidth/-156802475=([com.google.zxing.common.BitMatrix], int), getHeight/-2127535592=([com.google.zxing.common.BitMatrix], int), foreColor/-52512001=([cn.hutool.extra.qrcode.QrConfig], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), var2888_rgbToAnsi8BitElement/1675685867=([int, cn.hutool.core.lang.ansi.ForeOrBack], cn.hutool.core.lang.ansi.AnsiElement), backColor/-52512001=([cn.hutool.extra.qrcode.QrConfig], java.lang.Integer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var796=com.google.zxing.common.BitMatrix, var2618=r0, var2512=cn.hutool.extra.qrcode.QrConfig, var2305=r1, var514=i0, var3462=i1, var827=$r2, var2063=$r3, var3501=$i2, var1352=cn.hutool.core.lang.ansi.ForeOrBack, var3475=$r4, var1018=cn.hutool.core.lang.ansi.AnsiElement, var2888=cn.hutool.extra.qrcode.QrCodeUtil, var1580=$r16, var134=r5, var2103=$r6, var2187=$r17, var2875=r9, var3722=$r10, var712=i6, var2615=$r11}
; {com.google.zxing.common.BitMatrix=var796, r0=var2618, cn.hutool.extra.qrcode.QrConfig=var2512, r1=var2305, i0=var514, i1=var3462, $r2=var827, $r3=var2063, $i2=var3501, cn.hutool.core.lang.ansi.ForeOrBack=var1352, $r4=var3475, cn.hutool.core.lang.ansi.AnsiElement=var1018, cn.hutool.extra.qrcode.QrCodeUtil=var2888, $r16=var1580, r5=var134, $r6=var2103, $r17=var2187, r9=var2875, $r10=var3722, i6=var712, $r11=var2615}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.zxing.common.BitMatrix;	r1 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	i0 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getWidth()>();	i1 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getHeight()>();	$r2 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	if $r2 != null goto $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	$r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	$i2 = virtualinvoke $r3.<java.lang.Integer: int intValue()>();	$r4 = <cn.hutool.core.lang.ansi.ForeOrBack: cn.hutool.core.lang.ansi.ForeOrBack FORE>;	$r16 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: cn.hutool.core.lang.ansi.AnsiElement rgbToAnsi8BitElement(int,cn.hutool.core.lang.ansi.ForeOrBack)>($i2, $r4);	r5 = $r16;	$r6 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	if $r6 != null goto $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	$r17 = null;	goto [?= r9 = $r17];	r9 = $r17;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	if i6 > i1 goto $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7