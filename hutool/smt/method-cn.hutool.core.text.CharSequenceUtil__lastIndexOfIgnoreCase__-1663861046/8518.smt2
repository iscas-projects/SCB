(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var685_lastIndexOfIgnoreCase/-38584371 (String String Int) Int)
(declare-const null-String String)
(declare-const var1837 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1837 null-String)))
(declare-const var2478 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2478 null-String)))
(define-const var407 Int (String_length/-667254855 var1837)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3387 Int (var685_lastIndexOfIgnoreCase/-38584371 var1837 var2478 var407)) ; Statement: $i1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: int lastIndexOfIgnoreCase(java.lang.CharSequence,java.lang.CharSequence,int)>(r0, r1, $i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var685_lastIndexOfIgnoreCase/-38584371=([java.lang.CharSequence, java.lang.CharSequence, int], int)}
; {var1837=r0, var2478=r1, var407=$i0, var685=cn.hutool.core.text.CharSequenceUtil, var3387=$i1}
; {r0=var1837, r1=var2478, $i0=var407, cn.hutool.core.text.CharSequenceUtil=var685, $i1=var3387}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: int lastIndexOfIgnoreCase(java.lang.CharSequence,java.lang.CharSequence,int)>(r0, r1, $i0);	return $i1
;block_num 1