(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1685 0)
(declare-sort var273 0)
(declare-sort var2589 0)
(declare-sort var979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var273) String)
(declare-fun var2589_separateCamelCase/1260369589 (String Int) String)
(declare-fun toLowerCase/1946809429 (String var979) String)
(declare-const null-var1685 var1685)
(declare-const null-var273 var273)
(declare-const var979-ENGLISH var979)
(declare-const var975 var1685) ; Statement: r5 := @this: com.google.gson.FieldNamingPolicy$7 
(assert (not (= var975 null-var1685)))
(declare-const var3563 var273) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var3563 null-var273)))
(assert true)
(define-const var774 String (getName/1618348824 var3563)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(define-const var466 String (var2589_separateCamelCase/1260369589 var774 46)) ; Statement: $r3 = staticinvoke <com.google.gson.FieldNamingPolicy$7: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 46) 
(define-const var866 var979 var979-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1864 String (toLowerCase/1946809429 var466 var866)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), var2589_separateCamelCase/1260369589=([java.lang.String, char], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1685=com.google.gson.FieldNamingPolicy$7, var975=r5, var273=java.lang.reflect.Field, var3563=r0, var774=$r1, var2589=com.google.gson.FieldNamingPolicy, var466=$r3, var979=java.util.Locale, var866=$r2, var1864=$r4}
; {com.google.gson.FieldNamingPolicy$7=var1685, r5=var975, java.lang.reflect.Field=var273, r0=var3563, $r1=var774, com.google.gson.FieldNamingPolicy=var2589, $r3=var466, java.util.Locale=var979, $r2=var866, $r4=var1864}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.gson.FieldNamingPolicy$7;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r3 = staticinvoke <com.google.gson.FieldNamingPolicy$7: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 46);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r4
;block_num 1