(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var79 0)
(declare-sort var1321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1321_skip/1212734288 (var79 Int) Int)
(declare-const null-var79 var79)
(declare-const null-Int Int)
(declare-const var1758 var79) ; Statement: r0 := @parameter0: java.io.Reader 
(assert (not (= var1758 null-var79)))
(declare-const var507 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var507 null-Int)))
(define-const var2080 Int (var1321_skip/1212734288 var1758 var507)) ; Statement: l1 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.Reader,long)>(r0, l0) 
(define-const var710 Int (ite (> var2080 var507) 1 (ite (< var2080 var507) (- 1) 0))) ; Statement: $b2 = l1 cmp l0 
 ; Statement: if $b2 == 0 goto return 
(assert (= var710 0)) ; Cond: $b2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1321_skip/1212734288=([java.io.Reader, long], long)}
; {var79=java.io.Reader, var1758=r0, var507=l0, var1321=org.apache.commons.io.IOUtils, var2080=l1, var710=$b2}
; {java.io.Reader=var79, r0=var1758, l0=var507, org.apache.commons.io.IOUtils=var1321, l1=var2080, $b2=var710}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.Reader;	l0 := @parameter1: long;	l1 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.Reader,long)>(r0, l0);	$b2 = l1 cmp l0;	if $b2 == 0 goto return;	return
;block_num 2