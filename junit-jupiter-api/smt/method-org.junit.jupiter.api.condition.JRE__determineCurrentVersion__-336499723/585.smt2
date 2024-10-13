(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2184 0)
(declare-sort var2468 0)
(declare-sort var3137 0)
(declare-sort var2976 0)
(declare-sort var3000 0)
(declare-sort var2057 0)
(declare-sort var2253 0)
(declare-sort var342 0)
(declare-sort var1898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3137!class ClassObject)
(declare-fun var2184_getProperty/258823597 (String) String)
(declare-fun var2468_isBlank/1722812613 (String) Bool)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var342_bootstrap$/798026707 () var2253)
(declare-fun var3000_debug/-336331242 (var3000 var1898 var2253) void)
(declare-fun cast-from-var2976-to-var1898 (var2976) var1898)
(declare-const null-var2976 var2976)
(declare-const var2057-logger var3000)
(define-const var3597 String (var2184_getProperty/258823597 "java.version")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version") 
(define-const var3404 Bool (var2468_isBlank/1722812613 var3597)) ; Statement: z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isBlank(java.lang.String)>(r0) 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var3404 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z0 != 0 goto $r2 = class "Ljava/lang/Runtime;" 
(assert (not (= (ite var3404 1 0) 0))) ; Cond: z0 != 0 
(define-const var201 ClassObject var3137!class) ; Statement: $r2 = class "Ljava/lang/Runtime;" 
(define-const var3264 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1691 var2976) ; Statement: $r30 := @caughtexception 
(assert (not (= var1691 null-var2976)))
(define-const var3185 var3000 var2057-logger) ; Statement: $r31 = <org.junit.jupiter.api.condition.JRE: org.junit.platform.commons.logging.Logger logger> 
(define-const var1595 var2253 var342_bootstrap$/798026707) ; Statement: $r32 = staticinvoke <org.junit.jupiter.api.condition.JRE$lambda_determineCurrentVersion_1__87: java.util.function.Supplier bootstrap$()>() 
;(assert (var3000_debug/-336331242 var3185 (cast-from-var2976-to-var1898 var1691) var1595)) ; Statement: interfaceinvoke $r31.<org.junit.platform.commons.logging.Logger: void debug(java.lang.Throwable,java.util.function.Supplier)>($r30, $r32) 

(declare-const var3185!1 var3000)
(declare-const var1691!1 var2976)
(declare-const var1595!1 var2253)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2184_getProperty/258823597=([java.lang.String], java.lang.String), var2468_isBlank/1722812613=([java.lang.String], boolean), arr-ClassObject-init=([], java.lang.Class[]), var342_bootstrap$/798026707=([], java.util.function.Supplier), var3000_debug/-336331242=([org.junit.platform.commons.logging.Logger, java.lang.Throwable, java.util.function.Supplier], void), cast-from-var2976-to-var1898=([java.lang.Exception], java.lang.Throwable)}
; {var2184=java.lang.System, var3597=r0, var2468=org.junit.platform.commons.util.StringUtils, var3404=z0, var3137=java.lang.Runtime, var201=$r2, var3264=$r1, var2976=java.lang.Exception, var1691=$r30, var3000=org.junit.platform.commons.logging.Logger, var2057=org.junit.jupiter.api.condition.JRE, var3185=$r31, var2253=java.util.function.Supplier, var342=org.junit.jupiter.api.condition.JRE$lambda_determineCurrentVersion_1__87, var1595=$r32, var1898=java.lang.Throwable}
; {java.lang.System=var2184, r0=var3597, org.junit.platform.commons.util.StringUtils=var2468, z0=var3404, java.lang.Runtime=var3137, $r2=var201, $r1=var3264, java.lang.Exception=var2976, $r30=var1691, org.junit.platform.commons.logging.Logger=var3000, org.junit.jupiter.api.condition.JRE=var2057, $r31=var3185, java.util.function.Supplier=var2253, org.junit.jupiter.api.condition.JRE$lambda_determineCurrentVersion_1__87=var342, $r32=var1595, java.lang.Throwable=var1898}
;seq 
;cnt {}
;stmts r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version");	z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isBlank(java.lang.String)>(r0);	if z0 == 0 goto (branch);	if z0 != 0 goto $r2 = class "Ljava/lang/Runtime;";	$r2 = class "Ljava/lang/Runtime;";	$r1 = newarray (java.lang.Class)[0];	$r30 := @caughtexception;	$r31 = <org.junit.jupiter.api.condition.JRE: org.junit.platform.commons.logging.Logger logger>;	$r32 = staticinvoke <org.junit.jupiter.api.condition.JRE$lambda_determineCurrentVersion_1__87: java.util.function.Supplier bootstrap$()>();	interfaceinvoke $r31.<org.junit.platform.commons.logging.Logger: void debug(java.lang.Throwable,java.util.function.Supplier)>($r30, $r32);	return null
;block_num 4