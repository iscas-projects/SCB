(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var731_isLetter/973290220 (Int) Bool)
(declare-const null-String String)
(declare-const var3279 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3279 null-String)))
(assert true)
(define-const var821 (Array Int Int) (toCharArray/415275702 var3279)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var3250 Int (select var821 0)) ; Statement: $c0 = r1[0] 
(define-const var3092 Bool (var731_isLetter/973290220 var3250)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isLetter(char)>($c0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (= (ite var3092 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var731_isLetter/973290220=([char], boolean)}
; {var3279=r0, var742=null_type, var821=r1, var3250=$c0, var731=java.lang.Character, var3092=$z0}
; {r0=var3279, null_type=var742, r1=var821, $c0=var3250, java.lang.Character=var731, $z0=var3092}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$c0 = r1[0];	$z0 = staticinvoke <java.lang.Character: boolean isLetter(char)>($c0);	if $z0 != 0 goto return r0;	return r0
;block_num 2