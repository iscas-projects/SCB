(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-Int Int)
(declare-const var2822-$assertionsDisabled Bool)
(declare-const var3602 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3602 null-Int)))
(define-const var2114 Bool var2822-$assertionsDisabled) ; Statement: $z0 = <com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r0 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" 
(assert (not (= (ite var2114 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1963 String "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/") ; Statement: $r0 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" 
(assert (not (and true (and (> (str.len var1963) var3602) (<= 0 var3602)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char)}
; {var3602=i0, var2822=com.google.debugging.sourcemap.Base64, var2114=$z0, var1963=$r0, var1270=$c1}
; {i0=var3602, com.google.debugging.sourcemap.Base64=var2822, $z0=var2114, $r0=var1963, $c1=var1270}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts i0 := @parameter0: int;	$z0 = <com.google.debugging.sourcemap.Base64: boolean $assertionsDisabled>;	if $z0 != 0 goto $r0 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";	$r0 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";	$c1 = virtualinvoke $r0.<java.lang.String: char charAt(int)>(i0);	return $c1
;block_num 2