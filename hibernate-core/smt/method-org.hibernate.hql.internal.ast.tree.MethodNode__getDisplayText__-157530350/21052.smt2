(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var913 0)
(declare-sort var1911 0)
(declare-sort var1351 0)
(declare-sort var620 0)
(declare-sort var422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun methodName/-632286265 (var913) String)
(declare-fun selectColumns/-632286265 (var913) (Array Int String))
(declare-fun var1351_asList/1779083644 ((Array Int var620)) var1911)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var620__ ((Array Int String)) (Array Int var620))
(declare-fun append/-1031950772 (String var620) String)
(declare-fun cast-from-var1911-to-var620 (var1911) var620)
(declare-fun fromElement/-632286265 (var913) var422)
(declare-fun getTableAlias/-89139576 (var422) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var913 var913)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3601 var913) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.MethodNode 
(assert (not (= var3601 null-var913)))
(define-const var3558 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3558)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3558!1 String)
(assert (= var3558!1 ""))
(assert true)
(define-const var1877 String (append/672562846 var3558!1 "{method=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{method=") 
(declare-const var3558!2 String)
(assert (= var3558!2 (str.++ var3558!1 "{method=")))
(define-const var3265 String (methodName/-632286265 var3601)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String methodName> 
(assert true)
(define-const var2468 String (append/672562846 var1877 var3265)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1877!1 String)
(assert (= var1877!1 (str.++ var1877 var3265)))
(assert true)
(define-const var3067 String (append/672562846 var2468 ",selectColumns=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",selectColumns=") 
(declare-const var2468!1 String)
(assert (= var2468!1 (str.++ var2468 ",selectColumns=")))
(define-const var1813 (Array Int String) (selectColumns/-632286265 var3601)) ; Statement: $r5 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns> 
 ; Statement: if $r5 != null goto $r6 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns> 
(assert (not (= var1813 null-__Array__Int__String__))) ; Cond: $r5 != null 
(define-const var1125 (Array Int String) (selectColumns/-632286265 var3601)) ; Statement: $r6 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns> 
(define-const var3152 var1911 (var1351_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var620__ var1125))) ; Statement: $r15 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r6) 
(assert true) ; Non Conditional
(assert true)
(define-const var210 String (append/-1031950772 var3067 (cast-from-var1911-to-var620 var3152))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3067!1 String)
(assert (str.prefixof var3067 var3067!1))
(assert true)
(define-const var1566 String (append/672562846 var210 ",fromElement=")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",fromElement=") 
(declare-const var210!1 String)
(assert (= var210!1 (str.++ var210 ",fromElement=")))
(define-const var1619 var422 (fromElement/-632286265 var3601)) ; Statement: $r9 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement> 
(assert true)
(define-const var3161 String (getTableAlias/-89139576 var1619)) ; Statement: $r10 = virtualinvoke $r9.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
(assert true)
(define-const var3456 String (append/672562846 var1566 var3161)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1566!1 String)
(assert (= var1566!1 (str.++ var1566 var3161)))
(assert true)
(define-const var427 String (append/672562846 var3456 "}")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3456!1 String)
(assert (= var3456!1 (str.++ var3456 "}")))
(assert true)
(define-const var1227 String (toString/-2075883882 var427)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), methodName/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], java.lang.String), selectColumns/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], java.lang.String[]), var1351_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__String__-to-__Array__Int__var620__=([java.lang.String[]], java.lang.Object[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1911-to-var620=([java.util.List], java.lang.Object), fromElement/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], org.hibernate.hql.internal.ast.tree.FromElement), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var913=org.hibernate.hql.internal.ast.tree.MethodNode, var3601=r1, var3558=$r0, var1877=$r3, var3265=$r2, var2468=$r4, var3067=$r7, var1813=$r5, var1125=$r6, var1911=java.util.List, var1351=java.util.Arrays, var620=java.lang.Object, var3152=$r15, var210=$r8, var1566=$r11, var422=org.hibernate.hql.internal.ast.tree.FromElement, var1619=$r9, var3161=$r10, var3456=$r12, var427=$r13, var1227=$r14}
; {org.hibernate.hql.internal.ast.tree.MethodNode=var913, r1=var3601, $r0=var3558, $r3=var1877, $r2=var3265, $r4=var2468, $r7=var3067, $r5=var1813, $r6=var1125, java.util.List=var1911, java.util.Arrays=var1351, java.lang.Object=var620, $r15=var3152, $r8=var210, $r11=var1566, org.hibernate.hql.internal.ast.tree.FromElement=var422, $r9=var1619, $r10=var3161, $r12=var3456, $r13=var427, $r14=var1227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.MethodNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{method=");	$r2 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String methodName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",selectColumns=");	$r5 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns>;	if $r5 != null goto $r6 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns>;	$r6 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns>;	$r15 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",fromElement=");	$r9 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement>;	$r10 = virtualinvoke $r9.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3