(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1021_indexOf/-419066929 (String Int Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3725 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3725 null-String)))
(define-const var3652 Int (String_length/-667254855 var3725)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var22 Int (var1021_indexOf/-419066929 var3725 61 0 var3652)) ; Statement: i1 = staticinvoke <cn.hutool.core.util.StrUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, 61, 0, $i0) 
(define-const var1333 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 <= $i5 goto return null 
(assert (<= var22 var1333)) ; Cond: i1 <= $i5 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var1021_indexOf/-419066929=([java.lang.CharSequence, char, int, int], int), cast-from-Int-to-Int=([int], int)}
; {var3725=r0, var3652=$i0, var1021=cn.hutool.core.text.CharSequenceUtil, var22=i1, var1333=$i5}
; {r0=var3725, $i0=var3652, cn.hutool.core.text.CharSequenceUtil=var1021, i1=var22, $i5=var1333}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i1 = staticinvoke <cn.hutool.core.util.StrUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, 61, 0, $i0);	$i5 = (int) -1;	if i1 <= $i5 goto return null;	return null
;block_num 2