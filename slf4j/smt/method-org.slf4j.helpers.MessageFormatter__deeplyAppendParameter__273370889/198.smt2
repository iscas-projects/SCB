(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2717 0)
(declare-sort var3137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-var2717 var2717)
(declare-const null-var3137 var3137)
(declare-const var991 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var991 null-String)))
(declare-const var1591 var2717) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1591 null-var2717)))
(declare-const var1294 var3137) ; Statement: r3 := @parameter2: java.util.Map 
(assert (not (= var1294 null-var3137)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var1591 null-var2717)))) ; Negate: Cond: r0 != null  
(assert true)
;(assert (append/672562846 var991 "null")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(declare-const var991!1 String)
(assert (= var991!1 (str.++ var991 "null")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var991=r2, var2717=java.lang.Object, var1591=r0, var3137=java.util.Map, var1294=r3}
; {r2=var991, java.lang.Object=var2717, r0=var1591, java.util.Map=var3137, r3=var1294}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.Object;	r3 := @parameter2: java.util.Map;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	return
;block_num 2