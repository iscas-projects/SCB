(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3933 0)
(declare-sort var1293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1293_forClosure/328690182 (String) var1293)
(declare-const null-String String)
(declare-const var1848 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1848 null-String)))
(assert true)
(define-const var1777 Bool (startsWith/-1785782452 var1848 "goog:")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("goog:") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.ModuleIdentifier: com.google.javascript.jscomp.ModuleIdentifier forFile(java.lang.String)>(r0) 
(assert (not (= (ite var1777 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var606 var1293 (var1293_forClosure/328690182 var1848)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.ModuleIdentifier: com.google.javascript.jscomp.ModuleIdentifier forClosure(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1293_forClosure/328690182=([java.lang.String], com.google.javascript.jscomp.ModuleIdentifier)}
; {var1848=r0, var3933=null_type, var1777=$z0, var1293=com.google.javascript.jscomp.ModuleIdentifier, var606=$r2}
; {r0=var1848, null_type=var3933, $z0=var1777, com.google.javascript.jscomp.ModuleIdentifier=var1293, $r2=var606}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("goog:");	if $z0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.ModuleIdentifier: com.google.javascript.jscomp.ModuleIdentifier forFile(java.lang.String)>(r0);	$r2 = staticinvoke <com.google.javascript.jscomp.ModuleIdentifier: com.google.javascript.jscomp.ModuleIdentifier forClosure(java.lang.String)>(r0);	return $r2
;block_num 2