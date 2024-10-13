(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3502 0)
(declare-sort var46 0)
(declare-sort var3521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun matcher/468719934 (var46 String) var3521)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var3521) Bool)
(declare-const null-var3502 var3502)
(declare-const null-String String)
(declare-const var3502-WITH_CTE var46)
(declare-const var3414 var3502) ; Statement: r4 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var3414 null-var3502)))
(declare-const var1748 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1748 null-String)))
(define-const var2105 var46 var3502-WITH_CTE) ; Statement: $r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern WITH_CTE> 
(assert true)
(define-const var3545 String (toString/-2075883882 var1748)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var326 var3521 (matcher/468719934 var2105 (cast-from-String-to-String var3545))) ; Statement: r3 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2) 
(assert true)
(define-const var2049 Bool (find/1809080823 var326)) ; Statement: $z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var2049 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-2075883882=([java.lang.StringBuilder], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean)}
; {var3502=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var3414=r4, var1748=r0, var46=java.util.regex.Pattern, var2105=$r1, var3545=$r2, var3521=java.util.regex.Matcher, var326=r3, var2049=$z0}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var3502, r4=var3414, r0=var1748, java.util.regex.Pattern=var46, $r1=var2105, $r2=var3545, java.util.regex.Matcher=var3521, r3=var326, $z0=var2049}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r0 := @parameter0: java.lang.StringBuilder;	$r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern WITH_CTE>;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	r3 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2);	$z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto return 0;	return 0
;block_num 2