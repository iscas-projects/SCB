(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var411 0)
(declare-sort var2429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var411-init () var411)
(declare-fun <init>/-139237955 (var411) void)
(declare-fun replace/1846362416 (var2429 String) String)
(declare-fun cast-from-var411-to-var2429 (var411) var2429)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var388 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var388 null-String)))
(define-const var2702 var411 var411-init) ; Statement: $r0 = new cn.hutool.core.text.escape.XmlUnescape 
(assert true)
;(assert (<init>/-139237955 var2702)) ; Statement: specialinvoke $r0.<cn.hutool.core.text.escape.XmlUnescape: void <init>()>() 

(declare-const var2702!1 var411)
(assert true)
(define-const var1026 String (replace/1846362416 (cast-from-var411-to-var2429 var2702!1) var388)) ; Statement: $r2 = virtualinvoke $r0.<cn.hutool.core.text.escape.XmlUnescape: java.lang.CharSequence replace(java.lang.CharSequence)>(r1) 
(define-const var3592 String (String_toString/-1426662429 var1026)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var411-init=([], cn.hutool.core.text.escape.XmlUnescape), <init>/-139237955=([cn.hutool.core.text.escape.XmlUnescape], void), replace/1846362416=([cn.hutool.core.text.replacer.StrReplacer, java.lang.CharSequence], java.lang.CharSequence), cast-from-var411-to-var2429=([cn.hutool.core.text.escape.XmlUnescape], cn.hutool.core.text.replacer.StrReplacer), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var388=r1, var411=cn.hutool.core.text.escape.XmlUnescape, var2702=$r0, var2429=cn.hutool.core.text.replacer.StrReplacer, var1026=$r2, var3592=$r3}
; {r1=var388, cn.hutool.core.text.escape.XmlUnescape=var411, $r0=var2702, cn.hutool.core.text.replacer.StrReplacer=var2429, $r2=var1026, $r3=var3592}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	$r0 = new cn.hutool.core.text.escape.XmlUnescape;	specialinvoke $r0.<cn.hutool.core.text.escape.XmlUnescape: void <init>()>();	$r2 = virtualinvoke $r0.<cn.hutool.core.text.escape.XmlUnescape: java.lang.CharSequence replace(java.lang.CharSequence)>(r1);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 1