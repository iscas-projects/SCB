(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var273 0)
(declare-sort var1056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toNanos/-1386218734 (var1056) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var273 var273)
(declare-const null-var1056 var1056)
(declare-const var3320 var273) ; Statement: r2 := @this: org.hibernate.type.descriptor.java.DurationJavaDescriptor 
(assert (not (= var3320 null-var273)))
(declare-const var2628 var1056) ; Statement: r0 := @parameter0: java.time.Duration 
(assert (not (= var2628 null-var1056)))
 ; Statement: if r0 != null goto $l0 = virtualinvoke r0.<java.time.Duration: long toNanos()>() 
(assert (not (= var2628 null-var1056))) ; Cond: r0 != null 
(assert true)
(define-const var1080 Int (toNanos/-1386218734 var2628)) ; Statement: $l0 = virtualinvoke r0.<java.time.Duration: long toNanos()>() 
(define-const var2185 String (String_valueOf/-107395227 var1080)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toNanos/-1386218734=([java.time.Duration], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var273=org.hibernate.type.descriptor.java.DurationJavaDescriptor, var3320=r2, var1056=java.time.Duration, var2628=r0, var1080=$l0, var2185=$r1}
; {org.hibernate.type.descriptor.java.DurationJavaDescriptor=var273, r2=var3320, java.time.Duration=var1056, r0=var2628, $l0=var1080, $r1=var2185}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r2 := @this: org.hibernate.type.descriptor.java.DurationJavaDescriptor;	r0 := @parameter0: java.time.Duration;	if r0 != null goto $l0 = virtualinvoke r0.<java.time.Duration: long toNanos()>();	$l0 = virtualinvoke r0.<java.time.Duration: long toNanos()>();	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r1
;block_num 2