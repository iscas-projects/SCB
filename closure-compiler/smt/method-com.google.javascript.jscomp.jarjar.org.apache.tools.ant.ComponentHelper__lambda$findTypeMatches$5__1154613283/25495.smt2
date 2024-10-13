(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2378 0)
(declare-sort var639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2064347328 (var639) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-var639 var639)
(declare-const var3356 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3356 null-String)))
(declare-const var440 var639) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var440 null-var639)))
(assert true)
(define-const var3441 String (getName/-2064347328 var440)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getName()>() 
(assert true)
(define-const var92 Bool (startsWith/-1785782452 var3441 var3356)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2064347328=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3356=r1, var2378=null_type, var639=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var440=r0, var3441=$r2, var92=$z0}
; {r1=var3356, null_type=var2378, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var639, r0=var440, $r2=var3441, $z0=var92}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	return $z0
;block_num 1