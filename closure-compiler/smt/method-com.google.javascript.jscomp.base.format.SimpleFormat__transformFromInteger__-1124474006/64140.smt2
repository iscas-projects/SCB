(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1609 0)
(declare-sort var1858 0)
(declare-sort var2527 0)
(declare-sort var1384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun formatToken/-1920232736 (var1609) var1858)
(declare-fun getConversionType/-1019543431 (var1858) Int)
(declare-fun arg/-1920232736 (var1609) var2527)
(declare-fun badArgumentType/-41363576 (var1609) var1384)
(declare-const null-var1609 var1609)
(declare-const var1536 var1609) ; Statement: r1 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var1536 null-var1609)))
(define-const var3659 Int 0) ; Statement: i2 = 0 
(define-const var2311 Int 0) ; Statement: b6 = 0 
(define-const var3281 Int 0) ; Statement: b5 = 0 
(define-const var1548 Int 0) ; Statement: b4 = 0 
(define-const var1282 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1282)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1282!1 String)
(assert (= var1282!1 ""))
(define-const var3815 var1858 (formatToken/-1920232736 var1536)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(assert true)
(define-const var2612 Int (getConversionType/-1019543431 var3815)) ; Statement: c0 = virtualinvoke $r2.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: char getConversionType()>() 
(define-const var1894 var2527 (arg/-1920232736 var1536)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(define-const var664 Bool false) ; Statement: $z0 = $r3 instanceof java.lang.Long 
 ; Statement: if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(assert (= (ite var664 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2284 var2527 (arg/-1920232736 var1536)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(define-const var3855 Bool false) ; Statement: $z1 = $r4 instanceof java.lang.Integer 
 ; Statement: if $z1 == 0 goto $r5 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(assert (= (ite var3855 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1290 var2527 (arg/-1920232736 var1536)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(define-const var1602 Bool false) ; Statement: $z2 = $r5 instanceof java.lang.Short 
 ; Statement: if $z2 == 0 goto $r6 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(assert (= (ite var1602 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2639 var2527 (arg/-1920232736 var1536)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(define-const var1571 Bool false) ; Statement: $z3 = $r6 instanceof java.lang.Byte 
 ; Statement: if $z3 == 0 goto $r7 = virtualinvoke r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.IllegalFormatConversionException badArgumentType()>() 
(assert (= (ite var1571 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var3116 var1384 (badArgumentType/-41363576 var1536)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.IllegalFormatConversionException badArgumentType()>() 
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), formatToken/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken), getConversionType/-1019543431=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], char), arg/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], java.lang.Object), badArgumentType/-41363576=([com.google.javascript.jscomp.base.format.SimpleFormat], com.google.javascript.jscomp.base.format.IllegalFormatConversionException)}
; {var1609=com.google.javascript.jscomp.base.format.SimpleFormat, var1536=r1, var3659=i2, var2311=b6, var3281=b5, var1548=b4, var1282=$r30, var1858=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var3815=$r2, var2612=c0, var2527=java.lang.Object, var1894=$r3, var664=$z0, var2284=$r4, var3855=$z1, var1290=$r5, var1602=$z2, var2639=$r6, var1571=$z3, var1384=com.google.javascript.jscomp.base.format.IllegalFormatConversionException, var3116=$r7}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var1609, r1=var1536, i2=var3659, b6=var2311, b5=var3281, b4=var1548, $r30=var1282, com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var1858, $r2=var3815, c0=var2612, java.lang.Object=var2527, $r3=var1894, $z0=var664, $r4=var2284, $z1=var3855, $r5=var1290, $z2=var1602, $r6=var2639, $z3=var1571, com.google.javascript.jscomp.base.format.IllegalFormatConversionException=var1384, $r7=var3116}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	i2 = 0;	b6 = 0;	b5 = 0;	b4 = 0;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	c0 = virtualinvoke $r2.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: char getConversionType()>();	$r3 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	$z0 = $r3 instanceof java.lang.Long;	if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	$r4 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	$z1 = $r4 instanceof java.lang.Integer;	if $z1 == 0 goto $r5 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	$r5 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	$z2 = $r5 instanceof java.lang.Short;	if $z2 == 0 goto $r6 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	$r6 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	$z3 = $r6 instanceof java.lang.Byte;	if $z3 == 0 goto $r7 = virtualinvoke r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.IllegalFormatConversionException badArgumentType()>();	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.IllegalFormatConversionException badArgumentType()>();	throw $r7
;block_num 5