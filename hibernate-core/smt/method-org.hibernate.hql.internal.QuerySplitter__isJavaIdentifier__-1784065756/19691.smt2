(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3111 0)
(declare-sort var437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var437_isJavaIdentifierStart/-1368251299 (Int) Bool)
(declare-const null-String String)
(declare-const var2969 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2969 null-String)))
(assert (and true (and (> (str.len var2969) 0) (<= 0 0))))
(define-const var3972 Int (charAt/698050440 var2969 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3642 Bool (var437_isJavaIdentifierStart/-1368251299 var3972)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), var437_isJavaIdentifierStart/-1368251299=([char], boolean)}
; {var2969=r0, var3111=null_type, var3972=$c0, var437=java.lang.Character, var3642=$z0}
; {r0=var2969, null_type=var3111, $c0=var3972, java.lang.Character=var437, $z0=var3642}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c0);	return $z0
;block_num 1