(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3731 0)
(declare-sort var3711 0)
(declare-sort var2151 0)
(declare-sort var1301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3711_valueOf/1602327315 (Bool) var3711)
(declare-fun logTemplateExceptions/-2041385216 (var3731) var3711)
(declare-fun properties/-2041385216 (var3731) var2151)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun setProperty/703705272 (var2151 String String) var1301)
(declare-const null-var3731 var3731)
(declare-const null-Bool Bool)
(declare-const var1524 var3731) ; Statement: r0 := @this: freemarker.core.Configurable 
(assert (not (= var1524 null-var3731)))
(declare-const var3905 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3905 null-Bool)))
(define-const var3431 var3711 (var3711_valueOf/1602327315 var3905)) ; Statement: $r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0) 
(declare-const var1524!1 var3731)
(assert (not (= var1524!1 null-var3731)))
(assert (= (logTemplateExceptions/-2041385216 var1524!1) var3431)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean logTemplateExceptions> = $r1 
(define-const var995 var2151 (properties/-2041385216 var1524!1)) ; Statement: $r2 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var431 String (String_valueOf/-1973653463 var3905)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
(assert true)
;(assert (setProperty/703705272 var995 "log_template_exceptions" var431)) ; Statement: virtualinvoke $r2.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("log_template_exceptions", $r3) 

(declare-const var995!1 var2151)
(declare-const var507 String)
(declare-const var431!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3711_valueOf/1602327315=([boolean], java.lang.Boolean), logTemplateExceptions/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), properties/-2041385216=([freemarker.core.Configurable], java.util.Properties), String_valueOf/-1973653463=([boolean], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object)}
; {var3731=freemarker.core.Configurable, var1524=r0, var3905=z0, var3711=java.lang.Boolean, var3431=$r1, var2151=java.util.Properties, var995=$r2, var431=$r3, var507="log_template_exceptions", var1301=java.lang.Object}
; {freemarker.core.Configurable=var3731, r0=var1524, z0=var3905, java.lang.Boolean=var3711, $r1=var3431, java.util.Properties=var2151, $r2=var995, $r3=var431, "log_template_exceptions"=var507, java.lang.Object=var1301}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r0 := @this: freemarker.core.Configurable;	z0 := @parameter0: boolean;	$r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0);	r0.<freemarker.core.Configurable: java.lang.Boolean logTemplateExceptions> = $r1;	$r2 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	virtualinvoke $r2.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("log_template_exceptions", $r3);	return
;block_num 1