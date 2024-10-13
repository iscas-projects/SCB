(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1457 0)
(declare-sort var1763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun JAVA_VERSION/428432393 (var1457) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1457 var1457)
(declare-const null-String String)
(declare-const var2683 var1457) ; Statement: r0 := @this: cn.hutool.system.JavaInfo 
(assert (not (= var2683 null-var1457)))
(declare-const var3651 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3651 null-String)))
(define-const var1557 String (JAVA_VERSION/428432393 var2683)) ; Statement: $r1 = r0.<cn.hutool.system.JavaInfo: java.lang.String JAVA_VERSION> 
 ; Statement: if $r1 != null goto $r3 = r0.<cn.hutool.system.JavaInfo: java.lang.String JAVA_VERSION> 
(assert (not (= var1557 null-String))) ; Cond: $r1 != null 
(define-const var2078 String (JAVA_VERSION/428432393 var2683)) ; Statement: $r3 = r0.<cn.hutool.system.JavaInfo: java.lang.String JAVA_VERSION> 
(assert true)
(define-const var3317 Bool (startsWith/-1785782452 var2078 var3651)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>(r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {JAVA_VERSION/428432393=([cn.hutool.system.JavaInfo], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1457=cn.hutool.system.JavaInfo, var2683=r0, var3651=r2, var1763=null_type, var1557=$r1, var2078=$r3, var3317=$z0}
; {cn.hutool.system.JavaInfo=var1457, r0=var2683, r2=var3651, null_type=var1763, $r1=var1557, $r3=var2078, $z0=var3317}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.system.JavaInfo;	r2 := @parameter0: java.lang.String;	$r1 = r0.<cn.hutool.system.JavaInfo: java.lang.String JAVA_VERSION>;	if $r1 != null goto $r3 = r0.<cn.hutool.system.JavaInfo: java.lang.String JAVA_VERSION>;	$r3 = r0.<cn.hutool.system.JavaInfo: java.lang.String JAVA_VERSION>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>(r2);	return $z0
;block_num 2