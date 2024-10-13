(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1972_indexOf/-419066929 (String Int Int Int) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var403 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var403 null-String)))
(declare-const var1578 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1578 null-Int)))
(declare-const var3203 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3203 null-Int)))
(define-const var2580 Bool true) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $i6 = (int) -1 
(assert (= (ite var2580 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2420 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var1815 Int (var1972_indexOf/-419066929 var403 var1578 var3203 var2420)) ; Statement: $i2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, c0, i1, $i6) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var1972_indexOf/-419066929=([java.lang.CharSequence, char, int, int], int)}
; {var403=r0, var1578=c0, var3203=i1, var2580=$z0, var2420=$i6, var1972=cn.hutool.core.text.CharSequenceUtil, var1815=$i2}
; {r0=var403, c0=var1578, i1=var3203, $z0=var2580, $i6=var2420, cn.hutool.core.text.CharSequenceUtil=var1972, $i2=var1815}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.CharSequence;	c0 := @parameter1: char;	i1 := @parameter2: int;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $i6 = (int) -1;	$i6 = (int) -1;	$i2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, c0, i1, $i6);	return $i2
;block_num 2