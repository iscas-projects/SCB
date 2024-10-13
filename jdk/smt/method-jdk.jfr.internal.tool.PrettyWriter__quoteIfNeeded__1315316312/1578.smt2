(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1136 0)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3767) String)
(declare-const null-var1136 var1136)
(declare-const null-var3767 var3767)
(declare-const var2787 var1136) ; Statement: r7 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var2787 null-var1136)))
(declare-const var1835 var3767) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1835 null-var3767)))
(define-const var3780 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert (= (ite var3780 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2812 String (String_valueOf/-333372740 var1835)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var1136=jdk.jfr.internal.tool.PrettyWriter, var2787=r7, var3767=java.lang.Object, var1835=r0, var3780=$z0, var2812=$r1}
; {jdk.jfr.internal.tool.PrettyWriter=var1136, r7=var2787, java.lang.Object=var3767, r0=var1835, $z0=var3780, $r1=var2812}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r7 := @this: jdk.jfr.internal.tool.PrettyWriter;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	return $r1
;block_num 2