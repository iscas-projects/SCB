(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var439 0)
(declare-sort var2115 0)
(declare-sort var2597 0)
(declare-sort var3836 0)
(declare-sort var1914 0)
(declare-sort var2602 0)
(declare-sort var3471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/19152 (var439) String)
(declare-fun var2597_findColumns/-631918876 (var2597 String var2115) (Array Int String))
(declare-fun var2597_getFactory/960862227 (var2597) var3836)
(declare-fun var3836_getDialect/549556505 (var3836) var1914)
(declare-fun supportsRowValueConstructorSyntaxInInList/-2052866003 (var1914) Bool)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun values/19152 (var439) (Array Int var2602))
(declare-fun getLength-Arr-var2602-1 ((Array Int var2602)) Int)
(declare-fun var3471_repeat/-922273135 (String Int) String)
(declare-const null-var439 var439)
(declare-const null-var2115 var2115)
(declare-const null-var2597 var2597)
(declare-const var365 var439) ; Statement: r1 := @this: org.hibernate.criterion.InExpression 
(assert (not (= var365 null-var439)))
(declare-const var161 var2115) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var161 null-var2115)))
(declare-const var2143 var2597) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2143 null-var2597)))
(define-const var2509 String (propertyName/19152 var365)) ; Statement: $r3 = r1.<org.hibernate.criterion.InExpression: java.lang.String propertyName> 
(define-const var887 (Array Int String) (var2597_findColumns/-631918876 var2143 var2509 var161)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var2769 var3836 (var2597_getFactory/960862227 var2143)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1595 var1914 (var3836_getDialect/549556505 var2769)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var2989 Bool (supportsRowValueConstructorSyntaxInInList/-2052866003 var1595)) ; Statement: $z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>() 
 ; Statement: if $z0 != 0 goto $r7 = new java.lang.StringBuilder 
