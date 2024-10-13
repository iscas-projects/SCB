(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3768 0)
(declare-sort var492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3768-init () var3768)
(declare-fun <init>/1203761103 (var3768) void)
(declare-fun replace/1846362416 (var492 String) String)
(declare-fun cast-from-var3768-to-var492 (var3768) var492)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var883 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var883 null-String)))
(define-const var3081 var3768 var3768-init) ; Statement: $r0 = new cn.hutool.core.text.escape.Html4Unescape 
(assert true)
;(assert (<init>/1203761103 var3081)) ; Statement: specialinvoke $r0.<cn.hutool.core.text.escape.Html4Unescape: void <init>()>() 

(declare-const var3081!1 var3768)
(assert true)
(define-const var969 String (replace/1846362416 (cast-from-var3768-to-var492 var3081!1) var883)) ; Statement: $r2 = virtualinvoke $r0.<cn.hutool.core.text.escape.Html4Unescape: java.lang.CharSequence replace(java.lang.CharSequence)>(r1) 
(define-const var1520 String (String_toString/-1426662429 var969)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3768-init=([], cn.hutool.core.text.escape.Html4Unescape), <init>/1203761103=([cn.hutool.core.text.escape.Html4Unescape], void), replace/1846362416=([cn.hutool.core.text.replacer.StrReplacer, java.lang.CharSequence], java.lang.CharSequence), cast-from-var3768-to-var492=([cn.hutool.core.text.escape.Html4Unescape], cn.hutool.core.text.replacer.StrReplacer), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var883=r1, var3768=cn.hutool.core.text.escape.Html4Unescape, var3081=$r0, var492=cn.hutool.core.text.replacer.StrReplacer, var969=$r2, var1520=$r3}
; {r1=var883, cn.hutool.core.text.escape.Html4Unescape=var3768, $r0=var3081, cn.hutool.core.text.replacer.StrReplacer=var492, $r2=var969, $r3=var1520}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	$r0 = new cn.hutool.core.text.escape.Html4Unescape;	specialinvoke $r0.<cn.hutool.core.text.escape.Html4Unescape: void <init>()>();	$r2 = virtualinvoke $r0.<cn.hutool.core.text.escape.Html4Unescape: java.lang.CharSequence replace(java.lang.CharSequence)>(r1);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 1