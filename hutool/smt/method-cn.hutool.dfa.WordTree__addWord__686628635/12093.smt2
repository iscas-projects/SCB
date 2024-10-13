(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3546 0)
(declare-sort var1149 0)
(declare-sort var3200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charFilter/1997501437 (var3546) var3200)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3546 var3546)
(declare-const null-String String)
(declare-const var1480 var3546) ; Statement: r0 := @this: cn.hutool.dfa.WordTree 
(assert (not (= var1480 null-var3546)))
(declare-const var3601 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3601 null-String)))
(define-const var2790 var3200 (charFilter/1997501437 var1480)) ; Statement: r1 = r0.<cn.hutool.dfa.WordTree: cn.hutool.core.lang.Filter charFilter> 
(define-const var3423 var3546 null-var3546) ; Statement: r9 = null 
(define-const var3843 var3546 var1480) ; Statement: r10 = r0 
(define-const var1372 Int 0) ; Statement: c1 = 0 
(assert true)
(define-const var1298 Int (length/-134980193 var3601)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3719 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto (branch) 
(assert (>= var3719 var1298)) ; Cond: i2 >= i0 
 ; Statement: if null == r9 goto return r0 
(assert (= null-var3546 var3423)) ; Cond: null == r9 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {charFilter/1997501437=([cn.hutool.dfa.WordTree], cn.hutool.core.lang.Filter), length/-134980193=([java.lang.String], int)}
; {var3546=cn.hutool.dfa.WordTree, var1480=r0, var3601=r2, var1149=null_type, var3200=cn.hutool.core.lang.Filter, var2790=r1, var3423=r9, var3843=r10, var1372=c1, var1298=i0, var3719=i2}
; {cn.hutool.dfa.WordTree=var3546, r0=var1480, r2=var3601, null_type=var1149, cn.hutool.core.lang.Filter=var3200, r1=var2790, r9=var3423, r10=var3843, c1=var1372, i0=var1298, i2=var3719}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.dfa.WordTree;	r2 := @parameter0: java.lang.String;	r1 = r0.<cn.hutool.dfa.WordTree: cn.hutool.core.lang.Filter charFilter>;	r9 = null;	r10 = r0;	c1 = 0;	i0 = virtualinvoke r2.<java.lang.String: int length()>();	i2 = 0;	if i2 >= i0 goto (branch);	if null == r9 goto return r0;	return r0
;block_num 4