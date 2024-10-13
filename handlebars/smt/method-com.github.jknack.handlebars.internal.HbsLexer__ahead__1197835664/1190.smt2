(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1928 0)
(declare-sort var2491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1928 var1928)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3803 var1928) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.HbsLexer 
(assert (not (= var3803 null-var1928)))
(declare-const var3512 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3512 null-String)))
(declare-const var3038 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3038 null-Int)))
(define-const var1306 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1716 Int (length/-134980193 var3512)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto return 1 
(assert (>= var1306 var1716)) ; Cond: i6 >= $i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1928=com.github.jknack.handlebars.internal.HbsLexer, var3803=r1, var3512=r0, var2491=null_type, var3038=i1, var1306=i6, var1716=$i0}
; {com.github.jknack.handlebars.internal.HbsLexer=var1928, r1=var3803, r0=var3512, null_type=var2491, i1=var3038, i6=var1306, $i0=var1716}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.HbsLexer;	r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i6 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i6 >= $i0 goto return 1;	return 1
;block_num 3