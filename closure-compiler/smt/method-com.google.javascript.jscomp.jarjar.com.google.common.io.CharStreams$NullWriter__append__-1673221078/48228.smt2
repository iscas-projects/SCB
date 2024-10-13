(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var662 0)
(declare-sort var2559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2559_checkPositionIndexes/224088529 (Int Int Int) void)
(declare-const null-var662 var662)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2788 var662) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter 
(assert (not (= var2788 null-var662)))
(declare-const var3174 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3174 null-String)))
(declare-const var3905 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3905 null-Int)))
(declare-const var2842 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2842 null-Int)))
 ; Statement: if r0 != null goto $i2 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (not (= var3174 null-String)))) ; Negate: Cond: r0 != null  
(define-const var3712 String "null") ; Statement: $r2 = "null" 
(assert true)
(define-const var2354 Int (length/-134980193 var3712)) ; Statement: $i2 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, i1, $i2)] 
(assert true) ; Non Conditional
;(assert (var2559_checkPositionIndexes/224088529 var3905 var2842 var2354)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, i1, $i2) 

(declare-const var3905!1 Int)
(declare-const var2842!1 Int)
(declare-const var2354!1 Int)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2559_checkPositionIndexes/224088529=([int, int, int], void)}
; {var662=com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter, var2788=r1, var3174=r0, var3905=i0, var2842=i1, var3712=$r2, var2354=$i2, var2559=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter=var662, r1=var2788, r0=var3174, i0=var3905, i1=var2842, $r2=var3712, $i2=var2354, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2559}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter;	r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	if r0 != null goto $i2 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r2 = "null";	$i2 = virtualinvoke $r2.<java.lang.String: int length()>();	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, i1, $i2)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, i1, $i2);	return r1
;block_num 3