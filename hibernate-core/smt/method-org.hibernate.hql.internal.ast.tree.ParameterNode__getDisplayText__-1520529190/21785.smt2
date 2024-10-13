(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3322 0)
(declare-sort var1896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun parameterSpecification/718645639 (var3322) var1896)
(declare-fun var1896_renderDisplayInfo/-867112261 (var1896) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3322 var3322)
(declare-const null-var1896 var1896)
(declare-const var2722 var3322) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.ParameterNode 
(assert (not (= var2722 null-var3322)))
(define-const var3922 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3922)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3922!1 String)
(assert (= var3922!1 ""))
(assert true)
(define-const var3189 String (append/672562846 var3922!1 "{")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var3922!2 String)
(assert (= var3922!2 (str.++ var3922!1 "{")))
(define-const var2372 var1896 (parameterSpecification/718645639 var2722)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification> 
(assert (not (= var2372 null-var1896))) ; Cond: $r2 != null 
(define-const var1914 var1896 (parameterSpecification/718645639 var2722)) ; Statement: $r3 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification> 
(define-const var2792 String (var1896_renderDisplayInfo/-867112261 var1914)) ; Statement: $r8 = interfaceinvoke $r3.<org.hibernate.param.ParameterSpecification: java.lang.String renderDisplayInfo()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2971 String (append/672562846 var3189 var2792)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3189!1 String)
(assert (= var3189!1 (str.++ var3189 var2792)))
(assert true)
(define-const var189 String (append/672562846 var2971 "}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2971!1 String)
(assert (= var2971!1 (str.++ var2971 "}")))
(assert true)
(define-const var2340 String (toString/-2075883882 var189)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), parameterSpecification/718645639=([org.hibernate.hql.internal.ast.tree.ParameterNode], org.hibernate.param.ParameterSpecification), var1896_renderDisplayInfo/-867112261=([org.hibernate.param.ParameterSpecification], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3322=org.hibernate.hql.internal.ast.tree.ParameterNode, var2722=r1, var3922=$r0, var3189=$r4, var1896=org.hibernate.param.ParameterSpecification, var2372=$r2, var1914=$r3, var2792=$r8, var2971=$r5, var189=$r6, var2340=$r7}
; {org.hibernate.hql.internal.ast.tree.ParameterNode=var3322, r1=var2722, $r0=var3922, $r4=var3189, org.hibernate.param.ParameterSpecification=var1896, $r2=var2372, $r3=var1914, $r8=var2792, $r5=var2971, $r6=var189, $r7=var2340}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.ParameterNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r2 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification>;	if $r2 != null goto $r3 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification>;	$r3 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification>;	$r8 = interfaceinvoke $r3.<org.hibernate.param.ParameterSpecification: java.lang.String renderDisplayInfo()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3