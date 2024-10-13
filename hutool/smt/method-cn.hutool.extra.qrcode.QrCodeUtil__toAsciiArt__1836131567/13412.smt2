(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var663 0)
(declare-sort var3332 0)
(declare-sort var2478 0)
(declare-sort var3075 0)
(declare-sort var2372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWidth/-156802475 (var663) Int)
(declare-fun getHeight/-2127535592 (var663) Int)
(declare-fun foreColor/-52512001 (var3332) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun var2372_rgbToAnsi8BitElement/1675685867 (Int var2478) var3075)
(declare-fun backColor/-52512001 (var3332) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var663 var663)
(declare-const null-var3332 var3332)
(declare-const null-Int Int)
(declare-const var2478-FORE var2478)
(declare-const var2478-BACK var2478)
(declare-const var727 var663) ; Statement: r0 := @parameter0: com.google.zxing.common.BitMatrix 
(assert (not (= var727 null-var663)))
(declare-const var17 var3332) ; Statement: r1 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var17 null-var3332)))
(assert true)
(define-const var3626 Int (getWidth/-156802475 var727)) ; Statement: i0 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getWidth()>() 
(assert true)
(define-const var244 Int (getHeight/-2127535592 var727)) ; Statement: i1 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getHeight()>() 
(define-const var3744 Int (foreColor/-52512001 var17)) ; Statement: $r2 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
 ; Statement: if $r2 != null goto $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
(assert (not (= var3744 null-Int))) ; Cond: $r2 != null 
(define-const var3440 Int (foreColor/-52512001 var17)) ; Statement: $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
(assert true)
(define-const var2666 Int (intValue/-1815674922 var3440)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.Integer: int intValue()>() 
(define-const var3646 var2478 var2478-FORE) ; Statement: $r4 = <cn.hutool.core.lang.ansi.ForeOrBack: cn.hutool.core.lang.ansi.ForeOrBack FORE> 
(define-const var107 var3075 (var2372_rgbToAnsi8BitElement/1675685867 var2666 var3646)) ; Statement: $r16 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: cn.hutool.core.lang.ansi.AnsiElement rgbToAnsi8BitElement(int,cn.hutool.core.lang.ansi.ForeOrBack)>($i2, $r4) 
(assert true) ; Non Conditional
(define-const var3093 var3075 var107) ; Statement: r5 = $r16 
(define-const var1977 Int (backColor/-52512001 var17)) ; Statement: $r6 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
 ; Statement: if $r6 != null goto $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
(assert (not (= var1977 null-Int))) ; Cond: $r6 != null 
(define-const var266 Int (backColor/-52512001 var17)) ; Statement: $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
(assert true)
(define-const var3773 Int (intValue/-1815674922 var266)) ; Statement: $i3 = virtualinvoke $r7.<java.lang.Integer: int intValue()>() 
(define-const var2945 var2478 var2478-BACK) ; Statement: $r8 = <cn.hutool.core.lang.ansi.ForeOrBack: cn.hutool.core.lang.ansi.ForeOrBack BACK> 
(define-const var3906 var3075 (var2372_rgbToAnsi8BitElement/1675685867 var3773 var2945)) ; Statement: $r17 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: cn.hutool.core.lang.ansi.AnsiElement rgbToAnsi8BitElement(int,cn.hutool.core.lang.ansi.ForeOrBack)>($i3, $r8) 
(assert true) ; Non Conditional
(define-const var2406 var3075 var3906) ; Statement: r9 = $r17 
(define-const var1869 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1869)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1869!1 String)
(assert (= var1869!1 ""))
(define-const var295 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 > i1 goto $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (> var295 var244)) ; Cond: i6 > i1 
(assert true)
(define-const var2607 String (toString/-2075883882 var1869!1)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getWidth/-156802475=([com.google.zxing.common.BitMatrix], int), getHeight/-2127535592=([com.google.zxing.common.BitMatrix], int), foreColor/-52512001=([cn.hutool.extra.qrcode.QrConfig], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), var2372_rgbToAnsi8BitElement/1675685867=([int, cn.hutool.core.lang.ansi.ForeOrBack], cn.hutool.core.lang.ansi.AnsiElement), backColor/-52512001=([cn.hutool.extra.qrcode.QrConfig], java.lang.Integer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var663=com.google.zxing.common.BitMatrix, var727=r0, var3332=cn.hutool.extra.qrcode.QrConfig, var17=r1, var3626=i0, var244=i1, var3744=$r2, var3440=$r3, var2666=$i2, var2478=cn.hutool.core.lang.ansi.ForeOrBack, var3646=$r4, var3075=cn.hutool.core.lang.ansi.AnsiElement, var2372=cn.hutool.extra.qrcode.QrCodeUtil, var107=$r16, var3093=r5, var1977=$r6, var266=$r7, var3773=$i3, var2945=$r8, var3906=$r17, var2406=r9, var1869=$r10, var295=i6, var2607=$r11}
; {com.google.zxing.common.BitMatrix=var663, r0=var727, cn.hutool.extra.qrcode.QrConfig=var3332, r1=var17, i0=var3626, i1=var244, $r2=var3744, $r3=var3440, $i2=var2666, cn.hutool.core.lang.ansi.ForeOrBack=var2478, $r4=var3646, cn.hutool.core.lang.ansi.AnsiElement=var3075, cn.hutool.extra.qrcode.QrCodeUtil=var2372, $r16=var107, r5=var3093, $r6=var1977, $r7=var266, $i3=var3773, $r8=var2945, $r17=var3906, r9=var2406, $r10=var1869, i6=var295, $r11=var2607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.zxing.common.BitMatrix;	r1 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	i0 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getWidth()>();	i1 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getHeight()>();	$r2 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	if $r2 != null goto $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	$r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	$i2 = virtualinvoke $r3.<java.lang.Integer: int intValue()>();	$r4 = <cn.hutool.core.lang.ansi.ForeOrBack: cn.hutool.core.lang.ansi.ForeOrBack FORE>;	$r16 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: cn.hutool.core.lang.ansi.AnsiElement rgbToAnsi8BitElement(int,cn.hutool.core.lang.ansi.ForeOrBack)>($i2, $r4);	r5 = $r16;	$r6 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	if $r6 != null goto $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	$r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	$i3 = virtualinvoke $r7.<java.lang.Integer: int intValue()>();	$r8 = <cn.hutool.core.lang.ansi.ForeOrBack: cn.hutool.core.lang.ansi.ForeOrBack BACK>;	$r17 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: cn.hutool.core.lang.ansi.AnsiElement rgbToAnsi8BitElement(int,cn.hutool.core.lang.ansi.ForeOrBack)>($i3, $r8);	r9 = $r17;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	if i6 > i1 goto $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7