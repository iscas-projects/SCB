(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1214 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hasSelectors/1611735462 (var3271) Bool)
(declare-fun cast-from-var1214-to-var3271 (var1214) var3271)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1214 var1214)
(declare-const var2037 var1214) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.AndSelector 
(assert (not (= var2037 null-var1214)))
(define-const var220 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var220)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var220!1 String)
(assert (= var220!1 ""))
(assert true)
(define-const var2062 Bool (hasSelectors/1611735462 (cast-from-var1214-to-var3271 var2037))) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.AndSelector: boolean hasSelectors()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2062 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var376 String (toString/-2075883882 var220!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hasSelectors/1611735462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer], boolean), cast-from-var1214-to-var3271=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.AndSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1214=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.AndSelector, var2037=r1, var220=$r0, var3271=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer, var2062=$z0, var376=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.AndSelector=var1214, r1=var2037, $r0=var220, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer=var3271, $z0=var2062, $r2=var376}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.AndSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.AndSelector: boolean hasSelectors()>();	if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2