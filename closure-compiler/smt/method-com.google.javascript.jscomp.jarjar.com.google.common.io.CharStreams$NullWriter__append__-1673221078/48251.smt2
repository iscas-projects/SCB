(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3644 0)
(declare-sort var438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var438_checkPositionIndexes/224088529 (Int Int Int) void)
(declare-const null-var3644 var3644)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var838 var3644) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter 
(assert (not (= var838 null-var3644)))
(declare-const var147 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var147 null-String)))
(declare-const var1231 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1231 null-Int)))
(declare-const var2552 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2552 null-Int)))
 ; Statement: if r0 != null goto $i2 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var147 null-String))) ; Cond: r0 != null 
(define-const var3505 Int (String_length/-667254855 var147)) ; Statement: $i2 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true) ; Non Conditional
;(assert (var438_checkPositionIndexes/224088529 var1231 var2552 var3505)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, i1, $i2) 

(declare-const var1231!1 Int)
(declare-const var2552!1 Int)
(declare-const var3505!1 Int)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var438_checkPositionIndexes/224088529=([int, int, int], void)}
; {var3644=com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter, var838=r1, var147=r0, var1231=i0, var2552=i1, var3505=$i2, var438=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter=var3644, r1=var838, r0=var147, i0=var1231, i1=var2552, $i2=var3505, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var438}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter;	r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	if r0 != null goto $i2 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i2 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, i1, $i2);	return r1
;block_num 3