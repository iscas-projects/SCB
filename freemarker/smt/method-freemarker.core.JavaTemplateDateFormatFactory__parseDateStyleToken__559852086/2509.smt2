(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var427 0)
(declare-sort var1482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var427 var427)
(declare-const null-String String)
(declare-const var2726 var427) ; Statement: r5 := @this: freemarker.core.JavaTemplateDateFormatFactory 
(assert (not (= var2726 null-var427)))
(declare-const var782 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var782 null-String)))
(define-const var3089 String "short") ; Statement: $r1 = "short" 
(assert true)
(define-const var301 Bool (= var3089 var782)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "medium" 
(assert (not (= (ite var301 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 3 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var427=freemarker.core.JavaTemplateDateFormatFactory, var2726=r5, var782=r0, var1482=null_type, var3089=$r1, var301=$z0}
; {freemarker.core.JavaTemplateDateFormatFactory=var427, r5=var2726, r0=var782, null_type=var1482, $r1=var3089, $z0=var301}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.core.JavaTemplateDateFormatFactory;	r0 := @parameter0: java.lang.String;	$r1 = "short";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "medium";	return 3
;block_num 2