(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var245 0)
(declare-sort var1791 0)
(declare-sort var2666 0)
(declare-sort var2424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun end/-952472175 (var245 Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun matcher/468719934 (var2666 String) var245)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var245) Bool)
(declare-const null-var245 var245)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2424-TOP_PATTERN var2666)
(declare-const var3366 var245) ; Statement: r0 := @parameter0: java.util.regex.Matcher 
(assert (not (= var3366 null-var245)))
(declare-const var2282 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2282 null-String)))
(declare-const var1435 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1435 null-Int)))
(assert true)
(define-const var2744 Int (end/-952472175 var3366 1)) ; Statement: i0 = virtualinvoke r0.<java.util.regex.Matcher: int end(int)>(1) 
(define-const var3845 var2666 var2424-TOP_PATTERN) ; Statement: $r2 = <org.hibernate.dialect.pagination.SybaseASE157LimitHandler: java.util.regex.Pattern TOP_PATTERN> 
(assert (not (and true (and (>= var2744 0) (>= (str.len var2282) var2744)))))
(check-sat)
(get-model)
(get-unsat-core)
; {end/-952472175=([java.util.regex.Matcher, int], int), substring/850833817=([java.lang.String, int], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean)}
; {var245=java.util.regex.Matcher, var3366=r0, var2282=r1, var1791=null_type, var1435=i1, var2744=i0, var2666=java.util.regex.Pattern, var2424=org.hibernate.dialect.pagination.SybaseASE157LimitHandler, var3845=$r2, var902=$r3, var210=$r4, var3560=$z0}
; {java.util.regex.Matcher=var245, r0=var3366, r1=var2282, null_type=var1791, i1=var1435, i0=var2744, java.util.regex.Pattern=var2666, org.hibernate.dialect.pagination.SybaseASE157LimitHandler=var2424, $r2=var3845, $r3=var902, $r4=var210, $z0=var3560}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.util.regex.Matcher;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	i0 = virtualinvoke r0.<java.util.regex.Matcher: int end(int)>(1);	$r2 = <org.hibernate.dialect.pagination.SybaseASE157LimitHandler: java.util.regex.Pattern TOP_PATTERN>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0);	$r4 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r3);	$z0 = virtualinvoke $r4.<java.util.regex.Matcher: boolean matches()>();	if $z0 == 0 goto $r5 = new java.lang.StringBuilder;	return r1
;block_num 2