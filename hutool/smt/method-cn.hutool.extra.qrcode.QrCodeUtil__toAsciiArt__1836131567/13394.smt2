(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3138 0)
(declare-sort var92 0)
(declare-sort var991 0)
(declare-sort var2818 0)
(declare-sort var2541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWidth/-156802475 (var3138) Int)
(declare-fun getHeight/-2127535592 (var3138) Int)
(declare-fun foreColor/-52512001 (var92) Int)
(declare-fun backColor/-52512001 (var92) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun var2541_rgbToAnsi8BitElement/1675685867 (Int var2818) var991)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3138 var3138)
(declare-const null-var92 var92)
(declare-const null-Int Int)
(declare-const null-var991 var991)
(declare-const var2818-BACK var2818)
(declare-const var3222 var3138) ; Statement: r0 := @parameter0: com.google.zxing.common.BitMatrix 
(assert (not (= var3222 null-var3138)))
(declare-const var1388 var92) ; Statement: r1 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var1388 null-var92)))
(assert true)
(define-const var123 Int (getWidth/-156802475 var3222)) ; Statement: i0 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getWidth()>() 
(assert true)
(define-const var365 Int (getHeight/-2127535592 var3222)) ; Statement: i1 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getHeight()>() 
(define-const var2076 Int (foreColor/-52512001 var1388)) ; Statement: $r2 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
 ; Statement: if $r2 != null goto $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
(assert (not (not (= var2076 null-Int)))) ; Negate: Cond: $r2 != null  
(define-const var2905 var991 null-var991) ; Statement: $r16 = null 
 ; Statement: goto [?= r5 = $r16] 
(assert true) ; Non Conditional
(define-const var2197 var991 var2905) ; Statement: r5 = $r16 
(define-const var2323 Int (backColor/-52512001 var1388)) ; Statement: $r6 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
 ; Statement: if $r6 != null goto $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
(assert (not (= var2323 null-Int))) ; Cond: $r6 != null 
(define-const var3461 Int (backColor/-52512001 var1388)) ; Statement: $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
(assert true)
(define-const var2694 Int (intValue/-1815674922 var3461)) ; Statement: $i3 = virtualinvoke $r7.<java.lang.Integer: int intValue()>() 
(define-const var1203 var2818 var2818-BACK) ; Statement: $r8 = <cn.hutool.core.lang.ansi.ForeOrBack: cn.hutool.core.lang.ansi.ForeOrBack BACK> 
(define-const var1658 var991 (var2541_rgbToAnsi8BitElement/1675685867 var2694 var1203)) ; Statement: $r17 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: cn.hutool.core.lang.ansi.AnsiElement rgbToAnsi8BitElement(int,cn.hutool.core.lang.ansi.ForeOrBack)>($i3, $r8) 
(assert true) ; Non Conditional
(define-const var333 var991 var1658) ; Statement: r9 = $r17 
(define-const var860 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var860)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var860!1 String)
(assert (= var860!1 ""))
(define-const var1316 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 > i1 goto $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (> var1316 var365)) ; Cond: i6 > i1 
(assert true)
(define-const var3855 String (toString/-2075883882 var860!1)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getWidth/-156802475=([com.google.zxing.common.BitMatrix], int), getHeight/-2127535592=([com.google.zxing.common.BitMatrix], int), foreColor/-52512001=([cn.hutool.extra.qrcode.QrConfig], java.lang.Integer), backColor/-52512001=([cn.hutool.extra.qrcode.QrConfig], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), var2541_rgbToAnsi8BitElement/1675685867=([int, cn.hutool.core.lang.ansi.ForeOrBack], cn.hutool.core.lang.ansi.AnsiElement), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3138=com.google.zxing.common.BitMatrix, var3222=r0, var92=cn.hutool.extra.qrcode.QrConfig, var1388=r1, var123=i0, var365=i1, var2076=$r2, var991=cn.hutool.core.lang.ansi.AnsiElement, var2905=$r16, var2197=r5, var2323=$r6, var3461=$r7, var2694=$i3, var2818=cn.hutool.core.lang.ansi.ForeOrBack, var1203=$r8, var2541=cn.hutool.extra.qrcode.QrCodeUtil, var1658=$r17, var333=r9, var860=$r10, var1316=i6, var3855=$r11}
; {com.google.zxing.common.BitMatrix=var3138, r0=var3222, cn.hutool.extra.qrcode.QrConfig=var92, r1=var1388, i0=var123, i1=var365, $r2=var2076, cn.hutool.core.lang.ansi.AnsiElement=var991, $r16=var2905, r5=var2197, $r6=var2323, $r7=var3461, $i3=var2694, cn.hutool.core.lang.ansi.ForeOrBack=var2818, $r8=var1203, cn.hutool.extra.qrcode.QrCodeUtil=var2541, $r17=var1658, r9=var333, $r10=var860, i6=var1316, $r11=var3855}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.zxing.common.BitMatrix;	r1 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	i0 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getWidth()>();	i1 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getHeight()>();	$r2 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	if $r2 != null goto $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	$r16 = null;	goto [?= r5 = $r16];	r5 = $r16;	$r6 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	if $r6 != null goto $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	$r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	$i3 = virtualinvoke $r7.<java.lang.Integer: int intValue()>();	$r8 = <cn.hutool.core.lang.ansi.ForeOrBack: cn.hutool.core.lang.ansi.ForeOrBack BACK>;	$r17 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: cn.hutool.core.lang.ansi.AnsiElement rgbToAnsi8BitElement(int,cn.hutool.core.lang.ansi.ForeOrBack)>($i3, $r8);	r9 = $r17;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	if i6 > i1 goto $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7