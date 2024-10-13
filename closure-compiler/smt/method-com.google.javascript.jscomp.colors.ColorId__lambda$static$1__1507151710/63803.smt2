(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3048 0)
(declare-sort var2128 0)
(declare-sort var381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun codePointAt/-1532245030 (String Int) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2128_checkState/1633726539 (Bool var381) void)
(declare-fun cast-from-Int-to-var381 (Int) var381)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2156 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2156 null-String)))
(declare-const var1944 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1944 null-Int)))
(assert true)
(define-const var3216 Int (codePointAt/-1532245030 var2156 var1944)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(i0) 
 ; Statement: if 0 > i1 goto $z0 = 0 
(assert (> 0 var3216)) ; Cond: 0 > i1 
(define-const var2592 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
(define-const var1016 Int (Int_valueOf/-1371140006 var3216)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
;(assert (var2128_checkState/1633726539 var2592 (cast-from-Int-to-var381 var1016))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r1) 

(declare-const var2592!1 Bool)
(declare-const var1016!1 Int)
(define-const var2582 Int (cast-from-Int-to-Int var3216)) ; Statement: $b2 = (byte) i1 
 ; Statement: return $b2 
(check-sat)
(get-model)
(get-unsat-core)
; {codePointAt/-1532245030=([java.lang.String, int], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var2128_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-Int-to-var381=([java.lang.Integer], java.lang.Object), cast-from-Int-to-Int=([int], byte)}
; {var2156=r0, var3048=null_type, var1944=i0, var3216=i1, var2592=$z0, var1016=$r1, var2128=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var381=java.lang.Object, var2582=$b2}
; {r0=var2156, null_type=var3048, i0=var1944, i1=var3216, $z0=var2592, $r1=var1016, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2128, java.lang.Object=var381, $b2=var2582}
;seq <java.lang.String: int codePointAt(int)>
;cnt {"<java.lang.String: int codePointAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(i0);	if 0 > i1 goto $z0 = 0;	$z0 = 0;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r1);	$b2 = (byte) i1;	return $b2
;block_num 3