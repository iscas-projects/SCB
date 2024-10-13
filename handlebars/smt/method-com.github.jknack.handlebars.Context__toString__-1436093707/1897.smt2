(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3498 0)
(declare-sort var2157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun model/1707031581 (var3498) var2157)
(declare-fun String_valueOf/-333372740 (var2157) String)
(declare-const null-var3498 var3498)
(declare-const var122 var3498) ; Statement: r0 := @this: com.github.jknack.handlebars.Context 
(assert (not (= var122 null-var3498)))
(define-const var3461 var2157 (model/1707031581 var122)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Context: java.lang.Object model> 
(define-const var148 String (String_valueOf/-333372740 var3461)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {model/1707031581=([com.github.jknack.handlebars.Context], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var3498=com.github.jknack.handlebars.Context, var122=r0, var2157=java.lang.Object, var3461=$r1, var148=$r2}
; {com.github.jknack.handlebars.Context=var3498, r0=var122, java.lang.Object=var2157, $r1=var3461, $r2=var148}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Context;	$r1 = r0.<com.github.jknack.handlebars.Context: java.lang.Object model>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1