(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3037 0)
(declare-sort var961 0)
(declare-sort var3316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3316_getFieldName/1272558918 (var961) String)
(declare-const null-String String)
(declare-const null-var961 var961)
(declare-const var1176 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1176 null-String)))
(declare-const var925 var961) ; Statement: r1 := @parameter1: java.lang.reflect.Field 
(assert (not (= var925 null-var961)))
(define-const var210 String (var3316_getFieldName/1272558918 var925)) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.ReflectUtil: java.lang.String getFieldName(java.lang.reflect.Field)>(r1) 
(assert true)
(define-const var1361 Bool (= var1176 var210)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3316_getFieldName/1272558918=([java.lang.reflect.Field], java.lang.String)}
; {var1176=r0, var3037=null_type, var961=java.lang.reflect.Field, var925=r1, var3316=cn.hutool.core.util.ReflectUtil, var210=$r2, var1361=$z0}
; {r0=var1176, null_type=var3037, java.lang.reflect.Field=var961, r1=var925, cn.hutool.core.util.ReflectUtil=var3316, $r2=var210, $z0=var1361}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.reflect.Field;	$r2 = staticinvoke <cn.hutool.core.util.ReflectUtil: java.lang.String getFieldName(java.lang.reflect.Field)>(r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1