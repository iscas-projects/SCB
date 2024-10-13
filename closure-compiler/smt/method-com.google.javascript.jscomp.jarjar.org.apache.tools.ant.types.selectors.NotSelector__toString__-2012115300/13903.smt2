(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1404 0)
(declare-sort var2944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hasSelectors/1611735462 (var2944) Bool)
(declare-fun cast-from-var1404-to-var2944 (var1404) var2944)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1404 var1404)
(declare-const var3293 var1404) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NotSelector 
(assert (not (= var3293 null-var1404)))
(define-const var286 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var286)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var286!1 String)
(assert (= var286!1 ""))
(assert true)
(define-const var1130 Bool (hasSelectors/1611735462 (cast-from-var1404-to-var2944 var3293))) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NotSelector: boolean hasSelectors()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1130 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var901 String (toString/-2075883882 var286!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hasSelectors/1611735462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer], boolean), cast-from-var1404-to-var2944=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NotSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1404=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NotSelector, var3293=r1, var286=$r0, var2944=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer, var1130=$z0, var901=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NotSelector=var1404, r1=var3293, $r0=var286, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer=var2944, $z0=var1130, $r2=var901}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NotSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.NotSelector: boolean hasSelectors()>();	if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2