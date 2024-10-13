(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2107 0)
(declare-sort var3515 0)
(declare-sort var766 0)
(declare-sort var619 0)
(declare-sort var2959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun services/-260367193 (var2107) var766)
(declare-fun toLowerCase/1946809429 (String var619) String)
(declare-fun var766_get/1088891777 (var766 var2959) var2959)
(declare-fun cast-from-String-to-var2959 (String) var2959)
(declare-fun cast-from-var2959-to-ClassObject (var2959) ClassObject)
(declare-const null-var2107 var2107)
(declare-const null-String String)
(declare-const var619-ROOT var619)
(declare-const null-ClassObject ClassObject)
(declare-const var1264 var2107) ; Statement: r0 := @this: org.apache.lucene.analysis.AnalysisSPILoader 
(assert (not (= var1264 null-var2107)))
(declare-const var1338 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1338 null-String)))
(define-const var1056 var766 (services/-260367193 var1264)) ; Statement: $r3 = r0.<org.apache.lucene.analysis.AnalysisSPILoader: java.util.Map services> 
(define-const var3254 var619 var619-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3338 String (toLowerCase/1946809429 var1338 var3254)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var176 var2959 (var766_get/1088891777 var1056 (cast-from-String-to-var2959 var3338))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var1277 ClassObject (cast-from-var2959-to-ClassObject var176)) ; Statement: r6 = (java.lang.Class) $r5 
 ; Statement: if r6 == null goto $r7 = new java.lang.IllegalArgumentException 
(assert (not (= var1277 null-ClassObject))) ; Negate: Cond: r6 == null  
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {services/-260367193=([org.apache.lucene.analysis.AnalysisSPILoader], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var766_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2959=([java.lang.String], java.lang.Object), cast-from-var2959-to-ClassObject=([java.lang.Object], java.lang.Class)}
; {var2107=org.apache.lucene.analysis.AnalysisSPILoader, var1264=r0, var1338=r1, var3515=null_type, var766=java.util.Map, var1056=$r3, var619=java.util.Locale, var3254=$r2, var3338=$r4, var2959=java.lang.Object, var176=$r5, var1277=r6}
; {org.apache.lucene.analysis.AnalysisSPILoader=var2107, r0=var1264, r1=var1338, null_type=var3515, java.util.Map=var766, $r3=var1056, java.util.Locale=var619, $r2=var3254, $r4=var3338, java.lang.Object=var2959, $r5=var176, r6=var1277}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.AnalysisSPILoader;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.apache.lucene.analysis.AnalysisSPILoader: java.util.Map services>;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	r6 = (java.lang.Class) $r5;	if r6 == null goto $r7 = new java.lang.IllegalArgumentException;	return r6
;block_num 2