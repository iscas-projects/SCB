(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var8 0)
(declare-sort var2166 0)
(declare-sort var2672 0)
(declare-sort var2518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var2166) String)
(declare-fun var2672_separateCamelCase/2069929572 (String Int) String)
(declare-fun toLowerCase/1946809429 (String var2518) String)
(declare-const null-var8 var8)
(declare-const null-var2166 var2166)
(declare-const var2518-ENGLISH var2518)
(declare-const var3608 var8) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$5 
(assert (not (= var3608 null-var8)))
(declare-const var2930 var2166) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var2930 null-var2166)))
(assert true)
(define-const var1443 String (getName/1618348824 var2930)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(define-const var3106 String (var2672_separateCamelCase/2069929572 var1443 95)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$5: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 95) 
(define-const var574 var2518 var2518-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var442 String (toLowerCase/1946809429 var3106 var574)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), var2672_separateCamelCase/2069929572=([java.lang.String, char], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var8=com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$5, var3608=r5, var2166=java.lang.reflect.Field, var2930=r0, var1443=$r1, var2672=com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy, var3106=$r3, var2518=java.util.Locale, var574=$r2, var442=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$5=var8, r5=var3608, java.lang.reflect.Field=var2166, r0=var2930, $r1=var1443, com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy=var2672, $r3=var3106, java.util.Locale=var2518, $r2=var574, $r4=var442}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$5;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$5: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 95);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r4
;block_num 1