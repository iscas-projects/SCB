(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var273 0)
(declare-sort var765 0)
(declare-sort var281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWidth/-156802475 (var273) Int)
(declare-fun getHeight/-2127535592 (var273) Int)
(declare-fun foreColor/-52512001 (var765) Int)
(declare-fun backColor/-52512001 (var765) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var273 var273)
(declare-const null-var765 var765)
(declare-const null-Int Int)
(declare-const null-var281 var281)
(declare-const var3649 var273) ; Statement: r0 := @parameter0: com.google.zxing.common.BitMatrix 
(assert (not (= var3649 null-var273)))
(declare-const var3828 var765) ; Statement: r1 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var3828 null-var765)))
(assert true)
(define-const var3208 Int (getWidth/-156802475 var3649)) ; Statement: i0 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getWidth()>() 
(assert true)
(define-const var515 Int (getHeight/-2127535592 var3649)) ; Statement: i1 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getHeight()>() 
(define-const var1404 Int (foreColor/-52512001 var3828)) ; Statement: $r2 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
 ; Statement: if $r2 != null goto $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor> 
(assert (not (not (= var1404 null-Int)))) ; Negate: Cond: $r2 != null  
(define-const var465 var281 null-var281) ; Statement: $r16 = null 
 ; Statement: goto [?= r5 = $r16] 
(assert true) ; Non Conditional
(define-const var1948 var281 var465) ; Statement: r5 = $r16 
(define-const var2138 Int (backColor/-52512001 var3828)) ; Statement: $r6 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
 ; Statement: if $r6 != null goto $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor> 
(assert (not (not (= var2138 null-Int)))) ; Negate: Cond: $r6 != null  
(define-const var1182 var281 null-var281) ; Statement: $r17 = null 
 ; Statement: goto [?= r9 = $r17] 
(assert true) ; Non Conditional
(define-const var2940 var281 var1182) ; Statement: r9 = $r17 
(define-const var2435 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2435)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2435!1 String)
(assert (= var2435!1 ""))
(define-const var1017 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 > i1 goto $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (> var1017 var515)) ; Cond: i6 > i1 
(assert true)
(define-const var3613 String (toString/-2075883882 var2435!1)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getWidth/-156802475=([com.google.zxing.common.BitMatrix], int), getHeight/-2127535592=([com.google.zxing.common.BitMatrix], int), foreColor/-52512001=([cn.hutool.extra.qrcode.QrConfig], java.lang.Integer), backColor/-52512001=([cn.hutool.extra.qrcode.QrConfig], java.lang.Integer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var273=com.google.zxing.common.BitMatrix, var3649=r0, var765=cn.hutool.extra.qrcode.QrConfig, var3828=r1, var3208=i0, var515=i1, var1404=$r2, var281=cn.hutool.core.lang.ansi.AnsiElement, var465=$r16, var1948=r5, var2138=$r6, var1182=$r17, var2940=r9, var2435=$r10, var1017=i6, var3613=$r11}
; {com.google.zxing.common.BitMatrix=var273, r0=var3649, cn.hutool.extra.qrcode.QrConfig=var765, r1=var3828, i0=var3208, i1=var515, $r2=var1404, cn.hutool.core.lang.ansi.AnsiElement=var281, $r16=var465, r5=var1948, $r6=var2138, $r17=var1182, r9=var2940, $r10=var2435, i6=var1017, $r11=var3613}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.zxing.common.BitMatrix;	r1 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	i0 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getWidth()>();	i1 = virtualinvoke r0.<com.google.zxing.common.BitMatrix: int getHeight()>();	$r2 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	if $r2 != null goto $r3 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer foreColor>;	$r16 = null;	goto [?= r5 = $r16];	r5 = $r16;	$r6 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	if $r6 != null goto $r7 = r1.<cn.hutool.extra.qrcode.QrConfig: java.lang.Integer backColor>;	$r17 = null;	goto [?= r9 = $r17];	r9 = $r17;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	if i6 > i1 goto $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7