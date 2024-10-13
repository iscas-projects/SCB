(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3043_indexOf/-419066929 (String Int Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var911 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var911 null-String)))
(define-const var3687 Int (String_length/-667254855 var911)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2415 Int (var3043_indexOf/-419066929 var911 61 0 var3687)) ; Statement: i1 = staticinvoke <cn.hutool.core.util.StrUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, 61, 0, $i0) 
(define-const var2984 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 <= $i5 goto return null 
(assert (<= var2415 var2984)) ; Cond: i1 <= $i5 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var3043_indexOf/-419066929=([java.lang.CharSequence, char, int, int], int), cast-from-Int-to-Int=([int], int)}
; {var911=r0, var3687=$i0, var3043=cn.hutool.core.text.CharSequenceUtil, var2415=i1, var2984=$i5}
; {r0=var911, $i0=var3687, cn.hutool.core.text.CharSequenceUtil=var3043, i1=var2415, $i5=var2984}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i1 = staticinvoke <cn.hutool.core.util.StrUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, 61, 0, $i0);	$i5 = (int) -1;	if i1 <= $i5 goto return null;	return null
;block_num 2