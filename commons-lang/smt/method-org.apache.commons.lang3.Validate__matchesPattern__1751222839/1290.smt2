(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1383 0)
(declare-sort var3778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3778_matches/-236833593 (String String) Bool)
(declare-const null-String String)
(declare-const var2698 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var2698 null-String)))
(declare-const var3296 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3296 null-String)))
(define-const var2631 Bool (var3778_matches/-236833593 var3296 var2698)) ; Statement: $z0 = staticinvoke <java.util.regex.Pattern: boolean matches(java.lang.String,java.lang.CharSequence)>(r0, r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2631 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3778_matches/-236833593=([java.lang.String, java.lang.CharSequence], boolean)}
; {var2698=r1, var3296=r0, var1383=null_type, var3778=java.util.regex.Pattern, var2631=$z0}
; {r1=var2698, r0=var3296, null_type=var1383, java.util.regex.Pattern=var3778, $z0=var2631}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.lang.String;	$z0 = staticinvoke <java.util.regex.Pattern: boolean matches(java.lang.String,java.lang.CharSequence)>(r0, r1);	if $z0 != 0 goto return;	return
;block_num 2