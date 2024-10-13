(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3040 0)
(declare-sort var2461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3040_isEmpty/1540305040 (String) Bool)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3139 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3139 null-String)))
(declare-const var1191 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var1191 null-String)))
(declare-const var3368 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var3368 null-Bool)))
(define-const var1805 Bool (var3040_isEmpty/1540305040 var3139)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var1805 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if null != r0 goto $r5 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (not (= null-String var3139)))) ; Negate: Cond: null != r0  
(define-const var2197 String null-String) ; Statement: $r5 = null 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3040_isEmpty/1540305040=([java.lang.CharSequence], boolean)}
; {var3139=r0, var1191=r1, var3368=z2, var3040=cn.hutool.core.text.CharSequenceUtil, var1805=$z0, var2461=null_type, var2197=$r5}
; {r0=var3139, r1=var1191, z2=var3368, cn.hutool.core.text.CharSequenceUtil=var3040, $z0=var1805, null_type=var2461, $r5=var2197}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z2 := @parameter2: boolean;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto (branch);	if null != r0 goto $r5 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r5 = null;	goto [?= return $r5];	return $r5
;block_num 4