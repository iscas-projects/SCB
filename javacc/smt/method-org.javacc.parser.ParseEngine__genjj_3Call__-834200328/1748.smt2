(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var8 0)
(declare-sort var1351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun internal_name/-1632124174 (var1351) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var8 var8)
(declare-const null-var1351 var1351)
(declare-const var2467 var8) ; Statement: r9 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var2467 null-var8)))
(declare-const var2901 var1351) ; Statement: r0 := @parameter0: org.javacc.parser.Expansion 
(assert (not (= var2901 null-var1351)))
(define-const var874 String (internal_name/-1632124174 var2901)) ; Statement: $r1 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var3525 Bool (startsWith/-1785782452 var874 "jj_scan_token")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("jj_scan_token") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var3525 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1845 String (internal_name/-1632124174 var2901)) ; Statement: $r8 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name> 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var8=org.javacc.parser.ParseEngine, var2467=r9, var1351=org.javacc.parser.Expansion, var2901=r0, var874=$r1, var3525=$z0, var1845=$r8}
; {org.javacc.parser.ParseEngine=var8, r9=var2467, org.javacc.parser.Expansion=var1351, r0=var2901, $r1=var874, $z0=var3525, $r8=var1845}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r9 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Expansion;	$r1 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("jj_scan_token");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r8 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name>;	return $r8
;block_num 2