(assert (not (not (= (ite var2989 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1446 Int (getLength-Arr-String-1 var887)) ; Statement: $i6 = lengthof r4 
 ; Statement: if $i6 > 1 goto $r36 = new java.lang.StringBuilder 
(assert (> var1446 1)) ; Cond: $i6 > 1 
(define-const var3174 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3174)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3174!1 String)
(assert (= var3174!1 ""))
(assert true)
(define-const var163 String (append/672562846 var3174!1 " ( ")) ; Statement: $r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ") 
(declare-const var3174!2 String)
(assert (= var3174!2 (str.++ var3174!1 " ( ")))
(define-const var3573 String (String_join/-1520935655 (cast-from-String-to-String " = ? and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var887))) ; Statement: $r37 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" = ? and ", r4) 
(assert true)
(define-const var241 String (append/672562846 var163 var3573)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var163!1 String)
(assert (= var163!1 (str.++ var163 var3573)))
(assert true)
(define-const var381 String (append/672562846 var241 "= ? ) ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("= ? ) ") 
(declare-const var241!1 String)
(assert (= var241!1 (str.++ var241 "= ? ) ")))
(assert true)
(define-const var2443 String (toString/-2075883882 var381)) ; Statement: r61 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var496 (Array Int var2602) (values/19152 var365)) ; Statement: $r41 = r1.<org.hibernate.criterion.InExpression: java.lang.Object[] values> 
(define-const var3927 Int (getLength-Arr-var2602-1 var496)) ; Statement: $i7 = lengthof $r41 
 ; Statement: if $i7 <= 0 goto $r62 = "" 
(assert (not (<= var3927 0))) ; Negate: Cond: $i7 <= 0  
(define-const var234 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var234)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var234!1 String)
(assert (= var234!1 ""))
(define-const var1960 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1960)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1960!1 String)
(assert (= var1960!1 ""))
(assert true)
(define-const var1846 String (append/672562846 var1960!1 var2443)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r61) 
(declare-const var1960!2 String)
(assert (= var1960!2 (str.++ var1960!1 var2443)))
(assert true)
(define-const var1817 String (append/672562846 var1846 "or ")) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("or ") 
(declare-const var1846!1 String)
(assert (= var1846!1 (str.++ var1846 "or ")))
(assert true)
(define-const var87 String (toString/-2075883882 var1817)) ; Statement: $r51 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3040 (Array Int var2602) (values/19152 var365)) ; Statement: $r50 = r1.<org.hibernate.criterion.InExpression: java.lang.Object[] values> 
(define-const var3893 Int (getLength-Arr-var2602-1 var3040)) ; Statement: $i8 = lengthof $r50 
(define-const var3167 Int (- var3893 1)) ; Statement: $i9 = $i8 - 1 
(define-const var3328 String (var3471_repeat/-922273135 var87 var3167)) ; Statement: $r52 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(java.lang.String,int)>($r51, $i9) 
(assert true)
(define-const var2336 String (append/672562846 var234!1 var3328)) ; Statement: $r53 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var234!2 String)
(assert (= var234!2 (str.++ var234!1 var3328)))
(assert true)
(define-const var3408 String (append/672562846 var2336 var2443)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r61) 
(declare-const var2336!1 String)
(assert (= var2336!1 (str.++ var2336 var2443)))
(assert true)
(define-const var612 String (toString/-2075883882 var3408)) ; Statement: $r62 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r42 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3813 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3813)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3813!1 String)
(assert (= var3813!1 ""))
(assert true)
(define-const var122 String (append/672562846 var3813!1 " ( ")) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ") 
(declare-const var3813!2 String)
(assert (= var3813!2 (str.++ var3813!1 " ( ")))
(assert true)
(define-const var2444 String (append/672562846 var122 var612)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62) 
(declare-const var122!1 String)
(assert (= var122!1 (str.++ var122 var612)))
(assert true)
(define-const var1133 String (append/672562846 var2444 " ) ")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) ") 
(declare-const var2444!1 String)
(assert (= var2444!1 (str.++ var2444 " ) ")))
(assert true)
(define-const var2381 String (toString/-2075883882 var1133)) ; Statement: $r55 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/19152=([org.hibernate.criterion.InExpression], java.lang.String), var2597_findColumns/-631918876=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), var2597_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var3836_getDialect/549556505=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.dialect.Dialect), supportsRowValueConstructorSyntaxInInList/-2052866003=([org.hibernate.dialect.Dialect], boolean), getLength-Arr-String-1=([java.lang.String[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), values/19152=([org.hibernate.criterion.InExpression], java.lang.Object[]), getLength-Arr-var2602-1=([java.lang.Object[]], int), var3471_repeat/-922273135=([java.lang.String, int], java.lang.String)}
; {var439=org.hibernate.criterion.InExpression, var365=r1, var2115=org.hibernate.Criteria, var161=r2, var2597=org.hibernate.criterion.CriteriaQuery, var2143=r0, var2509=$r3, var887=r4, var3836=org.hibernate.engine.spi.SessionFactoryImplementor, var2769=$r5, var1914=org.hibernate.dialect.Dialect, var1595=r6, var2989=$z0, var1446=$i6, var3174=$r36, var163=$r38, var3573=$r37, var241=$r39, var381=$r40, var2443=r61, var2602=java.lang.Object, var496=$r41, var3927=$i7, var234=$r46, var1960=$r47, var1846=$r48, var1817=$r49, var87=$r51, var3040=$r50, var3893=$i8, var3167=$i9, var3471=org.hibernate.internal.util.StringHelper, var3328=$r52, var2336=$r53, var3408=$r54, var612=$r62, var3813=$r42, var122=$r43, var2444=$r44, var1133=$r45, var2381=$r55}
; {org.hibernate.criterion.InExpression=var439, r1=var365, org.hibernate.Criteria=var2115, r2=var161, org.hibernate.criterion.CriteriaQuery=var2597, r0=var2143, $r3=var2509, r4=var887, org.hibernate.engine.spi.SessionFactoryImplementor=var3836, $r5=var2769, org.hibernate.dialect.Dialect=var1914, r6=var1595, $z0=var2989, $i6=var1446, $r36=var3174, $r38=var163, $r37=var3573, $r39=var241, $r40=var381, r61=var2443, java.lang.Object=var2602, $r41=var496, $i7=var3927, $r46=var234, $r47=var1960, $r48=var1846, $r49=var1817, $r51=var87, $r50=var3040, $i8=var3893, $i9=var3167, org.hibernate.internal.util.StringHelper=var3471, $r52=var3328, $r53=var2336, $r54=var3408, $r62=var612, $r42=var3813, $r43=var122, $r44=var2444, $r45=var1133, $r55=var2381}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r1 := @this: org.hibernate.criterion.InExpression;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r1.<org.hibernate.criterion.InExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	$r5 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>();	if $z0 != 0 goto $r7 = new java.lang.StringBuilder;	$i6 = lengthof r4;	if $i6 > 1 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ");	$r37 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" = ? and ", r4);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("= ? ) ");	r61 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = r1.<org.hibernate.criterion.InExpression: java.lang.Object[] values>;	$i7 = lengthof $r41;	if $i7 <= 0 goto $r62 = "";	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r61);	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("or ");	$r51 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.String toString()>();	$r50 = r1.<org.hibernate.criterion.InExpression: java.lang.Object[] values>;	$i8 = lengthof $r50;	$i9 = $i8 - 1;	$r52 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(java.lang.String,int)>($r51, $i9);	$r53 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r61);	$r62 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r42 = new java.lang.StringBuilder];	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ");	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) ");	$r55 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	return $r55
;block_num 5