(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1782 0)
(declare-sort var1694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1694_getRuntimeMXBean/803422224 () var1782)
(declare-fun var1782_getName/-2069733447 (var1782) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun Int_parseLong/-436876155 (String) Int)
(define-const var308 var1782 var1694_getRuntimeMXBean/803422224) ; Statement: $r0 = staticinvoke <cn.hutool.system.SystemUtil: java.lang.management.RuntimeMXBean getRuntimeMXBean()>() 
(define-const var3612 String (var1782_getName/-2069733447 var308)) ; Statement: $r1 = interfaceinvoke $r0.<java.lang.management.RuntimeMXBean: java.lang.String getName()>() 
(assert true)
(define-const var2836 (Array Int String) (split/-636890950 var3612 "@")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("@") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3612 "@") i) (re.++ (re.* re.all) (str.to_re "@") (re.* re.all))))))
(define-const var312 String (select var2836 0)) ; Statement: $r3 = $r2[0] 
(define-const var2674 Int (Int_parseLong/-436876155 var312)) ; Statement: $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r3) 
 ; Statement: return $l0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1694_getRuntimeMXBean/803422224=([], java.lang.management.RuntimeMXBean), var1782_getName/-2069733447=([java.lang.management.RuntimeMXBean], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), Int_parseLong/-436876155=([java.lang.String], long)}
; {var1782=java.lang.management.RuntimeMXBean, var1694=cn.hutool.system.SystemUtil, var308=$r0, var3612=$r1, var2836=$r2, var312=$r3, var2674=$l0}
; {java.lang.management.RuntimeMXBean=var1782, cn.hutool.system.SystemUtil=var1694, $r0=var308, $r1=var3612, $r2=var2836, $r3=var312, $l0=var2674}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts $r0 = staticinvoke <cn.hutool.system.SystemUtil: java.lang.management.RuntimeMXBean getRuntimeMXBean()>();	$r1 = interfaceinvoke $r0.<java.lang.management.RuntimeMXBean: java.lang.String getName()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("@");	$r3 = $r2[0];	$l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r3);	return $l0
;block_num 1