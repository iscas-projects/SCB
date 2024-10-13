(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2337 0)
(declare-sort var1062 0)
(declare-sort var3932 0)
(declare-sort var2393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1062_valueOf/1602327315 (Bool) var1062)
(declare-fun showErrorTips/-2041385216 (var2337) var1062)
(declare-fun properties/-2041385216 (var2337) var3932)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun setProperty/703705272 (var3932 String String) var2393)
(declare-const null-var2337 var2337)
(declare-const null-Bool Bool)
(declare-const var2234 var2337) ; Statement: r0 := @this: freemarker.core.Configurable 
(assert (not (= var2234 null-var2337)))
(declare-const var534 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var534 null-Bool)))
(define-const var3448 var1062 (var1062_valueOf/1602327315 var534)) ; Statement: $r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0) 
(declare-const var2234!1 var2337)
(assert (not (= var2234!1 null-var2337)))
(assert (= (showErrorTips/-2041385216 var2234!1) var3448)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean showErrorTips> = $r1 
(define-const var1146 var3932 (properties/-2041385216 var2234!1)) ; Statement: $r2 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var3791 String (String_valueOf/-1973653463 var534)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
(assert true)
;(assert (setProperty/703705272 var1146 "show_error_tips" var3791)) ; Statement: virtualinvoke $r2.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("show_error_tips", $r3) 

(declare-const var1146!1 var3932)
(declare-const var515 String)
(declare-const var3791!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1062_valueOf/1602327315=([boolean], java.lang.Boolean), showErrorTips/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), properties/-2041385216=([freemarker.core.Configurable], java.util.Properties), String_valueOf/-1973653463=([boolean], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object)}
; {var2337=freemarker.core.Configurable, var2234=r0, var534=z0, var1062=java.lang.Boolean, var3448=$r1, var3932=java.util.Properties, var1146=$r2, var3791=$r3, var515="show_error_tips", var2393=java.lang.Object}
; {freemarker.core.Configurable=var2337, r0=var2234, z0=var534, java.lang.Boolean=var1062, $r1=var3448, java.util.Properties=var3932, $r2=var1146, $r3=var3791, "show_error_tips"=var515, java.lang.Object=var2393}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r0 := @this: freemarker.core.Configurable;	z0 := @parameter0: boolean;	$r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0);	r0.<freemarker.core.Configurable: java.lang.Boolean showErrorTips> = $r1;	$r2 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	virtualinvoke $r2.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("show_error_tips", $r3);	return
;block_num 1