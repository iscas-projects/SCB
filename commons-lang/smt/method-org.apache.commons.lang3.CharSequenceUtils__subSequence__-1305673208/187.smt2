(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1514 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1514 null-String)))
(declare-const var34 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var34 null-Int)))
 ; Statement: if r0 != null goto $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var1514 null-String))) ; Cond: r0 != null 
(define-const var2064 Int (String_length/-667254855 var1514)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2552 String (String_subSequence/-1087362312 var1514 var34 var2064)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, $i1) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence)}
; {var1514=r0, var34=i0, var2064=$i1, var2552=$r1}
; {r0=var1514, i0=var34, $i1=var2064, $r1=var2552}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	if r0 != null goto $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, $i1);	return $r1
;block_num 3