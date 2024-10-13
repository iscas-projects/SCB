(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1602 0)
(declare-sort var1180 0)
(declare-sort var1880 0)
(declare-sort var3795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var1180) String)
(declare-fun var1880_separateCamelCase/1260369589 (String Int) String)
(declare-fun toLowerCase/1946809429 (String var3795) String)
(declare-const null-var1602 var1602)
(declare-const null-var1180 var1180)
(declare-const var3795-ENGLISH var3795)
(declare-const var497 var1602) ; Statement: r5 := @this: com.google.gson.FieldNamingPolicy$5 
(assert (not (= var497 null-var1602)))
(declare-const var684 var1180) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var684 null-var1180)))
(assert true)
(define-const var1748 String (getName/1618348824 var684)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(define-const var380 String (var1880_separateCamelCase/1260369589 var1748 95)) ; Statement: $r3 = staticinvoke <com.google.gson.FieldNamingPolicy$5: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 95) 
(define-const var2513 var3795 var3795-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1491 String (toLowerCase/1946809429 var380 var2513)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), var1880_separateCamelCase/1260369589=([java.lang.String, char], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1602=com.google.gson.FieldNamingPolicy$5, var497=r5, var1180=java.lang.reflect.Field, var684=r0, var1748=$r1, var1880=com.google.gson.FieldNamingPolicy, var380=$r3, var3795=java.util.Locale, var2513=$r2, var1491=$r4}
; {com.google.gson.FieldNamingPolicy$5=var1602, r5=var497, java.lang.reflect.Field=var1180, r0=var684, $r1=var1748, com.google.gson.FieldNamingPolicy=var1880, $r3=var380, java.util.Locale=var3795, $r2=var2513, $r4=var1491}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.gson.FieldNamingPolicy$5;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r3 = staticinvoke <com.google.gson.FieldNamingPolicy$5: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 95);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r4
;block_num 1