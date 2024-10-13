(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3114 0)
(declare-sort var3942 0)
(declare-sort var3715 0)
(declare-sort var548 0)
(declare-sort var2927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun guesstimatedBufferSize/-766285534 (var3114) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-766285534 (var3114) String)
(declare-fun var3942_isNotEmpty/-74719548 (String) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun selectClause/-766285534 (var3114) String)
(declare-fun fromClause/-766285534 (var3114) String)
(declare-fun outerJoinsAfterFrom/-766285534 (var3114) String)
(declare-fun whereClause/-766285534 (var3114) String)
(declare-fun outerJoinsAfterWhere/-766285534 (var3114) String)
(declare-fun groupByClause/-766285534 (var3114) String)
(declare-fun orderByClause/-766285534 (var3114) String)
(declare-fun lockOptions/-766285534 (var3114) var3715)
(declare-fun getLockMode/2004258094 (var3715) var548)
(declare-fun dialect/-766285534 (var3114) var2927)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun transformSelectString/323702850 (var2927 String) String)
(declare-const null-var3114 var3114)
(declare-const var548-NONE var548)
(declare-const var1512 var3114) ; Statement: r1 := @this: org.hibernate.sql.Select 
(assert (not (= var1512 null-var3114)))
(define-const var3839 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2396 Int (guesstimatedBufferSize/-766285534 var1512)) ; Statement: $i0 = r1.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(assert true)
;(assert (<init>/543593434 var3839 var2396)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var3839!1 String)
(declare-const var2396!1 Int)
(define-const var2992 String (comment/-766285534 var1512)) ; Statement: $r2 = r1.<org.hibernate.sql.Select: java.lang.String comment> 
(define-const var786 Bool (var3942_isNotEmpty/-74719548 var2992)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= (ite var786 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2039 String (append/672562846 var3839!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3839!2 String)
(assert (= var3839!2 (str.++ var3839!1 "select ")))
(define-const var2763 String (selectClause/-766285534 var1512)) ; Statement: $r3 = r1.<org.hibernate.sql.Select: java.lang.String selectClause> 
(assert true)
(define-const var2505 String (append/672562846 var2039 var2763)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2039!1 String)
(assert (= var2039!1 (str.++ var2039 var2763)))
(assert true)
(define-const var2848 String (append/672562846 var2505 " from ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var2505!1 String)
(assert (= var2505!1 (str.++ var2505 " from ")))
(define-const var3995 String (fromClause/-766285534 var1512)) ; Statement: $r6 = r1.<org.hibernate.sql.Select: java.lang.String fromClause> 
(assert true)
;(assert (append/672562846 var2848 var3995)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2848!1 String)
(assert (= var2848!1 (str.++ var2848 var3995)))
(define-const var157 String (outerJoinsAfterFrom/-766285534 var1512)) ; Statement: $r8 = r1.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterFrom> 
(define-const var2709 Bool (var3942_isNotEmpty/-74719548 var157)) ; Statement: $z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r8) 
 ; Statement: if $z1 == 0 goto $r9 = r1.<org.hibernate.sql.Select: java.lang.String whereClause> 
(assert (= (ite var2709 1 0) 0)) ; Cond: $z1 == 0 
(define-const var294 String (whereClause/-766285534 var1512)) ; Statement: $r9 = r1.<org.hibernate.sql.Select: java.lang.String whereClause> 
(define-const var519 Bool (var3942_isNotEmpty/-74719548 var294)) ; Statement: $z2 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r9) 
 ; Statement: if $z2 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(assert (not (not (= (ite var519 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3506 String (outerJoinsAfterWhere/-766285534 var1512)) ; Statement: $r28 = r1.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterWhere> 
(define-const var307 Bool (var3942_isNotEmpty/-74719548 var3506)) ; Statement: $z6 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r28) 
 ; Statement: if $z6 == 0 goto $r35 = r1.<org.hibernate.sql.Select: java.lang.String groupByClause> 
(assert (= (ite var307 1 0) 0)) ; Cond: $z6 == 0 
(define-const var223 String (groupByClause/-766285534 var1512)) ; Statement: $r35 = r1.<org.hibernate.sql.Select: java.lang.String groupByClause> 
(define-const var3113 Bool (var3942_isNotEmpty/-74719548 var223)) ; Statement: $z8 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r35) 
 ; Statement: if $z8 == 0 goto $r11 = r1.<org.hibernate.sql.Select: java.lang.String orderByClause> 
(assert (= (ite var3113 1 0) 0)) ; Cond: $z8 == 0 
(define-const var1349 String (orderByClause/-766285534 var1512)) ; Statement: $r11 = r1.<org.hibernate.sql.Select: java.lang.String orderByClause> 
(define-const var794 Bool (var3942_isNotEmpty/-74719548 var1349)) ; Statement: $z4 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r11) 
 ; Statement: if $z4 == 0 goto $r12 = r1.<org.hibernate.sql.Select: org.hibernate.LockOptions lockOptions> 
(assert (= (ite var794 1 0) 0)) ; Cond: $z4 == 0 
(define-const var3054 var3715 (lockOptions/-766285534 var1512)) ; Statement: $r12 = r1.<org.hibernate.sql.Select: org.hibernate.LockOptions lockOptions> 
(assert true)
(define-const var1718 var548 (getLockMode/2004258094 var3054)) ; Statement: $r14 = virtualinvoke $r12.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>() 
(define-const var394 var548 var548-NONE) ; Statement: $r13 = <org.hibernate.LockMode: org.hibernate.LockMode NONE> 
 ; Statement: if $r14 == $r13 goto $r15 = r1.<org.hibernate.sql.Select: org.hibernate.dialect.Dialect dialect> 
(assert (= var1718 var394)) ; Cond: $r14 == $r13 
(define-const var1856 var2927 (dialect/-766285534 var1512)) ; Statement: $r15 = r1.<org.hibernate.sql.Select: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var3368 String (toString/-2075883882 var3839!2)) ; Statement: $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3771 String (transformSelectString/323702850 var1856 var3368)) ; Statement: $r17 = virtualinvoke $r15.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r16) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-766285534=([org.hibernate.sql.Select], java.lang.String), var3942_isNotEmpty/-74719548=([java.lang.String], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), selectClause/-766285534=([org.hibernate.sql.Select], java.lang.String), fromClause/-766285534=([org.hibernate.sql.Select], java.lang.String), outerJoinsAfterFrom/-766285534=([org.hibernate.sql.Select], java.lang.String), whereClause/-766285534=([org.hibernate.sql.Select], java.lang.String), outerJoinsAfterWhere/-766285534=([org.hibernate.sql.Select], java.lang.String), groupByClause/-766285534=([org.hibernate.sql.Select], java.lang.String), orderByClause/-766285534=([org.hibernate.sql.Select], java.lang.String), lockOptions/-766285534=([org.hibernate.sql.Select], org.hibernate.LockOptions), getLockMode/2004258094=([org.hibernate.LockOptions], org.hibernate.LockMode), dialect/-766285534=([org.hibernate.sql.Select], org.hibernate.dialect.Dialect), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var3114=org.hibernate.sql.Select, var1512=r1, var3839=$r0, var2396=$i0, var2992=$r2, var3942=org.hibernate.internal.util.StringHelper, var786=$z0, var2039=$r4, var2763=$r3, var2505=$r5, var2848=$r7, var3995=$r6, var157=$r8, var2709=$z1, var294=$r9, var519=$z2, var3506=$r28, var307=$z6, var223=$r35, var3113=$z8, var1349=$r11, var794=$z4, var3715=org.hibernate.LockOptions, var3054=$r12, var548=org.hibernate.LockMode, var1718=$r14, var394=$r13, var2927=org.hibernate.dialect.Dialect, var1856=$r15, var3368=$r16, var3771=$r17}
; {org.hibernate.sql.Select=var3114, r1=var1512, $r0=var3839, $i0=var2396, $r2=var2992, org.hibernate.internal.util.StringHelper=var3942, $z0=var786, $r4=var2039, $r3=var2763, $r5=var2505, $r7=var2848, $r6=var3995, $r8=var157, $z1=var2709, $r9=var294, $z2=var519, $r28=var3506, $z6=var307, $r35=var223, $z8=var3113, $r11=var1349, $z4=var794, org.hibernate.LockOptions=var3715, $r12=var3054, org.hibernate.LockMode=var548, $r14=var1718, $r13=var394, org.hibernate.dialect.Dialect=var2927, $r15=var1856, $r16=var3368, $r17=var3771}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.Select;	$r0 = new java.lang.StringBuilder;	$i0 = r1.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i0);	$r2 = r1.<org.hibernate.sql.Select: java.lang.String comment>;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r2);	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = r1.<org.hibernate.sql.Select: java.lang.String selectClause>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r6 = r1.<org.hibernate.sql.Select: java.lang.String fromClause>;	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = r1.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterFrom>;	$z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r8);	if $z1 == 0 goto $r9 = r1.<org.hibernate.sql.Select: java.lang.String whereClause>;	$r9 = r1.<org.hibernate.sql.Select: java.lang.String whereClause>;	$z2 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r9);	if $z2 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$r28 = r1.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterWhere>;	$z6 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r28);	if $z6 == 0 goto $r35 = r1.<org.hibernate.sql.Select: java.lang.String groupByClause>;	$r35 = r1.<org.hibernate.sql.Select: java.lang.String groupByClause>;	$z8 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r35);	if $z8 == 0 goto $r11 = r1.<org.hibernate.sql.Select: java.lang.String orderByClause>;	$r11 = r1.<org.hibernate.sql.Select: java.lang.String orderByClause>;	$z4 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r11);	if $z4 == 0 goto $r12 = r1.<org.hibernate.sql.Select: org.hibernate.LockOptions lockOptions>;	$r12 = r1.<org.hibernate.sql.Select: org.hibernate.LockOptions lockOptions>;	$r14 = virtualinvoke $r12.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>();	$r13 = <org.hibernate.LockMode: org.hibernate.LockMode NONE>;	if $r14 == $r13 goto $r15 = r1.<org.hibernate.sql.Select: org.hibernate.dialect.Dialect dialect>;	$r15 = r1.<org.hibernate.sql.Select: org.hibernate.dialect.Dialect dialect>;	$r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke $r15.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r16);	return $r17
;block_num 8