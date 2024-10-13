(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1837 0)
(declare-sort var3053 0)
(declare-sort var3208 0)
(declare-sort var2203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var3053) String)
(declare-fun var3208_separateCamelCase/2069929572 (String Int) String)
(declare-fun toUpperCase/398655892 (String var2203) String)
(declare-const null-var1837 var1837)
(declare-const null-var3053 var3053)
(declare-const var2203-ENGLISH var2203)
(declare-const var3093 var1837) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$4 
(assert (not (= var3093 null-var1837)))
(declare-const var3259 var3053) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var3259 null-var3053)))
(assert true)
(define-const var1610 String (getName/1618348824 var3259)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(define-const var2656 String (var3208_separateCamelCase/2069929572 var1610 95)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$4: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 95) 
(define-const var3660 var2203 var2203-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2537 String (toUpperCase/398655892 var2656 var3660)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), var3208_separateCamelCase/2069929572=([java.lang.String, char], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1837=com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$4, var3093=r5, var3053=java.lang.reflect.Field, var3259=r0, var1610=$r1, var3208=com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy, var2656=$r3, var2203=java.util.Locale, var3660=$r2, var2537=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$4=var1837, r5=var3093, java.lang.reflect.Field=var3053, r0=var3259, $r1=var1610, com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy=var3208, $r3=var2656, java.util.Locale=var2203, $r2=var3660, $r4=var2537}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$4;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$4: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 95);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	return $r4
;block_num 1