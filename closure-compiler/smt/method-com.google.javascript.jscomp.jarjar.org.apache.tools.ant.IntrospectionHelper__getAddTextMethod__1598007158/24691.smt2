(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var237 0)
(declare-sort var1417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsCharacters/148905355 (var237) Bool)
(declare-fun addText/1960194218 (var237) var1417)
(declare-const null-var237 var237)
(declare-const var2021 var237) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var2021 null-var237)))
(assert true)
(define-const var3606 Bool (supportsCharacters/148905355 var2021)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: boolean supportsCharacters()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
(assert (not (= (ite var3606 1 0) 0))) ; Cond: $z0 != 0 
(define-const var457 var1417 (addText/1960194218 var2021)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsCharacters/148905355=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], boolean), addText/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.reflect.Method)}
; {var237=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var2021=r0, var3606=$z0, var1417=java.lang.reflect.Method, var457=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var237, r0=var2021, $z0=var3606, java.lang.reflect.Method=var1417, $r1=var457}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: boolean supportsCharacters()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	return $r1
;block_num 2