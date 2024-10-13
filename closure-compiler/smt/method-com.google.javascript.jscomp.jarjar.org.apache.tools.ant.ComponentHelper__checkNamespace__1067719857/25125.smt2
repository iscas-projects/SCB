(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2149 0)
(declare-sort var63 0)
(declare-sort var2668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2668_extractUriFromComponentName/-258959328 (String) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2149 var2149)
(declare-const null-String String)
(declare-const var3180 var2149) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var3180 null-var2149)))
(declare-const var727 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var727 null-String)))
(define-const var2868 String (var2668_extractUriFromComponentName/-258959328 var727)) ; Statement: r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0) 
(assert true)
(define-const var3566 Bool (isEmpty/-1285796103 var2868)) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:") 
(assert (= (ite var3566 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var141 Bool (startsWith/-1785782452 var2868 "antlib:")) ; Statement: $z1 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:") 
 ; Statement: if $z1 != 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: java.util.HashSet checkedNamespaces> 
(assert (not (not (= (ite var141 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2668_extractUriFromComponentName/-258959328=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2149=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var3180=r1, var727=r0, var63=null_type, var2668=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper, var2868=r9, var3566=$z0, var141=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var2149, r1=var3180, r0=var727, null_type=var63, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var2668, r9=var2868, $z0=var3566, $z1=var141}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r0 := @parameter0: java.lang.String;	r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0);	$z0 = virtualinvoke r9.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $z1 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:");	$z1 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:");	if $z1 != 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: java.util.HashSet checkedNamespaces>;	return
;block_num 3