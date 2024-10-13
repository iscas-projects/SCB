(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1488 0)
(declare-sort var905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var1488 var1488)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var525 var1488) ; Statement: r1 := @this: com.google.javascript.jscomp.deps.JsFileLineParser 
(assert (not (= var525 null-var1488)))
(declare-const var3722 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3722 null-String)))
(declare-const var1672 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1672 null-Int)))
(declare-const var853 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var853 null-Int)))
(define-const var820 Int (cast-from-Int-to-Int var853)) ; Statement: $i7 = (int) c0 
(assert true)
(define-const var2799 Int (indexOf/-1037706067 var3722 var820)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>($i7) 
(assert true) ; Non Conditional
(define-const var3125 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto return 0 
(assert (= var2799 var3125)) ; Cond: i5 == $i9 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var1488=com.google.javascript.jscomp.deps.JsFileLineParser, var525=r1, var3722=r0, var905=null_type, var1672=i1, var853=c0, var820=$i7, var2799=i5, var3125=$i9}
; {com.google.javascript.jscomp.deps.JsFileLineParser=var1488, r1=var525, r0=var3722, null_type=var905, i1=var1672, c0=var853, $i7=var820, i5=var2799, $i9=var3125}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.deps.JsFileLineParser;	r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c0 := @parameter2: char;	$i7 = (int) c0;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>($i7);	$i9 = (int) -1;	if i5 == $i9 goto return 0;	return 0
;block_num 3