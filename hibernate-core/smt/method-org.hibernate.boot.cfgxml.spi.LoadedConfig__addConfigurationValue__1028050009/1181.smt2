(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var384 0)
(declare-sort var849 0)
(declare-sort var3198 0)
(declare-sort var3614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var384_trim/-576337451 (String) String)
(declare-fun configurationValues/1133745038 (var384) var3198)
(declare-fun var3198_put/1464166817 (var3198 var3614 var3614) var3614)
(declare-fun cast-from-String-to-var3614 (String) var3614)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var384 var384)
(declare-const null-String String)
(declare-const var2387 var384) ; Statement: r0 := @this: org.hibernate.boot.cfgxml.spi.LoadedConfig 
(assert (not (= var2387 null-var384)))
(declare-const var2594 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2594 null-String)))
(declare-const var3218 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var3218 null-String)))
(define-const var2021 String (var384_trim/-576337451 var3218)) ; Statement: r9 = staticinvoke <org.hibernate.boot.cfgxml.spi.LoadedConfig: java.lang.String trim(java.lang.String)>(r8) 
(define-const var464 var3198 (configurationValues/1133745038 var2387)) ; Statement: $r2 = r0.<org.hibernate.boot.cfgxml.spi.LoadedConfig: java.util.Map configurationValues> 
;(assert (var3198_put/1464166817 var464 (cast-from-String-to-var3614 var2594) (cast-from-String-to-var3614 var2021))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r9) 

(declare-const var464!1 var3198)
(declare-const var2594!1 String)
(declare-const var2021!1 String)
(assert true)
(define-const var1834 Bool (startsWith/-1785782452 var2594!1 "hibernate.")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1834 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var384_trim/-576337451=([java.lang.String], java.lang.String), configurationValues/1133745038=([org.hibernate.boot.cfgxml.spi.LoadedConfig], java.util.Map), var3198_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3614=([java.lang.String], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var384=org.hibernate.boot.cfgxml.spi.LoadedConfig, var2387=r0, var2594=r1, var849=null_type, var3218=r8, var2021=r9, var3198=java.util.Map, var464=$r2, var3614=java.lang.Object, var1834=$z0}
; {org.hibernate.boot.cfgxml.spi.LoadedConfig=var384, r0=var2387, r1=var2594, null_type=var849, r8=var3218, r9=var2021, java.util.Map=var3198, $r2=var464, java.lang.Object=var3614, $z0=var1834}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.cfgxml.spi.LoadedConfig;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	r9 = staticinvoke <org.hibernate.boot.cfgxml.spi.LoadedConfig: java.lang.String trim(java.lang.String)>(r8);	$r2 = r0.<org.hibernate.boot.cfgxml.spi.LoadedConfig: java.util.Map configurationValues>;	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r9);	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.");	if $z0 != 0 goto return;	return
;block_num 2