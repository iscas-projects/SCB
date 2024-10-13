(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var981 0)
(declare-sort var2637 0)
(declare-sort var2028 0)
(declare-sort var253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var2637) String)
(declare-fun var2028_separateCamelCase/1260369589 (String Int) String)
(declare-fun toUpperCase/398655892 (String var253) String)
(declare-const null-var981 var981)
(declare-const null-var2637 var2637)
(declare-const var253-ENGLISH var253)
(declare-const var3430 var981) ; Statement: r5 := @this: com.google.gson.FieldNamingPolicy$4 
(assert (not (= var3430 null-var981)))
(declare-const var678 var2637) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var678 null-var2637)))
(assert true)
(define-const var2757 String (getName/1618348824 var678)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(define-const var510 String (var2028_separateCamelCase/1260369589 var2757 95)) ; Statement: $r3 = staticinvoke <com.google.gson.FieldNamingPolicy$4: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 95) 
(define-const var3622 var253 var253-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1330 String (toUpperCase/398655892 var510 var3622)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), var2028_separateCamelCase/1260369589=([java.lang.String, char], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var981=com.google.gson.FieldNamingPolicy$4, var3430=r5, var2637=java.lang.reflect.Field, var678=r0, var2757=$r1, var2028=com.google.gson.FieldNamingPolicy, var510=$r3, var253=java.util.Locale, var3622=$r2, var1330=$r4}
; {com.google.gson.FieldNamingPolicy$4=var981, r5=var3430, java.lang.reflect.Field=var2637, r0=var678, $r1=var2757, com.google.gson.FieldNamingPolicy=var2028, $r3=var510, java.util.Locale=var253, $r2=var3622, $r4=var1330}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.gson.FieldNamingPolicy$4;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r3 = staticinvoke <com.google.gson.FieldNamingPolicy$4: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 95);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	return $r4
;block_num 1