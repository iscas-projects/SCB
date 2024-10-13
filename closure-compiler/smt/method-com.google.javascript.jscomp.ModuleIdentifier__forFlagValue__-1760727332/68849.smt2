(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var216 0)
(declare-sort var1788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1788_forFile/-1016124857 (String) var1788)
(declare-const null-String String)
(declare-const var910 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var910 null-String)))
(assert true)
(define-const var3955 Bool (startsWith/-1785782452 var910 "goog:")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("goog:") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.ModuleIdentifier: com.google.javascript.jscomp.ModuleIdentifier forFile(java.lang.String)>(r0) 
(assert (= (ite var3955 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3821 var1788 (var1788_forFile/-1016124857 var910)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.ModuleIdentifier: com.google.javascript.jscomp.ModuleIdentifier forFile(java.lang.String)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1788_forFile/-1016124857=([java.lang.String], com.google.javascript.jscomp.ModuleIdentifier)}
; {var910=r0, var216=null_type, var3955=$z0, var1788=com.google.javascript.jscomp.ModuleIdentifier, var3821=$r1}
; {r0=var910, null_type=var216, $z0=var3955, com.google.javascript.jscomp.ModuleIdentifier=var1788, $r1=var3821}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("goog:");	if $z0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.ModuleIdentifier: com.google.javascript.jscomp.ModuleIdentifier forFile(java.lang.String)>(r0);	$r1 = staticinvoke <com.google.javascript.jscomp.ModuleIdentifier: com.google.javascript.jscomp.ModuleIdentifier forFile(java.lang.String)>(r0);	return $r1
;block_num 2