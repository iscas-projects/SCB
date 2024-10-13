(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1555 0)
(declare-sort var3763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateIndex/-1908911276 (var1555 Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1555 var1555)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var705 var1555) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var705 null-var1555)))
(declare-const var2944 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2944 null-Int)))
(declare-const var94 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var94 null-String)))
(assert true)
;(assert (validateIndex/-1908911276 var705 var2944)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: void validateIndex(int)>(i0) 

(declare-const var705!1 var1555)
(declare-const var2944!1 Int)
 ; Statement: if r4 != null goto (branch) 
(assert (not (= var94 null-String))) ; Cond: r4 != null 
 ; Statement: if r4 == null goto return r0 
(assert (not (= var94 null-String))) ; Negate: Cond: r4 == null  
(assert true)
(define-const var569 Int (length/-134980193 var94)) ; Statement: i1 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if i1 <= 0 goto return r0 
(assert (<= var569 0)) ; Cond: i1 <= 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {validateIndex/-1908911276=([org.apache.commons.lang3.text.StrBuilder, int], void), length/-134980193=([java.lang.String], int)}
; {var1555=org.apache.commons.lang3.text.StrBuilder, var705=r0, var2944=i0, var94=r4, var3763=null_type, var569=i1}
; {org.apache.commons.lang3.text.StrBuilder=var1555, r0=var705, i0=var2944, r4=var94, null_type=var3763, i1=var569}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	r4 := @parameter1: java.lang.String;	virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: void validateIndex(int)>(i0);	if r4 != null goto (branch);	if r4 == null goto return r0;	i1 = virtualinvoke r4.<java.lang.String: int length()>();	if i1 <= 0 goto return r0;	return r0
;block_num 4