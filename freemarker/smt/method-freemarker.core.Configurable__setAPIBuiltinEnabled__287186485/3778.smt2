(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2912 0)
(declare-sort var2190 0)
(declare-sort var97 0)
(declare-sort var1671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2190_valueOf/1602327315 (Bool) var2190)
(declare-fun apiBuiltinEnabled/-2041385216 (var2912) var2190)
(declare-fun properties/-2041385216 (var2912) var97)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun setProperty/703705272 (var97 String String) var1671)
(declare-const null-var2912 var2912)
(declare-const null-Bool Bool)
(declare-const var3403 var2912) ; Statement: r0 := @this: freemarker.core.Configurable 
(assert (not (= var3403 null-var2912)))
(declare-const var3956 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3956 null-Bool)))
(define-const var119 var2190 (var2190_valueOf/1602327315 var3956)) ; Statement: $r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0) 
(declare-const var3403!1 var2912)
(assert (not (= var3403!1 null-var2912)))
(assert (= (apiBuiltinEnabled/-2041385216 var3403!1) var119)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean apiBuiltinEnabled> = $r1 
(define-const var2119 var97 (properties/-2041385216 var3403!1)) ; Statement: $r2 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var2026 String (String_valueOf/-1973653463 var3956)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
(assert true)
;(assert (setProperty/703705272 var2119 "api_builtin_enabled" var2026)) ; Statement: virtualinvoke $r2.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("api_builtin_enabled", $r3) 

(declare-const var2119!1 var97)
(declare-const var2100 String)
(declare-const var2026!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2190_valueOf/1602327315=([boolean], java.lang.Boolean), apiBuiltinEnabled/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), properties/-2041385216=([freemarker.core.Configurable], java.util.Properties), String_valueOf/-1973653463=([boolean], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object)}
; {var2912=freemarker.core.Configurable, var3403=r0, var3956=z0, var2190=java.lang.Boolean, var119=$r1, var97=java.util.Properties, var2119=$r2, var2026=$r3, var2100="api_builtin_enabled", var1671=java.lang.Object}
; {freemarker.core.Configurable=var2912, r0=var3403, z0=var3956, java.lang.Boolean=var2190, $r1=var119, java.util.Properties=var97, $r2=var2119, $r3=var2026, "api_builtin_enabled"=var2100, java.lang.Object=var1671}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r0 := @this: freemarker.core.Configurable;	z0 := @parameter0: boolean;	$r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0);	r0.<freemarker.core.Configurable: java.lang.Boolean apiBuiltinEnabled> = $r1;	$r2 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	virtualinvoke $r2.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("api_builtin_enabled", $r3);	return
;block_num 1