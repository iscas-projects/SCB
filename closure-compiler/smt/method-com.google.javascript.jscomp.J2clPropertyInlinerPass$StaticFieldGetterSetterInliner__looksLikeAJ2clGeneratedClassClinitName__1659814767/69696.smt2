(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1318 0)
(declare-sort var1214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1318 var1318)
(declare-const null-String String)
(declare-const var2529 var1318) ; Statement: r3 := @this: com.google.javascript.jscomp.J2clPropertyInlinerPass$StaticFieldGetterSetterInliner 
(assert (not (= var2529 null-var1318)))
(declare-const var2127 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2127 null-String)))
(declare-const var1669 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1669 null-String)))
(assert true)
(define-const var3114 Bool (startsWith/-1785782452 var1669 var2127)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= (ite var3114 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1318=com.google.javascript.jscomp.J2clPropertyInlinerPass$StaticFieldGetterSetterInliner, var2529=r3, var2127=r1, var1214=null_type, var1669=r0, var3114=$z0}
; {com.google.javascript.jscomp.J2clPropertyInlinerPass$StaticFieldGetterSetterInliner=var1318, r3=var2529, r1=var2127, null_type=var1214, r0=var1669, $z0=var3114}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.J2clPropertyInlinerPass$StaticFieldGetterSetterInliner;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z0 != 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	return 0
;block_num 2