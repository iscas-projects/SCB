(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2909 var2909)
(declare-const null-String String)
(declare-const var1769 var2909) ; Statement: r1 := @this: com.google.javascript.jscomp.DefaultNameGenerator 
(assert (not (= var1769 null-var2909)))
(declare-const var2205 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2205 null-String)))
(define-const var371 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3831 Int (String_length/-667254855 var2205)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i4 >= $i0 goto return 
(assert (>= var371 var3831)) ; Cond: i4 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2909=com.google.javascript.jscomp.DefaultNameGenerator, var1769=r1, var2205=r0, var371=i4, var3831=$i0}
; {com.google.javascript.jscomp.DefaultNameGenerator=var2909, r1=var1769, r0=var2205, i4=var371, $i0=var3831}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.DefaultNameGenerator;	r0 := @parameter0: java.lang.CharSequence;	i4 = 0;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i4 >= $i0 goto return;	return
;block_num 3