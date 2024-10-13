(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var327 0)
(declare-sort var1442 0)
(declare-sort var2502 0)
(declare-sort var1248 0)
(declare-sort var89 0)
(declare-sort var1876 0)
(declare-sort var270 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-538363553 (var1442) void)
(declare-fun cast-from-var327-to-var1442 (var327) var1442)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buf/1664261911 (var327) String)
(declare-fun captureExpression/1664261911 (var327) Bool)
(declare-fun var2502-init () var2502)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var89_asList/1779083644 ((Array Int var1876)) var1248)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1876__ ((Array Int String)) (Array Int var1876))
(declare-fun <init>/2032108350 (var2502 var270) void)
(declare-fun cast-from-var1248-to-var270 (var1248) var270)
(declare-fun cast-from-var2502-to-var1248 (var2502) var1248)
(declare-fun exprs/1664261911 (var327) var1248)
(declare-fun tokenNames/-774545314 (var1442) (Array Int String))
(declare-const null-var327 var327)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var327-_tokenNames (Array Int String))
(declare-const var1415 var327) ; Statement: r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase 
(assert (not (= var1415 null-var327)))
(assert true)
;(assert (<init>/-538363553 (cast-from-var327-to-var1442 var1415))) ; Statement: specialinvoke r0.<antlr.TreeParser: void <init>()>() 

(declare-const var1415!1 var327)
(define-const var3109 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3109)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3109!1 String)
(assert (= var3109!1 ""))
(declare-const var1415!2 var327)
(assert (not (= var1415!2 null-var327)))
(assert (= (buf/1664261911 var1415!2) var3109!1)) ; Statement: r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf> = $r1 
(declare-const var1415!3 var327)
(assert (not (= var1415!3 null-var327)))
(assert (= (captureExpression/1664261911 var1415!3) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> = 0 
(define-const var687 var2502 var2502-init) ; Statement: $r2 = new java.util.ArrayList 
(define-const var1076 (Array Int String) arr-String-init) ; Statement: $r3 = newarray (java.lang.StringBuilder)[1] 
(define-const var3132 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3132)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3132!1 String)
(assert (= var3132!1 ""))
(declare-const var1076!1 (Array Int String))
(assert (not (= var1076!1 null-__Array__Int__String__)))
(assert (= (select var1076!1 0) var3132!1)) ; Statement: $r3[0] = $r4 
(define-const var820 var1248 (var89_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var1876__ var1076!1))) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r3) 
(assert true)
;(assert (<init>/2032108350 var687 (cast-from-var1248-to-var270 var820))) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>(java.util.Collection)>($r5) 

(declare-const var687!1 var2502)
(declare-const var820!1 var1248)
(declare-const var1415!4 var327)
(assert (not (= var1415!4 null-var327)))
(assert (= (exprs/1664261911 var1415!4) (cast-from-var2502-to-var1248 var687!1))) ; Statement: r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs> = $r2 
(define-const var1339 (Array Int String) var327-_tokenNames) ; Statement: $r6 = <org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.String[] _tokenNames> 
(declare-const var1415!5 var327)
(assert (not (= var1415!5 null-var327)))
(assert (= (tokenNames/-774545314 (cast-from-var327-to-var1442 var1415!5)) var1339)) ; Statement: r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.String[] tokenNames> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-538363553=([antlr.TreeParser], void), cast-from-var327-to-var1442=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], antlr.TreeParser), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buf/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], java.lang.StringBuilder), captureExpression/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], boolean), var2502-init=([], java.util.ArrayList), arr-String-init=([], java.lang.StringBuilder[]), var89_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__String__-to-__Array__Int__var1876__=([java.lang.StringBuilder[]], java.lang.Object[]), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var1248-to-var270=([java.util.List], java.util.Collection), cast-from-var2502-to-var1248=([java.util.ArrayList], java.util.List), exprs/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], java.util.List), tokenNames/-774545314=([antlr.TreeParser], java.lang.String[])}
; {var327=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var1415=r0, var1442=antlr.TreeParser, var3109=$r1, var2502=java.util.ArrayList, var687=$r2, var1076=$r3, var3132=$r4, var1248=java.util.List, var89=java.util.Arrays, var1876=java.lang.Object, var820=$r5, var270=java.util.Collection, var1339=$r6}
; {org.hibernate.hql.internal.antlr.SqlGeneratorBase=var327, r0=var1415, antlr.TreeParser=var1442, $r1=var3109, java.util.ArrayList=var2502, $r2=var687, $r3=var1076, $r4=var3132, java.util.List=var1248, java.util.Arrays=var89, java.lang.Object=var1876, $r5=var820, java.util.Collection=var270, $r6=var1339}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase;	specialinvoke r0.<antlr.TreeParser: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf> = $r1;	r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: boolean captureExpression> = 0;	$r2 = new java.util.ArrayList;	$r3 = newarray (java.lang.StringBuilder)[1];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r3[0] = $r4;	$r5 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r3);	specialinvoke $r2.<java.util.ArrayList: void <init>(java.util.Collection)>($r5);	r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs> = $r2;	$r6 = <org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.String[] _tokenNames>;	r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.String[] tokenNames> = $r6;	return
;block_num 1