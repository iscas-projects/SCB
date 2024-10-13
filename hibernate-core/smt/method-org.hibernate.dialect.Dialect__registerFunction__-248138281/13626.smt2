(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort var2332 0)
(declare-sort var2395 0)
(declare-sort var670 0)
(declare-sort var1554 0)
(declare-sort var1256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sqlFunctions/-970077672 (var727) var670)
(declare-fun toLowerCase/1946809429 (String var1554) String)
(declare-fun var670_put/1464166817 (var670 var1256 var1256) var1256)
(declare-fun cast-from-String-to-var1256 (String) var1256)
(declare-fun cast-from-var2395-to-var1256 (var2395) var1256)
(declare-const null-var727 var727)
(declare-const null-String String)
(declare-const null-var2395 var2395)
(declare-const var1554-ROOT var1554)
(declare-const var455 var727) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var455 null-var727)))
(declare-const var1421 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1421 null-String)))
(declare-const var2264 var2395) ; Statement: r4 := @parameter1: org.hibernate.dialect.function.SQLFunction 
(assert (not (= var2264 null-var2395)))
(define-const var825 var670 (sqlFunctions/-970077672 var455)) ; Statement: $r3 = r0.<org.hibernate.dialect.Dialect: java.util.Map sqlFunctions> 
(define-const var3362 var1554 var1554-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2710 String (toLowerCase/1946809429 var1421 var3362)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
;(assert (var670_put/1464166817 var825 (cast-from-String-to-var1256 var2710) (cast-from-var2395-to-var1256 var2264))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r4) 

(declare-const var825!1 var670)
(declare-const var2710!1 String)
(declare-const var2264!1 var2395)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sqlFunctions/-970077672=([org.hibernate.dialect.Dialect], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var670_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1256=([java.lang.String], java.lang.Object), cast-from-var2395-to-var1256=([org.hibernate.dialect.function.SQLFunction], java.lang.Object)}
; {var727=org.hibernate.dialect.Dialect, var455=r0, var1421=r1, var2332=null_type, var2395=org.hibernate.dialect.function.SQLFunction, var2264=r4, var670=java.util.Map, var825=$r3, var1554=java.util.Locale, var3362=$r2, var2710=$r5, var1256=java.lang.Object}
; {org.hibernate.dialect.Dialect=var727, r0=var455, r1=var1421, null_type=var2332, org.hibernate.dialect.function.SQLFunction=var2395, r4=var2264, java.util.Map=var670, $r3=var825, java.util.Locale=var1554, $r2=var3362, $r5=var2710, java.lang.Object=var1256}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: org.hibernate.dialect.function.SQLFunction;	$r3 = r0.<org.hibernate.dialect.Dialect: java.util.Map sqlFunctions>;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r4);	return
;block_num 1