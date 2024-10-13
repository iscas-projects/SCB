(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var351 0)
(declare-sort var3765 0)
(declare-sort var3076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getParts/-930307072 (var351) var3765)
(declare-fun iterator/-607031900 (var3765) var3076)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var3076-to-Iterator (var3076) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var351 var351)
(declare-const var102 var351) ; Statement: r1 := @this: com.google.javascript.jscomp.JsMessage 
(assert (not (= var102 null-var351)))
(define-const var612 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var612)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var612!1 String)
(assert (= var612!1 ""))
(assert true)
(define-const var177 var3765 (getParts/-930307072 var102)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts()>() 
(assert true)
(define-const var396 var3076 (iterator/-607031900 var177)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1468 Bool (Iterator_hasNext/-1669924200 (cast-from-var3076-to-Iterator var396))) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1468 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1687 String (toString/-2075883882 var612!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getParts/-930307072=([com.google.javascript.jscomp.JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), iterator/-607031900=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var3076-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var351=com.google.javascript.jscomp.JsMessage, var102=r1, var612=$r0, var3765=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var177=$r2, var3076=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var396=r3, var1468=$z0, var1687=$r4}
; {com.google.javascript.jscomp.JsMessage=var351, r1=var102, $r0=var612, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3765, $r2=var177, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var3076, r3=var396, $z0=var1468, $r4=var1687}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.JsMessage;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts()>();	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3