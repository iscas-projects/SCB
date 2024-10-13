(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var2499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3830-init () var3830)
(declare-fun <init>/-135023114 (var3830) void)
(declare-fun replace/1846362416 (var2499 String) String)
(declare-fun cast-from-var3830-to-var2499 (var3830) var2499)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var1311 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var1311 null-String)))
(define-const var1920 var3830 var3830-init) ; Statement: $r0 = new cn.hutool.core.text.escape.Html4Escape 
(assert true)
;(assert (<init>/-135023114 var1920)) ; Statement: specialinvoke $r0.<cn.hutool.core.text.escape.Html4Escape: void <init>()>() 

(declare-const var1920!1 var3830)
(assert true)
(define-const var3047 String (replace/1846362416 (cast-from-var3830-to-var2499 var1920!1) var1311)) ; Statement: $r2 = virtualinvoke $r0.<cn.hutool.core.text.escape.Html4Escape: java.lang.CharSequence replace(java.lang.CharSequence)>(r1) 
(define-const var727 String (String_toString/-1426662429 var3047)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3830-init=([], cn.hutool.core.text.escape.Html4Escape), <init>/-135023114=([cn.hutool.core.text.escape.Html4Escape], void), replace/1846362416=([cn.hutool.core.text.replacer.StrReplacer, java.lang.CharSequence], java.lang.CharSequence), cast-from-var3830-to-var2499=([cn.hutool.core.text.escape.Html4Escape], cn.hutool.core.text.replacer.StrReplacer), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1311=r1, var3830=cn.hutool.core.text.escape.Html4Escape, var1920=$r0, var2499=cn.hutool.core.text.replacer.StrReplacer, var3047=$r2, var727=$r3}
; {r1=var1311, cn.hutool.core.text.escape.Html4Escape=var3830, $r0=var1920, cn.hutool.core.text.replacer.StrReplacer=var2499, $r2=var3047, $r3=var727}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	$r0 = new cn.hutool.core.text.escape.Html4Escape;	specialinvoke $r0.<cn.hutool.core.text.escape.Html4Escape: void <init>()>();	$r2 = virtualinvoke $r0.<cn.hutool.core.text.escape.Html4Escape: java.lang.CharSequence replace(java.lang.CharSequence)>(r1);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 1