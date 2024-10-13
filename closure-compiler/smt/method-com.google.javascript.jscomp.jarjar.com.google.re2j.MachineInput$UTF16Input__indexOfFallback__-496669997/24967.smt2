(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2406 0)
(declare-sort var3560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2406 var2406)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2066 var2406) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input 
(assert (not (= var2066 null-var2406)))
(declare-const var2518 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2518 null-String)))
(declare-const var1715 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1715 null-String)))
(declare-const var2486 Int) ; Statement: i12 := @parameter2: int 
(assert (not (= var2486 null-Int)))
(define-const var1822 Int (String_length/-667254855 var2518)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i12 < $i0 goto (branch) 
(assert (not (< var2486 var1822))) ; Negate: Cond: i12 < $i0  
(assert true)
(define-const var3613 Bool (isEmpty/-1285796103 var1715)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $b13 = -1 
(assert (not (= (ite var3613 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var992 Int 0) ; Statement: $b13 = 0 
 ; Statement: goto [?= return $b13] 
(assert true) ; Non Conditional
 ; Statement: return $b13 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2406=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input, var2066=r2, var2518=r0, var1715=r1, var3560=null_type, var2486=i12, var1822=$i0, var3613=$z1, var992=$b13}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input=var2406, r2=var2066, r0=var2518, r1=var1715, null_type=var3560, i12=var2486, $i0=var1822, $z1=var3613, $b13=var992}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input;	r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	i12 := @parameter2: int;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i12 < $i0 goto (branch);	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $b13 = -1;	$b13 = 0;	goto [?= return $b13];	return $b13
;block_num 4