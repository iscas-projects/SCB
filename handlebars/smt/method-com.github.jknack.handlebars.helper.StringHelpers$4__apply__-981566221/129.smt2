(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1713 0)
(declare-sort var638 0)
(declare-sort var1236 0)
(declare-sort var881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var881_isEmpty/-871121770 (var638) Bool)
(declare-fun String_valueOf/-333372740 (var638) String)
(declare-const null-var1713 var1713)
(declare-const null-var638 var638)
(declare-const null-var1236 var1236)
(declare-const var2223 var1713) ; Statement: r4 := @this: com.github.jknack.handlebars.helper.StringHelpers$4 
(assert (not (= var2223 null-var1713)))
(declare-const var1157 var638) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1157 null-var638)))
(declare-const var1959 var1236) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var1959 null-var1236)))
(define-const var811 Bool (var881_isEmpty/-871121770 var1157)) ; Statement: $z0 = staticinvoke <com.github.jknack.handlebars.Handlebars$Utils: boolean isEmpty(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert (= (ite var811 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2254 String (String_valueOf/-333372740 var1157)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var881_isEmpty/-871121770=([java.lang.Object], boolean), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var1713=com.github.jknack.handlebars.helper.StringHelpers$4, var2223=r4, var638=java.lang.Object, var1157=r0, var1236=com.github.jknack.handlebars.Options, var1959=r2, var881=com.github.jknack.handlebars.Handlebars$Utils, var811=$z0, var2254=$r1}
; {com.github.jknack.handlebars.helper.StringHelpers$4=var1713, r4=var2223, java.lang.Object=var638, r0=var1157, com.github.jknack.handlebars.Options=var1236, r2=var1959, com.github.jknack.handlebars.Handlebars$Utils=var881, $z0=var811, $r1=var2254}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.helper.StringHelpers$4;	r0 := @parameter0: java.lang.Object;	r2 := @parameter1: com.github.jknack.handlebars.Options;	$z0 = staticinvoke <com.github.jknack.handlebars.Handlebars$Utils: boolean isEmpty(java.lang.Object)>(r0);	if $z0 == 0 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	return $r1
;block_num 2