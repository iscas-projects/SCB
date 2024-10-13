(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun characters/864334994 (var1004) String)
(declare-const null-var1004 var1004)
(declare-const null-String String)
(declare-const var3152 var1004) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert (not (= var3152 null-var1004)))
(define-const var3711 String (characters/864334994 var3152)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters> 
(assert (not (= var3711 null-String))) ; Cond: $r1 != null 
(define-const var2938 String (characters/864334994 var3152)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters> 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {characters/864334994=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.lang.StringBuffer)}
; {var1004=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var3152=r0, var3711=$r1, var2938=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var1004, r0=var3152, $r1=var3711, $r2=var2938}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters>;	return $r2
;block_num 3