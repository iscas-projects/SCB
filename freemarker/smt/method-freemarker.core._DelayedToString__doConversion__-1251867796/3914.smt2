(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2818 0)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3937) String)
(declare-const null-var2818 var2818)
(declare-const null-var3937 var3937)
(declare-const var1912 var2818) ; Statement: r2 := @this: freemarker.core._DelayedToString 
(assert (not (= var1912 null-var2818)))
(declare-const var3074 var3937) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3074 null-var3937)))
(define-const var624 String (String_valueOf/-333372740 var3074)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var2818=freemarker.core._DelayedToString, var1912=r2, var3937=java.lang.Object, var3074=r0, var624=$r1}
; {freemarker.core._DelayedToString=var2818, r2=var1912, java.lang.Object=var3937, r0=var3074, $r1=var624}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r2 := @this: freemarker.core._DelayedToString;	r0 := @parameter0: java.lang.Object;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	return $r1
;block_num 1