(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2882 0)
(declare-sort var1867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateIndex/-1908911276 (var2882 Int) void)
(declare-fun nullText/1389889126 (var2882) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2882 var2882)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3440 var2882) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3440 null-var2882)))
(declare-const var2515 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2515 null-Int)))
(declare-const var404 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var404 null-String)))
(assert true)
;(assert (validateIndex/-1908911276 var3440 var2515)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: void validateIndex(int)>(i0) 

(declare-const var3440!1 var2882)
(declare-const var2515!1 Int)
 ; Statement: if r4 != null goto (branch) 
(assert (not (not (= var404 null-String)))) ; Negate: Cond: r4 != null  
(define-const var404!1 String (nullText/1389889126 var3440!1)) ; Statement: r4 = r0.<org.apache.commons.lang3.text.StrBuilder: java.lang.String nullText> 
(assert true) ; Non Conditional
 ; Statement: if r4 == null goto return r0 
(assert (not (= var404!1 null-String))) ; Negate: Cond: r4 == null  
(assert true)
(define-const var3560 Int (length/-134980193 var404!1)) ; Statement: i1 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if i1 <= 0 goto return r0 
(assert (<= var3560 0)) ; Cond: i1 <= 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {validateIndex/-1908911276=([org.apache.commons.lang3.text.StrBuilder, int], void), nullText/1389889126=([org.apache.commons.lang3.text.StrBuilder], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2882=org.apache.commons.lang3.text.StrBuilder, var3440=r0, var2515=i0, var404=r4, var1867=null_type, var3560=i1}
; {org.apache.commons.lang3.text.StrBuilder=var2882, r0=var3440, i0=var2515, r4=var404, null_type=var1867, i1=var3560}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	r4 := @parameter1: java.lang.String;	virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: void validateIndex(int)>(i0);	if r4 != null goto (branch);	r4 = r0.<org.apache.commons.lang3.text.StrBuilder: java.lang.String nullText>;	if r4 == null goto return r0;	i1 = virtualinvoke r4.<java.lang.String: int length()>();	if i1 <= 0 goto return r0;	return r0
;block_num 5