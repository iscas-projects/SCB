(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1923 0)
(declare-sort var383 0)
(declare-sort var2273 0)
(declare-sort var2011 0)
(declare-sort var3454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sqlKeywords/-970077672 (var1923) var2273)
(declare-fun toLowerCase/1946809429 (String var2011) String)
(declare-fun var2273_add/-1142548109 (var2273 var3454) Bool)
(declare-fun cast-from-String-to-var3454 (String) var3454)
(declare-const null-var1923 var1923)
(declare-const null-String String)
(declare-const var2011-ROOT var2011)
(declare-const var3327 var1923) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3327 null-var1923)))
(declare-const var1957 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1957 null-String)))
(define-const var3247 var2273 (sqlKeywords/-970077672 var3327)) ; Statement: $r3 = r0.<org.hibernate.dialect.Dialect: java.util.Set sqlKeywords> 
(define-const var694 var2011 var2011-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1593 String (toLowerCase/1946809429 var1957 var694)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
;(assert (var2273_add/-1142548109 var3247 (cast-from-String-to-var3454 var1593))) ; Statement: interfaceinvoke $r3.<java.util.Set: boolean add(java.lang.Object)>($r4) 

(declare-const var3247!1 var2273)
(declare-const var1593!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sqlKeywords/-970077672=([org.hibernate.dialect.Dialect], java.util.Set), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var2273_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var3454=([java.lang.String], java.lang.Object)}
; {var1923=org.hibernate.dialect.Dialect, var3327=r0, var1957=r1, var383=null_type, var2273=java.util.Set, var3247=$r3, var2011=java.util.Locale, var694=$r2, var1593=$r4, var3454=java.lang.Object}
; {org.hibernate.dialect.Dialect=var1923, r0=var3327, r1=var1957, null_type=var383, java.util.Set=var2273, $r3=var3247, java.util.Locale=var2011, $r2=var694, $r4=var1593, java.lang.Object=var3454}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.hibernate.dialect.Dialect: java.util.Set sqlKeywords>;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	interfaceinvoke $r3.<java.util.Set: boolean add(java.lang.Object)>($r4);	return
;block_num 1