(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1495 0)
(declare-sort var1742 0)
(declare-sort var496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getParts/-930307072 (var1495) var1742)
(declare-fun iterator/-607031900 (var1742) var496)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var496-to-Iterator (var496) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1495 var1495)
(declare-const var3678 var1495) ; Statement: r1 := @this: com.google.javascript.jscomp.JsMessage 
(assert (not (= var3678 null-var1495)))
(define-const var3262 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3262)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3262!1 String)
(assert (= var3262!1 ""))
(assert true)
(define-const var3068 var1742 (getParts/-930307072 var3678)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts()>() 
(assert true)
(define-const var624 var496 (iterator/-607031900 var3068)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1102 Bool (Iterator_hasNext/-1669924200 (cast-from-var496-to-Iterator var624))) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1102 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var684 String (toString/-2075883882 var3262!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getParts/-930307072=([com.google.javascript.jscomp.JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), iterator/-607031900=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var496-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1495=com.google.javascript.jscomp.JsMessage, var3678=r1, var3262=$r0, var1742=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3068=$r2, var496=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var624=r3, var1102=$z0, var684=$r4}
; {com.google.javascript.jscomp.JsMessage=var1495, r1=var3678, $r0=var3262, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1742, $r2=var3068, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var496, r3=var624, $z0=var1102, $r4=var684}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.JsMessage;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts()>();	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3