(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var978 0)
(declare-sort var3166 0)
(declare-sort var1835 0)
(declare-sort var2066 0)
(declare-sort var2493 0)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDialect/146480046 (var978) var1835)
(declare-fun closeQuote/952993073 (var1835) Int)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun matcher/468719934 (var2066 String) var2784)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var2784) Bool)
(declare-const null-var978 var978)
(declare-const null-String String)
(declare-const var2493-DYNAMIC_FILTER_PATTERN var2066)
(declare-const var1681 var978) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var1681 null-var978)))
(declare-const var3619 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3619 null-String)))
(assert true)
(define-const var2888 var1835 (getDialect/146480046 var1681)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var3098 Int (closeQuote/952993073 var2888)) ; Statement: $c0 = virtualinvoke $r1.<org.hibernate.dialect.Dialect: char closeQuote()>() 
(define-const var2936 String (String_valueOf/-371898945 var3098)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c0) 
(define-const var1742 var2066 var2493-DYNAMIC_FILTER_PATTERN) ; Statement: $r4 = <org.hibernate.hql.internal.ast.util.JoinProcessor: java.util.regex.Pattern DYNAMIC_FILTER_PATTERN> 
(assert true)
(define-const var1957 var2784 (matcher/468719934 var1742 (cast-from-String-to-String var3619))) ; Statement: r5 = virtualinvoke $r4.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r3) 
(assert true)
(define-const var699 Bool (find/1809080823 var1957)) ; Statement: $z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (= (ite var699 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getDialect/146480046=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.dialect.Dialect), closeQuote/952993073=([org.hibernate.dialect.Dialect], char), String_valueOf/-371898945=([char], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean)}
; {var978=org.hibernate.hql.internal.ast.HqlSqlWalker, var1681=r0, var3619=r3, var3166=null_type, var1835=org.hibernate.dialect.Dialect, var2888=$r1, var3098=$c0, var2936=r2, var2066=java.util.regex.Pattern, var2493=org.hibernate.hql.internal.ast.util.JoinProcessor, var1742=$r4, var2784=java.util.regex.Matcher, var1957=r5, var699=$z0}
; {org.hibernate.hql.internal.ast.HqlSqlWalker=var978, r0=var1681, r3=var3619, null_type=var3166, org.hibernate.dialect.Dialect=var1835, $r1=var2888, $c0=var3098, r2=var2936, java.util.regex.Pattern=var2066, org.hibernate.hql.internal.ast.util.JoinProcessor=var2493, $r4=var1742, java.util.regex.Matcher=var2784, r5=var1957, $z0=var699}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @parameter0: org.hibernate.hql.internal.ast.HqlSqlWalker;	r3 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.dialect.Dialect getDialect()>();	$c0 = virtualinvoke $r1.<org.hibernate.dialect.Dialect: char closeQuote()>();	r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c0);	$r4 = <org.hibernate.hql.internal.ast.util.JoinProcessor: java.util.regex.Pattern DYNAMIC_FILTER_PATTERN>;	r5 = virtualinvoke $r4.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r3);	$z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto return 1;	return 1
;block_num 2