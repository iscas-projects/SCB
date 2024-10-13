(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hasSelectors/-1311270120 (var148) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var148 var148)
(declare-const var2317 var148) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectSelector 
(assert (not (= var2317 null-var148)))
(define-const var2392 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2392)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2392!1 String)
(assert (= var2392!1 ""))
(assert true)
(define-const var2106 Bool (hasSelectors/-1311270120 var2317)) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectSelector: boolean hasSelectors()>() 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2106 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1883 String (toString/-2075883882 var2392!1)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hasSelectors/-1311270120=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectSelector], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var148=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectSelector, var2317=r1, var2392=$r0, var2106=$z0, var1883=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectSelector=var148, r1=var2317, $r0=var2392, $z0=var2106, $r7=var1883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectSelector: boolean hasSelectors()>();	if $z0 == 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2