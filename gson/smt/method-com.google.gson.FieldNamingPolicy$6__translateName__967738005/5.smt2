(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2930 0)
(declare-sort var1189 0)
(declare-sort var3082 0)
(declare-sort var3695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var1189) String)
(declare-fun var3082_separateCamelCase/1260369589 (String Int) String)
(declare-fun toLowerCase/1946809429 (String var3695) String)
(declare-const null-var2930 var2930)
(declare-const null-var1189 var1189)
(declare-const var3695-ENGLISH var3695)
(declare-const var551 var2930) ; Statement: r5 := @this: com.google.gson.FieldNamingPolicy$6 
(assert (not (= var551 null-var2930)))
(declare-const var1823 var1189) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var1823 null-var1189)))
(assert true)
(define-const var3848 String (getName/1618348824 var1823)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(define-const var2741 String (var3082_separateCamelCase/1260369589 var3848 45)) ; Statement: $r3 = staticinvoke <com.google.gson.FieldNamingPolicy$6: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 45) 
(define-const var1343 var3695 var3695-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2788 String (toLowerCase/1946809429 var2741 var1343)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), var3082_separateCamelCase/1260369589=([java.lang.String, char], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2930=com.google.gson.FieldNamingPolicy$6, var551=r5, var1189=java.lang.reflect.Field, var1823=r0, var3848=$r1, var3082=com.google.gson.FieldNamingPolicy, var2741=$r3, var3695=java.util.Locale, var1343=$r2, var2788=$r4}
; {com.google.gson.FieldNamingPolicy$6=var2930, r5=var551, java.lang.reflect.Field=var1189, r0=var1823, $r1=var3848, com.google.gson.FieldNamingPolicy=var3082, $r3=var2741, java.util.Locale=var3695, $r2=var1343, $r4=var2788}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.gson.FieldNamingPolicy$6;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r3 = staticinvoke <com.google.gson.FieldNamingPolicy$6: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 45);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r4
;block_num 1