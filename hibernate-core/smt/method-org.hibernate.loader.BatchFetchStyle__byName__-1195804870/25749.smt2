(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2307 0)
(declare-sort var236 0)
(declare-sort var379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var236) String)
(declare-fun var379_valueOf/893604384 (String) var379)
(declare-const null-String String)
(declare-const var236-ROOT var236)
(declare-const var1303 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1303 null-String)))
(define-const var3044 var236 var236-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3621 String (toUpperCase/398655892 var1303 var3044)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var3650 var379 (var379_valueOf/893604384 var3621)) ; Statement: $r3 = staticinvoke <org.hibernate.loader.BatchFetchStyle: org.hibernate.loader.BatchFetchStyle valueOf(java.lang.String)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var379_valueOf/893604384=([java.lang.String], org.hibernate.loader.BatchFetchStyle)}
; {var1303=r0, var2307=null_type, var236=java.util.Locale, var3044=$r1, var3621=$r2, var379=org.hibernate.loader.BatchFetchStyle, var3650=$r3}
; {r0=var1303, null_type=var2307, java.util.Locale=var236, $r1=var3044, $r2=var3621, org.hibernate.loader.BatchFetchStyle=var379, $r3=var3650}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$r3 = staticinvoke <org.hibernate.loader.BatchFetchStyle: org.hibernate.loader.BatchFetchStyle valueOf(java.lang.String)>($r2);	return $r3
;block_num 1