(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2286 0)
(declare-sort var3567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3567_isLowerCase/-837313213 (Int) Bool)
(declare-const null-String String)
(declare-const var996 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var996 null-String)))
(assert (and true (and (> (str.len var996) 0) (<= 0 0))))
(define-const var2479 Int (charAt/698050440 var996 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var570 Bool (var3567_isLowerCase/-837313213 var2479)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isLowerCase(char)>($c0) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var570 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), var3567_isLowerCase/-837313213=([char], boolean)}
; {var996=r0, var2286=null_type, var2479=$c0, var3567=java.lang.Character, var570=$z0}
; {r0=var996, null_type=var2286, $c0=var2479, java.lang.Character=var3567, $z0=var570}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$z0 = staticinvoke <java.lang.Character: boolean isLowerCase(char)>($c0);	if $z0 == 0 goto return r0;	return r0
;block_num 2