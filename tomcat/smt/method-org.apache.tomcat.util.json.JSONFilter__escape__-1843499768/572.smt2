(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3336 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var3336 null-String)))
(declare-const var1044 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1044 null-Int)))
(declare-const var1392 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1392 null-Int)))
(define-const var2621 String null-String) ; Statement: r10 = null 
(define-const var3993 Int var1044) ; Statement: i7 = i0 
(define-const var2849 Int var1044) ; Statement: i8 = i0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var2849 var1392)) ; Cond: i8 >= i1 
 ; Statement: if r10 != null goto (branch) 
(assert (not (not (= var2621 null-String)))) ; Negate: Cond: r10 != null  
 ; Statement: if i0 != 0 goto $i2 = i1 - i0 
(assert (not (= var1044 0))) ; Cond: i0 != 0 
(define-const var1553 Int (- var1392 var1044)) ; Statement: $i2 = i1 - i0 
(define-const var2436 String (String_subSequence/-1087362312 var3336 var1044 var1553)) ; Statement: $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, $i2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence)}
; {var3336=r1, var1044=i0, var1392=i1, var2621=r10, var3993=i7, var2849=i8, var1553=$i2, var2436=$r3}
; {r1=var3336, i0=var1044, i1=var1392, r10=var2621, i7=var3993, i8=var2849, $i2=var1553, $r3=var2436}
;seq <java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	r10 = null;	i7 = i0;	i8 = i0;	if i8 >= i1 goto (branch);	if r10 != null goto (branch);	if i0 != 0 goto $i2 = i1 - i0;	$i2 = i1 - i0;	$r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, $i2);	return $r3
;block_num 5