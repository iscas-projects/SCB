(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1898 0)
(declare-sort var3961 0)
(declare-sort var3643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun next/-1212382432 (var3643) Int)
(declare-fun cast-from-var1898-to-var3643 (var1898) var3643)
(declare-const null-var1898 var1898)
(declare-const null-String String)
(declare-const var3751 var1898) ; Statement: r2 := @this: cn.hutool.json.XMLTokener 
(assert (not (= var3751 null-var1898)))
(declare-const var694 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var694 null-String)))
(define-const var370 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var1573 Int (length/-134980193 var694)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1728 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[i0] 
(define-const var2445 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto i6 = i3 
(assert (not (>= var2445 var1573))) ; Negate: Cond: i4 >= i0  
(assert true)
(define-const var473 Int (next/-1212382432 (cast-from-var1898-to-var3643 var3751))) ; Statement: c5 = virtualinvoke r2.<cn.hutool.json.XMLTokener: char next()>() 
 ; Statement: if c5 != 0 goto r1[i4] = c5 
(assert (not (not (= var473 0)))) ; Negate: Cond: c5 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), next/-1212382432=([cn.hutool.json.JSONTokener], char), cast-from-var1898-to-var3643=([cn.hutool.json.XMLTokener], cn.hutool.json.JSONTokener)}
; {var1898=cn.hutool.json.XMLTokener, var3751=r2, var694=r0, var3961=null_type, var370=i3, var1573=i0, var1728=r1, var2445=i4, var3643=cn.hutool.json.JSONTokener, var473=c5}
; {cn.hutool.json.XMLTokener=var1898, r2=var3751, r0=var694, null_type=var3961, i3=var370, i0=var1573, r1=var1728, i4=var2445, cn.hutool.json.JSONTokener=var3643, c5=var473}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: cn.hutool.json.XMLTokener;	r0 := @parameter0: java.lang.String;	i3 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = newarray (char)[i0];	i4 = 0;	if i4 >= i0 goto i6 = i3;	c5 = virtualinvoke r2.<cn.hutool.json.XMLTokener: char next()>();	if c5 != 0 goto r1[i4] = c5;	return 0
;block_num 4