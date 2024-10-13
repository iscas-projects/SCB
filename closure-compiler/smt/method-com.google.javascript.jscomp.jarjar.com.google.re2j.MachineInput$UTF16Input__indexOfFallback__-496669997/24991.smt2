(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2590 0)
(declare-sort var3154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2590 var2590)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3434 var2590) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input 
(assert (not (= var3434 null-var2590)))
(declare-const var2304 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2304 null-String)))
(declare-const var1154 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1154 null-String)))
(declare-const var2892 Int) ; Statement: i12 := @parameter2: int 
(assert (not (= var2892 null-Int)))
(define-const var1429 Int (String_length/-667254855 var2304)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i12 < $i0 goto (branch) 
(assert (not (< var2892 var1429))) ; Negate: Cond: i12 < $i0  
(assert true)
(define-const var345 Bool (isEmpty/-1285796103 var1154)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $b13 = -1 
(assert (= (ite var345 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1921 Int (- 1)) ; Statement: $b13 = -1 
(assert true) ; Non Conditional
 ; Statement: return $b13 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2590=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input, var3434=r2, var2304=r0, var1154=r1, var3154=null_type, var2892=i12, var1429=$i0, var345=$z1, var1921=$b13}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input=var2590, r2=var3434, r0=var2304, r1=var1154, null_type=var3154, i12=var2892, $i0=var1429, $z1=var345, $b13=var1921}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input;	r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	i12 := @parameter2: int;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i12 < $i0 goto (branch);	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $b13 = -1;	$b13 = -1;	return $b13
;block_num 4