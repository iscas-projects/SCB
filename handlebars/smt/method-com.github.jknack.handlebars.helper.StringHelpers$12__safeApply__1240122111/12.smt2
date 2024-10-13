(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3450 0)
(declare-sort var1962 0)
(declare-sort var1112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var1962) String)
(declare-fun params/-493974260 (var1112) (Array Int var1962))
(declare-fun String_format/1339386452 (String (Array Int var1962)) String)
(declare-const null-var3450 var3450)
(declare-const null-var1962 var1962)
(declare-const null-var1112 var1112)
(declare-const var838 var3450) ; Statement: r5 := @this: com.github.jknack.handlebars.helper.StringHelpers$12 
(assert (not (= var838 null-var3450)))
(declare-const var1731 var1962) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1731 null-var1962)))
(declare-const var1151 var1112) ; Statement: r1 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var1151 null-var1112)))
(assert true)
(define-const var2802 String (toString/-522406933 var1731)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(define-const var3626 (Array Int var1962) (params/-493974260 var1151)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.Options: java.lang.Object[] params> 
(define-const var2728 String (String_format/1339386452 var2802 var3626)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r3, $r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), params/-493974260=([com.github.jknack.handlebars.Options], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3450=com.github.jknack.handlebars.helper.StringHelpers$12, var838=r5, var1962=java.lang.Object, var1731=r0, var1112=com.github.jknack.handlebars.Options, var1151=r1, var2802=$r3, var3626=$r2, var2728=$r4}
; {com.github.jknack.handlebars.helper.StringHelpers$12=var3450, r5=var838, java.lang.Object=var1962, r0=var1731, com.github.jknack.handlebars.Options=var1112, r1=var1151, $r3=var2802, $r2=var3626, $r4=var2728}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r5 := @this: com.github.jknack.handlebars.helper.StringHelpers$12;	r0 := @parameter0: java.lang.Object;	r1 := @parameter1: com.github.jknack.handlebars.Options;	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = r1.<com.github.jknack.handlebars.Options: java.lang.Object[] params>;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r3, $r2);	return $r4
;block_num 1