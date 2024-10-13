(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var3832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hasSelectors/1611735462 (var3832) Bool)
(declare-fun cast-from-var1777-to-var3832 (var1777) var3832)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1777 var1777)
(declare-const var3530 var1777) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NoneSelector 
(assert (not (= var3530 null-var1777)))
(define-const var1654 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1654)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1654!1 String)
(assert (= var1654!1 ""))
(assert true)
(define-const var887 Bool (hasSelectors/1611735462 (cast-from-var1777-to-var3832 var3530))) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NoneSelector: boolean hasSelectors()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var887 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1377 String (toString/-2075883882 var1654!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hasSelectors/1611735462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer], boolean), cast-from-var1777-to-var3832=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NoneSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1777=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NoneSelector, var3530=r1, var1654=$r0, var3832=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer, var887=$z0, var1377=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NoneSelector=var1777, r1=var3530, $r0=var1654, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer=var3832, $z0=var887, $r2=var1377}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NoneSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NoneSelector: boolean hasSelectors()>();	if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2