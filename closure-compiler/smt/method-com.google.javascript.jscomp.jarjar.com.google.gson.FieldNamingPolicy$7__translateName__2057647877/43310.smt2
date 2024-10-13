(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var891 0)
(declare-sort var2706 0)
(declare-sort var2938 0)
(declare-sort var611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var2706) String)
(declare-fun var2938_separateCamelCase/2069929572 (String Int) String)
(declare-fun toLowerCase/1946809429 (String var611) String)
(declare-const null-var891 var891)
(declare-const null-var2706 var2706)
(declare-const var611-ENGLISH var611)
(declare-const var1434 var891) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$7 
(assert (not (= var1434 null-var891)))
(declare-const var3993 var2706) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var3993 null-var2706)))
(assert true)
(define-const var337 String (getName/1618348824 var3993)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(define-const var2860 String (var2938_separateCamelCase/2069929572 var337 46)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$7: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 46) 
(define-const var3750 var611 var611-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3737 String (toLowerCase/1946809429 var2860 var3750)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), var2938_separateCamelCase/2069929572=([java.lang.String, char], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var891=com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$7, var1434=r5, var2706=java.lang.reflect.Field, var3993=r0, var337=$r1, var2938=com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy, var2860=$r3, var611=java.util.Locale, var3750=$r2, var3737=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$7=var891, r5=var1434, java.lang.reflect.Field=var2706, r0=var3993, $r1=var337, com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy=var2938, $r3=var2860, java.util.Locale=var611, $r2=var3750, $r4=var3737}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$7;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$7: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 46);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r4
;block_num 1