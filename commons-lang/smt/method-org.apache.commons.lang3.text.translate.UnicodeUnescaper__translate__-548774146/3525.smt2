(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var948 0)
(declare-sort var1721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_charAt/1466887330 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var948 var948)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1721 var1721)
(declare-const var2868 var948) ; Statement: r17 := @this: org.apache.commons.lang3.text.translate.UnicodeUnescaper 
(assert (not (= var2868 null-var948)))
(declare-const var3760 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3760 null-String)))
(declare-const var336 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var336 null-Int)))
(declare-const var918 var1721) ; Statement: r10 := @parameter2: java.io.Writer 
(assert (not (= var918 null-var1721)))
(define-const var3621 Int (String_charAt/1466887330 var3760 var336)) ; Statement: $c1 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i0) 
(define-const var1917 Int (cast-from-Int-to-Int var3621)) ; Statement: $i25 = (int) $c1 
 ; Statement: if $i25 != 92 goto return 0 
(assert (not (= var1917 92))) ; Cond: $i25 != 92 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_charAt/1466887330=([java.lang.CharSequence, int], char), cast-from-Int-to-Int=([char], int)}
; {var948=org.apache.commons.lang3.text.translate.UnicodeUnescaper, var2868=r17, var3760=r0, var336=i0, var1721=java.io.Writer, var918=r10, var3621=$c1, var1917=$i25}
; {org.apache.commons.lang3.text.translate.UnicodeUnescaper=var948, r17=var2868, r0=var3760, i0=var336, java.io.Writer=var1721, r10=var918, $c1=var3621, $i25=var1917}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r17 := @this: org.apache.commons.lang3.text.translate.UnicodeUnescaper;	r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	r10 := @parameter2: java.io.Writer;	$c1 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i0);	$i25 = (int) $c1;	if $i25 != 92 goto return 0;	return 0
;block_num 2