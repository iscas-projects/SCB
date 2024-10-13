(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const var1428 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1428 null-String)))
(declare-const var775 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var775 null-String)))
(assert true)
(define-const var3104 String (append/672562846 var1428 var775)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1428!1 String)
(assert (= var1428!1 (str.++ var1428 var775)))
(assert true)
;(assert (append/672562846 var3104 "\n")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3104!1 String)
(assert (= var3104!1 (str.++ var3104 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1428=r0, var775=r1, var1744=null_type, var3104=$r2}
; {r0=var1428, r1=var775, null_type=var1744, $r2=var3104}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 1