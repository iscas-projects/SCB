(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3393 0)
(declare-sort var1184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun OS_NAME/1468383499 (var3393) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3393 var3393)
(declare-const null-String String)
(declare-const var1612 var3393) ; Statement: r0 := @this: cn.hutool.system.OsInfo 
(assert (not (= var1612 null-var3393)))
(declare-const var2155 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2155 null-String)))
(define-const var2077 String (OS_NAME/1468383499 var1612)) ; Statement: $r1 = r0.<cn.hutool.system.OsInfo: java.lang.String OS_NAME> 
 ; Statement: if $r1 != null goto $r3 = r0.<cn.hutool.system.OsInfo: java.lang.String OS_NAME> 
(assert (not (= var2077 null-String))) ; Cond: $r1 != null 
(define-const var713 String (OS_NAME/1468383499 var1612)) ; Statement: $r3 = r0.<cn.hutool.system.OsInfo: java.lang.String OS_NAME> 
(assert true)
(define-const var1569 Bool (startsWith/-1785782452 var713 var2155)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>(r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {OS_NAME/1468383499=([cn.hutool.system.OsInfo], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3393=cn.hutool.system.OsInfo, var1612=r0, var2155=r2, var1184=null_type, var2077=$r1, var713=$r3, var1569=$z0}
; {cn.hutool.system.OsInfo=var3393, r0=var1612, r2=var2155, null_type=var1184, $r1=var2077, $r3=var713, $z0=var1569}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.system.OsInfo;	r2 := @parameter0: java.lang.String;	$r1 = r0.<cn.hutool.system.OsInfo: java.lang.String OS_NAME>;	if $r1 != null goto $r3 = r0.<cn.hutool.system.OsInfo: java.lang.String OS_NAME>;	$r3 = r0.<cn.hutool.system.OsInfo: java.lang.String OS_NAME>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>(r2);	return $z0
;block_num 2