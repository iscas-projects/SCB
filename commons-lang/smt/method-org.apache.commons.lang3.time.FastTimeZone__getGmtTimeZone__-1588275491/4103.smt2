(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3864 0)
(declare-sort var99 0)
(declare-sort var2786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2786-GREENWICH var99)
(declare-const var3687 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3687 null-String)))
(define-const var509 String "Z") ; Statement: $r1 = "Z" 
(assert true)
(define-const var2768 Bool (= var509 var3687)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = <org.apache.commons.lang3.time.FastTimeZone: java.util.TimeZone GREENWICH> 
(assert (not (= (ite var2768 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1411 var99 var2786-GREENWICH) ; Statement: $r2 = <org.apache.commons.lang3.time.FastTimeZone: java.util.TimeZone GREENWICH> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3687=r0, var3864=null_type, var509=$r1, var2768=$z0, var99=java.util.TimeZone, var2786=org.apache.commons.lang3.time.FastTimeZone, var1411=$r2}
; {r0=var3687, null_type=var3864, $r1=var509, $z0=var2768, java.util.TimeZone=var99, org.apache.commons.lang3.time.FastTimeZone=var2786, $r2=var1411}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "Z";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $r2 = <org.apache.commons.lang3.time.FastTimeZone: java.util.TimeZone GREENWICH>;	$r2 = <org.apache.commons.lang3.time.FastTimeZone: java.util.TimeZone GREENWICH>;	return $r2
;block_num 2