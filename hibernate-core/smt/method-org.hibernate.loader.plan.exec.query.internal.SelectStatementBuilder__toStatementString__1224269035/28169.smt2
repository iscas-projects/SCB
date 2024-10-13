(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1634 0)
(declare-sort var684 0)
(declare-sort var1473 0)
(declare-sort var2786 0)
(declare-sort var2365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun guesstimatedBufferSize/34499814 (var1634) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/34499814 (var1634) String)
(declare-fun var684_isNotEmpty/-74719548 (String) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun selectClause/34499814 (var1634) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun fromClause/34499814 (var1634) String)
(declare-fun outerJoinsAfterFrom/34499814 (var1634) String)
(declare-fun whereClause/34499814 (var1634) String)
(declare-fun isNotEmpty/615696711 (var1634 String) Bool)
(declare-fun outerJoinsAfterWhere/34499814 (var1634) String)
(declare-fun isNotEmpty/-914335298 (var1634 String) Bool)
(declare-fun orderByClause/34499814 (var1634) String)
(declare-fun lockOptions/34499814 (var1634) var1473)
(declare-fun getLockMode/2004258094 (var1473) var2786)
(declare-fun dialect/34499814 (var1634) var2365)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun transformSelectString/323702850 (var2365 String) String)
(declare-const null-var1634 var1634)
(declare-const null-String String)
(declare-const var2786-NONE var2786)
(declare-const var1539 var1634) ; Statement: r1 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var1539 null-var1634)))
(define-const var3603 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2753 Int (guesstimatedBufferSize/34499814 var1539)) ; Statement: $i0 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize> 
(assert true)
;(assert (<init>/543593434 var3603 var2753)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var3603!1 String)
(declare-const var2753!1 Int)
(define-const var3995 String var3603!1) ; Statement: r33 = $r0 
(define-const var3376 String (comment/34499814 var1539)) ; Statement: $r2 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String comment> 
(define-const var583 Bool (var684_isNotEmpty/-74719548 var3376)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= (ite var583 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3517 String (append/672562846 var3603!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3603!2 String)
(assert (= var3603!2 (str.++ var3603!1 "select ")))
(define-const var485 String (selectClause/34499814 var1539)) ; Statement: $r3 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause> 
(assert true)
(define-const var149 String (append/-13659068 var3517 (cast-from-String-to-String var485))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r3) 
(declare-const var3517!1 String)
(assert (str.prefixof var3517 var3517!1))
(assert true)
(define-const var2854 String (append/672562846 var149 " from ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var149!1 String)
(assert (= var149!1 (str.++ var149 " from ")))
(define-const var579 String (fromClause/34499814 var1539)) ; Statement: $r6 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause> 
(assert true)
;(assert (append/-13659068 var2854 (cast-from-String-to-String var579))) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r6) 
(declare-const var2854!1 String)
(assert (str.prefixof var2854 var2854!1))
(define-const var2341 String (outerJoinsAfterFrom/34499814 var1539)) ; Statement: $r8 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String outerJoinsAfterFrom> 
(define-const var1783 Bool (var684_isNotEmpty/-74719548 var2341)) ; Statement: $z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r8) 
 ; Statement: if $z1 == 0 goto $r9 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder whereClause> 
(assert (= (ite var1783 1 0) 0)) ; Cond: $z1 == 0 
(define-const var966 String (whereClause/34499814 var1539)) ; Statement: $r9 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder whereClause> 
(assert true)
(define-const var1880 Bool (isNotEmpty/615696711 var1539 var966)) ; Statement: $z2 = specialinvoke r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: boolean isNotEmpty(java.lang.StringBuilder)>($r9) 
 ; Statement: if $z2 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(assert (not (not (= (ite var1880 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var351 String (outerJoinsAfterWhere/34499814 var1539)) ; Statement: $r27 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String outerJoinsAfterWhere> 
(assert true)
(define-const var3519 Bool (isNotEmpty/-914335298 var1539 var351)) ; Statement: $z5 = specialinvoke r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: boolean isNotEmpty(java.lang.String)>($r27) 
 ; Statement: if $z5 == 0 goto $r35 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
(assert (= (ite var3519 1 0) 0)) ; Cond: $z5 == 0 
(define-const var2194 String (orderByClause/34499814 var1539)) ; Statement: $r35 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause> 
 ; Statement: if $r35 == null goto $r11 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.LockOptions lockOptions> 
(assert (= var2194 null-String)) ; Cond: $r35 == null 
(define-const var1752 var1473 (lockOptions/34499814 var1539)) ; Statement: $r11 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.LockOptions lockOptions> 
(assert true)
(define-const var1365 var2786 (getLockMode/2004258094 var1752)) ; Statement: $r13 = virtualinvoke $r11.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>() 
(define-const var2281 var2786 var2786-NONE) ; Statement: $r12 = <org.hibernate.LockMode: org.hibernate.LockMode NONE> 
 ; Statement: if $r13 == $r12 goto $r14 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.dialect.Dialect dialect> 
(assert (= var1365 var2281)) ; Cond: $r13 == $r12 
(define-const var2869 var2365 (dialect/34499814 var1539)) ; Statement: $r14 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var3047 String (toString/-2075883882 var3995)) ; Statement: $r15 = virtualinvoke r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var81 String (transformSelectString/323702850 var2869 var3047)) ; Statement: $r16 = virtualinvoke $r14.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r15) 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), guesstimatedBufferSize/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], int), <init>/543593434=([java.lang.StringBuilder, int], void), comment/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.String), var684_isNotEmpty/-74719548=([java.lang.String], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), selectClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), fromClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), outerJoinsAfterFrom/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.String), whereClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), isNotEmpty/615696711=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, java.lang.StringBuilder], boolean), outerJoinsAfterWhere/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.String), isNotEmpty/-914335298=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, java.lang.String], boolean), orderByClause/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], java.lang.StringBuilder), lockOptions/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], org.hibernate.LockOptions), getLockMode/2004258094=([org.hibernate.LockOptions], org.hibernate.LockMode), dialect/34499814=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder], org.hibernate.dialect.Dialect), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var1634=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var1539=r1, var3603=$r0, var2753=$i0, var3995=r33, var3376=$r2, var684=org.hibernate.internal.util.StringHelper, var583=$z0, var3517=$r4, var485=$r3, var149=$r5, var2854=$r7, var579=$r6, var2341=$r8, var1783=$z1, var966=$r9, var1880=$z2, var351=$r27, var3519=$z5, var2194=$r35, var1473=org.hibernate.LockOptions, var1752=$r11, var2786=org.hibernate.LockMode, var1365=$r13, var2281=$r12, var2365=org.hibernate.dialect.Dialect, var2869=$r14, var3047=$r15, var81=$r16}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var1634, r1=var1539, $r0=var3603, $i0=var2753, r33=var3995, $r2=var3376, org.hibernate.internal.util.StringHelper=var684, $z0=var583, $r4=var3517, $r3=var485, $r5=var149, $r7=var2854, $r6=var579, $r8=var2341, $z1=var1783, $r9=var966, $z2=var1880, $r27=var351, $z5=var3519, $r35=var2194, org.hibernate.LockOptions=var1473, $r11=var1752, org.hibernate.LockMode=var2786, $r13=var1365, $r12=var2281, org.hibernate.dialect.Dialect=var2365, $r14=var2869, $r15=var3047, $r16=var81}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	$r0 = new java.lang.StringBuilder;	$i0 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: int guesstimatedBufferSize>;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i0);	r33 = $r0;	$r2 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String comment>;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r2);	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder selectClause>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r6 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder fromClause>;	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r6);	$r8 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String outerJoinsAfterFrom>;	$z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r8);	if $z1 == 0 goto $r9 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder whereClause>;	$r9 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder whereClause>;	$z2 = specialinvoke r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: boolean isNotEmpty(java.lang.StringBuilder)>($r9);	if $z2 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$r27 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.String outerJoinsAfterWhere>;	$z5 = specialinvoke r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: boolean isNotEmpty(java.lang.String)>($r27);	if $z5 == 0 goto $r35 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	$r35 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: java.lang.StringBuilder orderByClause>;	if $r35 == null goto $r11 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.LockOptions lockOptions>;	$r11 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.LockOptions lockOptions>;	$r13 = virtualinvoke $r11.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>();	$r12 = <org.hibernate.LockMode: org.hibernate.LockMode NONE>;	if $r13 == $r12 goto $r14 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.dialect.Dialect dialect>;	$r14 = r1.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: org.hibernate.dialect.Dialect dialect>;	$r15 = virtualinvoke r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke $r14.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r15);	return $r16
;block_num 7