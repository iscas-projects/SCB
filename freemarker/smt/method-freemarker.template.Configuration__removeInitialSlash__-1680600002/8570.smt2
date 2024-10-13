(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort var806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3110 var3110)
(declare-const null-String String)
(declare-const var2822 var3110) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var2822 null-var3110)))
(declare-const var1892 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1892 null-String)))
(assert true)
(define-const var777 Bool (startsWith/-1785782452 var1892 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r2 = r0 
(assert (= (ite var777 1 0) 0)) ; Cond: $z0 == 0 
(define-const var66 String var1892) ; Statement: $r2 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3110=freemarker.template.Configuration, var2822=r1, var1892=r0, var806=null_type, var777=$z0, var66=$r2}
; {freemarker.template.Configuration=var3110, r1=var2822, r0=var1892, null_type=var806, $z0=var777, $r2=var66}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r2 = r0;	$r2 = r0;	return $r2
;block_num 3