(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2303 0)
(declare-sort var271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityStart/1715190791 (var2303) String)
(declare-const null-var2303 var2303)
(declare-const null-String String)
(declare-const var1776 var2303) ; Statement: r0 := @this: jdk.xml.internal.XMLLimitAnalyzer 
(assert (not (= var1776 null-var2303)))
(declare-const var302 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var302 null-String)))
(define-const var1466 String (entityStart/1715190791 var1776)) ; Statement: $r1 = r0.<jdk.xml.internal.XMLLimitAnalyzer: java.lang.String entityStart> 
 ; Statement: if $r1 != null goto $r3 = r0.<jdk.xml.internal.XMLLimitAnalyzer: java.lang.String entityStart> 
(assert (not (= var1466 null-String))) ; Cond: $r1 != null 
(define-const var150 String (entityStart/1715190791 var1776)) ; Statement: $r3 = r0.<jdk.xml.internal.XMLLimitAnalyzer: java.lang.String entityStart> 
(assert true)
(define-const var2134 Bool (= var150 var302)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {entityStart/1715190791=([jdk.xml.internal.XMLLimitAnalyzer], java.lang.String)}
; {var2303=jdk.xml.internal.XMLLimitAnalyzer, var1776=r0, var302=r2, var271=null_type, var1466=$r1, var150=$r3, var2134=$z0}
; {jdk.xml.internal.XMLLimitAnalyzer=var2303, r0=var1776, r2=var302, null_type=var271, $r1=var1466, $r3=var150, $z0=var2134}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.xml.internal.XMLLimitAnalyzer;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.xml.internal.XMLLimitAnalyzer: java.lang.String entityStart>;	if $r1 != null goto $r3 = r0.<jdk.xml.internal.XMLLimitAnalyzer: java.lang.String entityStart>;	$r3 = r0.<jdk.xml.internal.XMLLimitAnalyzer: java.lang.String entityStart>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	return $z0
;block_num 2