(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3341 0)
(declare-sort var165 0)
(declare-sort var1662 0)
(declare-sort var1791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var165_valueOf/1602327315 (Bool) var165)
(declare-fun autoFlush/-2041385216 (var3341) var165)
(declare-fun properties/-2041385216 (var3341) var1662)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun setProperty/703705272 (var1662 String String) var1791)
(declare-const null-var3341 var3341)
(declare-const null-Bool Bool)
(declare-const var3836 var3341) ; Statement: r0 := @this: freemarker.core.Configurable 
(assert (not (= var3836 null-var3341)))
(declare-const var709 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var709 null-Bool)))
(define-const var2021 var165 (var165_valueOf/1602327315 var709)) ; Statement: $r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0) 
(declare-const var3836!1 var3341)
(assert (not (= var3836!1 null-var3341)))
(assert (= (autoFlush/-2041385216 var3836!1) var2021)) ; Statement: r0.<freemarker.core.Configurable: java.lang.Boolean autoFlush> = $r1 
(define-const var2622 var1662 (properties/-2041385216 var3836!1)) ; Statement: $r2 = r0.<freemarker.core.Configurable: java.util.Properties properties> 
(define-const var3337 String (String_valueOf/-1973653463 var709)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
(assert true)
;(assert (setProperty/703705272 var2622 "auto_flush" var3337)) ; Statement: virtualinvoke $r2.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("auto_flush", $r3) 

(declare-const var2622!1 var1662)
(declare-const var2598 String)
(declare-const var3337!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var165_valueOf/1602327315=([boolean], java.lang.Boolean), autoFlush/-2041385216=([freemarker.core.Configurable], java.lang.Boolean), properties/-2041385216=([freemarker.core.Configurable], java.util.Properties), String_valueOf/-1973653463=([boolean], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object)}
; {var3341=freemarker.core.Configurable, var3836=r0, var709=z0, var165=java.lang.Boolean, var2021=$r1, var1662=java.util.Properties, var2622=$r2, var3337=$r3, var2598="auto_flush", var1791=java.lang.Object}
; {freemarker.core.Configurable=var3341, r0=var3836, z0=var709, java.lang.Boolean=var165, $r1=var2021, java.util.Properties=var1662, $r2=var2622, $r3=var3337, "auto_flush"=var2598, java.lang.Object=var1791}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r0 := @this: freemarker.core.Configurable;	z0 := @parameter0: boolean;	$r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0);	r0.<freemarker.core.Configurable: java.lang.Boolean autoFlush> = $r1;	$r2 = r0.<freemarker.core.Configurable: java.util.Properties properties>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	virtualinvoke $r2.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>("auto_flush", $r3);	return
;block_num 1