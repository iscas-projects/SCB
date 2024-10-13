(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3739 0)
(declare-sort var632 0)
(declare-sort var700 0)
(declare-sort var675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var632) String)
(declare-fun var700_separateCamelCase/2069929572 (String Int) String)
(declare-fun toLowerCase/1946809429 (String var675) String)
(declare-const null-var3739 var3739)
(declare-const null-var632 var632)
(declare-const var675-ENGLISH var675)
(declare-const var336 var3739) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$6 
(assert (not (= var336 null-var3739)))
(declare-const var2635 var632) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var2635 null-var632)))
(assert true)
(define-const var3382 String (getName/1618348824 var2635)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(define-const var1873 String (var700_separateCamelCase/2069929572 var3382 45)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$6: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 45) 
(define-const var1689 var675 var675-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2236 String (toLowerCase/1946809429 var1873 var1689)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), var700_separateCamelCase/2069929572=([java.lang.String, char], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3739=com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$6, var336=r5, var632=java.lang.reflect.Field, var2635=r0, var3382=$r1, var700=com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy, var1873=$r3, var675=java.util.Locale, var1689=$r2, var2236=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$6=var3739, r5=var336, java.lang.reflect.Field=var632, r0=var2635, $r1=var3382, com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy=var700, $r3=var1873, java.util.Locale=var675, $r2=var1689, $r4=var2236}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$6;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.FieldNamingPolicy$6: java.lang.String separateCamelCase(java.lang.String,char)>($r1, 45);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r4
;block_num 1