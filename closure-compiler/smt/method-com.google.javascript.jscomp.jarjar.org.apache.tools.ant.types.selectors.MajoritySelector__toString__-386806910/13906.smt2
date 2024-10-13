(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2223 0)
(declare-sort var526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hasSelectors/1611735462 (var526) Bool)
(declare-fun cast-from-var2223-to-var526 (var2223) var526)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2223 var2223)
(declare-const var3619 var2223) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MajoritySelector 
(assert (not (= var3619 null-var2223)))
(define-const var1235 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1235)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1235!1 String)
(assert (= var1235!1 ""))
(assert true)
(define-const var2597 Bool (hasSelectors/1611735462 (cast-from-var2223-to-var526 var3619))) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MajoritySelector: boolean hasSelectors()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2597 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3960 String (toString/-2075883882 var1235!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hasSelectors/1611735462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer], boolean), cast-from-var2223-to-var526=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MajoritySelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2223=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MajoritySelector, var3619=r1, var1235=$r0, var526=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer, var2597=$z0, var3960=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MajoritySelector=var2223, r1=var3619, $r0=var1235, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelectorContainer=var526, $z0=var2597, $r2=var3960}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MajoritySelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MajoritySelector: boolean hasSelectors()>();	if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2