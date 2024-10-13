(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3746_getProperty/258823597 (String) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(define-const var2324 String (var3746_getProperty/258823597 "java.class.path")) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.class.path") 
(define-const var1154 String (var3746_getProperty/258823597 "path.separator")) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("path.separator") 
(assert true)
(define-const var114 (Array Int String) (split/-636890950 var2324 var1154)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String[] split(java.lang.String)>($r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3746_getProperty/258823597=([java.lang.String], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[])}
; {var3746=java.lang.System, var2324=$r1, var1154=$r0, var114=$r2}
; {java.lang.System=var3746, $r1=var2324, $r0=var1154, $r2=var114}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.class.path");	$r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("path.separator");	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String[] split(java.lang.String)>($r0);	return $r2
;block_num 1