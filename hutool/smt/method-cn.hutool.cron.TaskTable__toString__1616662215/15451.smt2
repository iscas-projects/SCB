(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1492 0)
(declare-sort var921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var921_builder/-311177978 () String)
(declare-fun size/2018654575 (var1492) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1492 var1492)
(declare-const var455 var1492) ; Statement: r1 := @this: cn.hutool.cron.TaskTable 
(assert (not (= var455 null-var1492)))
(define-const var3650 String var921_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(define-const var749 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3639 Int (size/2018654575 var455)) ; Statement: $i0 = r1.<cn.hutool.cron.TaskTable: int size> 
 ; Statement: if i1 >= $i0 goto $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var749 var3639)) ; Cond: i1 >= $i0 
(assert true)
(define-const var2270 String (toString/-2075883882 var3650)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var921_builder/-311177978=([], java.lang.StringBuilder), size/2018654575=([cn.hutool.cron.TaskTable], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1492=cn.hutool.cron.TaskTable, var455=r1, var921=cn.hutool.core.util.StrUtil, var3650=r0, var749=i1, var3639=$i0, var2270=$r2}
; {cn.hutool.cron.TaskTable=var1492, r1=var455, cn.hutool.core.util.StrUtil=var921, r0=var3650, i1=var749, $i0=var3639, $r2=var2270}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.cron.TaskTable;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	i1 = 0;	$i0 = r1.<cn.hutool.cron.TaskTable: int size>;	if i1 >= $i0 goto $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3