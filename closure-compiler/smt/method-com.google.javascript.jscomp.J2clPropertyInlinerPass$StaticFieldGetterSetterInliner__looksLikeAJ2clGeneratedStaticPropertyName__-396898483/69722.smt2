(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3456 0)
(declare-sort var2588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3456 var3456)
(declare-const null-String String)
(declare-const var849 var3456) ; Statement: r3 := @this: com.google.javascript.jscomp.J2clPropertyInlinerPass$StaticFieldGetterSetterInliner 
(assert (not (= var849 null-var3456)))
(declare-const var3608 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3608 null-String)))
(declare-const var934 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var934 null-String)))
(assert true)
(define-const var3633 Bool (startsWith/-1785782452 var934 var3608)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= (ite var3633 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3456=com.google.javascript.jscomp.J2clPropertyInlinerPass$StaticFieldGetterSetterInliner, var849=r3, var3608=r1, var2588=null_type, var934=r0, var3633=$z0}
; {com.google.javascript.jscomp.J2clPropertyInlinerPass$StaticFieldGetterSetterInliner=var3456, r3=var849, r1=var3608, null_type=var2588, r0=var934, $z0=var3633}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.J2clPropertyInlinerPass$StaticFieldGetterSetterInliner;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z0 != 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	return 0
;block_num 2