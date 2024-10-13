(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2471 0)
(declare-sort var531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hasSelectors/1611735462 (var531) Bool)
(declare-fun cast-from-var2471-to-var531 (var2471) var531)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2471 var2471)
(declare-const var2888 var2471) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.OrSelector 
(assert (not (= var2888 null-var2471)))
(define-const var2540 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2540)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2540!1 String)
(assert (= var2540!1 ""))
(assert true)
(define-const var2942 Bool (hasSelectors/1611735462 (cast-from-var2471-to-var531 var2888))) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.OrSelector: boolean hasSelectors()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2942 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3603 String (toString/-2075883882 var2540!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hasSelectors/1611735462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer], boolean), cast-from-var2471-to-var531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.OrSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2471=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.OrSelector, var2888=r1, var2540=$r0, var531=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer, var2942=$z0, var3603=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.OrSelector=var2471, r1=var2888, $r0=var2540, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer=var531, $z0=var2942, $r2=var3603}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.OrSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.OrSelector: boolean hasSelectors()>();	if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2