(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3343 0)
(declare-sort var961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var961-init () var961)
(declare-fun <init>/-25822930 (var961 Int) void)
(declare-const null-var3343 var3343)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2891 var3343) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2891 null-var3343)))
(declare-const var992 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var992 null-Int)))
(declare-const var3455 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3455 null-Int)))
(declare-const var1593 (Array Int Int)) ; Statement: r2 := @parameter2: char[] 
(assert (not (= var1593 null-__Array__Int__Int__)))
(declare-const var2643 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2643 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var992 0))) ; Negate: Cond: i0 >= 0  
(define-const var1607 var961 var961-init) ; Statement: $r5 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var1607 var992)) ; Statement: specialinvoke $r5.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var1607!1 var961)
(declare-const var992!1 Int)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var961-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var3343=org.apache.commons.lang3.text.StrBuilder, var2891=r1, var992=i0, var3455=i1, var1593=r2, var2643=i3, var961=java.lang.StringIndexOutOfBoundsException, var1607=$r5}
; {org.apache.commons.lang3.text.StrBuilder=var3343, r1=var2891, i0=var992, i1=var3455, r2=var1593, i3=var2643, java.lang.StringIndexOutOfBoundsException=var961, $r5=var1607}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	r2 := @parameter2: char[];	i3 := @parameter3: int;	if i0 >= 0 goto (branch);	$r5 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r5.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r5
;block_num 2