(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2311 0)
(declare-sort var2478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2311 var2311)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2854 var2311) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input 
(assert (not (= var2854 null-var2311)))
(declare-const var2950 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2950 null-String)))
(declare-const var99 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var99 null-String)))
(declare-const var3231 Int) ; Statement: i12 := @parameter2: int 
(assert (not (= var3231 null-Int)))
(define-const var3482 Int (String_length/-667254855 var2950)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i12 < $i0 goto (branch) 
(assert (< var3231 var3482)) ; Cond: i12 < $i0 
 ; Statement: if i12 >= 0 goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (>= var3231 0)) ; Cond: i12 >= 0 
(assert true)
(define-const var1493 Bool (isEmpty/-1285796103 var99)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var1493 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return i12 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2311=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input, var2854=r2, var2950=r0, var99=r1, var2478=null_type, var3231=i12, var3482=$i0, var1493=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input=var2311, r2=var2854, r0=var2950, r1=var99, null_type=var2478, i12=var3231, $i0=var3482, $z0=var1493}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input;	r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	i12 := @parameter2: int;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i12 < $i0 goto (branch);	if i12 >= 0 goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	return i12
;block_num 4