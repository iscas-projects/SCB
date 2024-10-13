(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3114 0)
(declare-sort var2729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3114-init () var3114)
(declare-fun <init>/2089275236 (var3114) void)
(declare-fun replace/1846362416 (var2729 String) String)
(declare-fun cast-from-var3114-to-var2729 (var3114) var2729)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var944 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var944 null-String)))
(define-const var2728 var3114 var3114-init) ; Statement: $r0 = new cn.hutool.core.text.escape.XmlEscape 
(assert true)
;(assert (<init>/2089275236 var2728)) ; Statement: specialinvoke $r0.<cn.hutool.core.text.escape.XmlEscape: void <init>()>() 

(declare-const var2728!1 var3114)
(assert true)
(define-const var969 String (replace/1846362416 (cast-from-var3114-to-var2729 var2728!1) var944)) ; Statement: $r2 = virtualinvoke $r0.<cn.hutool.core.text.escape.XmlEscape: java.lang.CharSequence replace(java.lang.CharSequence)>(r1) 
(define-const var2369 String (String_toString/-1426662429 var969)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3114-init=([], cn.hutool.core.text.escape.XmlEscape), <init>/2089275236=([cn.hutool.core.text.escape.XmlEscape], void), replace/1846362416=([cn.hutool.core.text.replacer.StrReplacer, java.lang.CharSequence], java.lang.CharSequence), cast-from-var3114-to-var2729=([cn.hutool.core.text.escape.XmlEscape], cn.hutool.core.text.replacer.StrReplacer), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var944=r1, var3114=cn.hutool.core.text.escape.XmlEscape, var2728=$r0, var2729=cn.hutool.core.text.replacer.StrReplacer, var969=$r2, var2369=$r3}
; {r1=var944, cn.hutool.core.text.escape.XmlEscape=var3114, $r0=var2728, cn.hutool.core.text.replacer.StrReplacer=var2729, $r2=var969, $r3=var2369}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	$r0 = new cn.hutool.core.text.escape.XmlEscape;	specialinvoke $r0.<cn.hutool.core.text.escape.XmlEscape: void <init>()>();	$r2 = virtualinvoke $r0.<cn.hutool.core.text.escape.XmlEscape: java.lang.CharSequence replace(java.lang.CharSequence)>(r1);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 1