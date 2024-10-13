(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var434 0)
(declare-sort var694 0)
(declare-sort var3228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var694 var694)
(declare-const var3228-UTC var694)
(declare-const var2187 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2187 null-String)))
(declare-const var988 var694) ; Statement: r5 := @parameter1: java.util.TimeZone 
(assert (not (= var988 null-var694)))
 ; Statement: if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Z") 
(assert (not (= var2187 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2842 Bool (= var2187 "Z")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Z") 
 ; Statement: if $z0 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (= (ite var2842 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1456 var694 var3228-UTC) ; Statement: $r4 = <freemarker.template.utility.DateUtil: java.util.TimeZone UTC> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2187=r0, var434=null_type, var694=java.util.TimeZone, var988=r5, var2842=$z0, var3228=freemarker.template.utility.DateUtil, var1456=$r4}
; {r0=var2187, null_type=var434, java.util.TimeZone=var694, r5=var988, $z0=var2842, freemarker.template.utility.DateUtil=var3228, $r4=var1456}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.util.TimeZone;	if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Z");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Z");	if $z0 == 0 goto $r8 = new java.lang.StringBuilder;	$r4 = <freemarker.template.utility.DateUtil: java.util.TimeZone UTC>;	return $r4
;block_num 3