(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3001 0)
(declare-sort var3701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var3001 var3001)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3701 var3701)
(declare-const var827 var3001) ; Statement: r4 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser 
(assert (not (= var827 null-var3001)))
(declare-const var3058 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3058 null-String)))
(declare-const var152 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var152 null-Int)))
(declare-const var2547 var3701) ; Statement: r1 := @parameter2: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption 
(assert (not (= var2547 null-var3701)))
(define-const var867 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 == $i9 goto $i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert (= var152 var867)) ; Cond: i0 == $i9 
(assert true)
(define-const var2891 Int (length/-171891354 var3058)) ; Statement: $i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto return 
(assert (<= var2891 0)) ; Cond: $i1 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), length/-171891354=([java.lang.StringBuilder], int)}
; {var3001=com.google.javascript.jscomp.parsing.JsDocInfoParser, var827=r4, var3058=r0, var152=i0, var3701=com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption, var2547=r1, var867=$i9, var2891=$i1}
; {com.google.javascript.jscomp.parsing.JsDocInfoParser=var3001, r4=var827, r0=var3058, i0=var152, com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption=var3701, r1=var2547, $i9=var867, $i1=var2891}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	r1 := @parameter2: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption;	$i9 = (int) -1;	if i0 == $i9 goto $i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	$i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto return;	return
;block_num 3