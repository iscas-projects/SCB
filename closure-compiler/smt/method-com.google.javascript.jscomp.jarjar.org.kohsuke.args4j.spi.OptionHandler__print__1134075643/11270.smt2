(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2783 0)
(declare-sort var1833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1833) String)
(declare-const null-var2783 var2783)
(declare-const null-var1833 var1833)
(declare-const var3955 var2783) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler 
(assert (not (= var3955 null-var2783)))
(declare-const var185 var1833) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var185 null-var1833)))
(define-const var3888 String (String_valueOf/-333372740 var185)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var2783=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var3955=r2, var1833=java.lang.Object, var185=r0, var3888=$r1}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var2783, r2=var3955, java.lang.Object=var1833, r0=var185, $r1=var3888}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler;	r0 := @parameter0: java.lang.Object;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	return $r1
;block_num 1