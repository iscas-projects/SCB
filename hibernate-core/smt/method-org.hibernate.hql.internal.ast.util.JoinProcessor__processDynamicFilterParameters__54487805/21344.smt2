(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var607 0)
(declare-sort var3710 0)
(declare-sort var2772 0)
(declare-sort var2305 0)
(declare-sort var1759 0)
(declare-sort var293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEnabledFilters/-499364216 (var2772) var2305)
(declare-fun var2305_isEmpty/-1655013448 (var2305) Bool)
(declare-fun getDialect/146480046 (var2772) var1759)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun openQuote/1212220691 (var1759) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun closeQuote/952993073 (var1759) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var293-init () var293)
(declare-fun <init>/-1517764957 (var293 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var293) Bool)
(declare-fun var3710_setText/1262527809 (var3710 String) void)
(declare-const null-String String)
(declare-const null-var3710 var3710)
(declare-const null-var2772 var2772)
(declare-const var538 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var538 null-String)))
(declare-const var2502 var3710) ; Statement: r3 := @parameter1: org.hibernate.hql.internal.ast.tree.ParameterContainer 
(assert (not (= var2502 null-var3710)))
(declare-const var2954 var2772) ; Statement: r0 := @parameter2: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var2954 null-var2772)))
(assert true)
(define-const var1062 var2305 (getEnabledFilters/-499364216 var2954)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map getEnabledFilters()>() 
(define-const var2993 Bool (var2305_isEmpty/-1655013448 var1062)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r24 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.dialect.Dialect getDialect()>() 
(assert (= (ite var2993 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3038 var1759 (getDialect/146480046 var2954)) ; Statement: $r24 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var2659 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2659)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2659!1 String)
(assert (= var2659!1 ""))
(assert true)
(define-const var1371 String (append/672562846 var2659!1 " \n\r\f\t,()=<>&|+-=/*\u0027^![]#~\u005c")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \n\r\f\t,()=<>&|+-=/*\'^![]#~\\") 
(declare-const var2659!2 String)
(assert (= var2659!2 (str.++ var2659!1 " \n\r\f\t,()=<>&|+-=/*\u0027^![]#~\u005c")))
(assert true)
(define-const var719 Int (openQuote/1212220691 var3038)) ; Statement: $c2 = virtualinvoke $r24.<org.hibernate.dialect.Dialect: char openQuote()>() 
(assert true)
(define-const var3372 String (append/-1166366385 var1371 var719)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var1371!1 String)
(assert (str.prefixof var1371 var1371!1))
(assert true)
(define-const var3765 Int (closeQuote/952993073 var3038)) ; Statement: $c3 = virtualinvoke $r24.<org.hibernate.dialect.Dialect: char closeQuote()>() 
(assert true)
(define-const var1187 String (append/-1166366385 var3372 var3765)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var3372!1 String)
(assert (str.prefixof var3372 var3372!1))
(assert true)
(define-const var2485 String (toString/-2075883882 var1187)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3270 var293 var293-init) ; Statement: $r30 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var3270 var538 var2485 (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r2, $r29, 1) 

(declare-const var3270!1 var293)
(declare-const var538!1 String)
(declare-const var2485!1 String)
(declare-const var2385 Int)
(define-const var3575 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3575)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3575!1 String)
(assert (= var3575!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var154 Bool (hasMoreTokens/711654492 var3270!1)) ; Statement: $z5 = virtualinvoke $r30.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z5 == 0 goto $r4 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var154 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var192 String (toString/-2075883882 var3575!1)) ; Statement: $r4 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3710_setText/1262527809 var2502 var192)) ; Statement: interfaceinvoke r3.<org.hibernate.hql.internal.ast.tree.ParameterContainer: void setText(java.lang.String)>($r4) 

(declare-const var2502!1 var3710)
(declare-const var192!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getEnabledFilters/-499364216=([org.hibernate.hql.internal.ast.HqlSqlWalker], java.util.Map), var2305_isEmpty/-1655013448=([java.util.Map], boolean), getDialect/146480046=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.dialect.Dialect), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), openQuote/1212220691=([org.hibernate.dialect.Dialect], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), closeQuote/952993073=([org.hibernate.dialect.Dialect], char), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var293-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), var3710_setText/1262527809=([org.hibernate.hql.internal.ast.tree.ParameterContainer, java.lang.String], void)}
; {var538=r2, var607=null_type, var3710=org.hibernate.hql.internal.ast.tree.ParameterContainer, var2502=r3, var2772=org.hibernate.hql.internal.ast.HqlSqlWalker, var2954=r0, var2305=java.util.Map, var1062=$r1, var2993=$z0, var1759=org.hibernate.dialect.Dialect, var3038=$r24, var2659=$r25, var1371=$r26, var719=$c2, var3372=$r27, var3765=$c3, var1187=$r28, var2485=$r29, var293=java.util.StringTokenizer, var3270=$r30, var2385=1, var3575=$r31, var154=$z5, var192=$r4}
; {r2=var538, null_type=var607, org.hibernate.hql.internal.ast.tree.ParameterContainer=var3710, r3=var2502, org.hibernate.hql.internal.ast.HqlSqlWalker=var2772, r0=var2954, java.util.Map=var2305, $r1=var1062, $z0=var2993, org.hibernate.dialect.Dialect=var1759, $r24=var3038, $r25=var2659, $r26=var1371, $c2=var719, $r27=var3372, $c3=var3765, $r28=var1187, $r29=var2485, java.util.StringTokenizer=var293, $r30=var3270, 1=var2385, $r31=var3575, $z5=var154, $r4=var192}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.hql.internal.ast.tree.ParameterContainer;	r0 := @parameter2: org.hibernate.hql.internal.ast.HqlSqlWalker;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map getEnabledFilters()>();	$z0 = interfaceinvoke $r1.<java.util.Map: boolean isEmpty()>();	if $z0 == 0 goto $r24 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.dialect.Dialect getDialect()>();	$r24 = virtualinvoke r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.dialect.Dialect getDialect()>();	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \n\r\f\t,()=<>&|+-=/*\'^![]#~\\");	$c2 = virtualinvoke $r24.<org.hibernate.dialect.Dialect: char openQuote()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$c3 = virtualinvoke $r24.<org.hibernate.dialect.Dialect: char closeQuote()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	$r30 = new java.util.StringTokenizer;	specialinvoke $r30.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r2, $r29, 1);	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$z5 = virtualinvoke $r30.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z5 == 0 goto $r4 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r3.<org.hibernate.hql.internal.ast.tree.ParameterContainer: void setText(java.lang.String)>($r4);	return
;block_num 4