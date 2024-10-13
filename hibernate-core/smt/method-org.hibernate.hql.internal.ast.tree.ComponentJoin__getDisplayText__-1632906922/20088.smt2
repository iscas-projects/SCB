(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3979 0)
(declare-sort var2730 0)
(declare-sort var1105 0)
(declare-sort var2858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getComponentPath/-413349693 (var3979) String)
(declare-fun componentType/-1490585597 (var3979) var2730)
(declare-fun var1105_getReturnedClass/-1468116676 (var1105) ClassObject)
(declare-fun cast-from-var2730-to-var1105 (var2730) var1105)
(declare-fun append/-1031950772 (String var2858) String)
(declare-fun cast-from-ClassObject-to-var2858 (ClassObject) var2858)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3979 var3979)
(declare-const var1423 var3979) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.ComponentJoin 
(assert (not (= var1423 null-var3979)))
(define-const var1042 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1042)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1042!1 String)
(assert (= var1042!1 ""))
(assert true)
(define-const var1694 String (append/672562846 var1042!1 "ComponentJoin{path=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ComponentJoin{path=") 
(declare-const var1042!2 String)
(assert (= var1042!2 (str.++ var1042!1 "ComponentJoin{path=")))
(assert true)
(define-const var1177 String (getComponentPath/-413349693 var1423)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getComponentPath()>() 
(assert true)
(define-const var710 String (append/672562846 var1694 var1177)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1694!1 String)
(assert (= var1694!1 (str.++ var1694 var1177)))
(assert true)
(define-const var621 String (append/672562846 var710 ", type=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type=") 
(declare-const var710!1 String)
(assert (= var710!1 (str.++ var710 ", type=")))
(define-const var653 var2730 (componentType/-1490585597 var1423)) ; Statement: $r5 = r1.<org.hibernate.hql.internal.ast.tree.ComponentJoin: org.hibernate.type.CompositeType componentType> 
(define-const var1007 ClassObject (var1105_getReturnedClass/-1468116676 (cast-from-var2730-to-var1105 var653))) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.type.CompositeType: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var2318 String (append/-1031950772 var621 (cast-from-ClassObject-to-var2858 var1007))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var621!1 String)
(assert (str.prefixof var621 var621!1))
(assert true)
(define-const var3478 String (append/672562846 var2318 "}")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2318!1 String)
(assert (= var2318!1 (str.++ var2318 "}")))
(assert true)
(define-const var2953 String (toString/-2075883882 var3478)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getComponentPath/-413349693=([org.hibernate.hql.internal.ast.tree.ComponentJoin], java.lang.String), componentType/-1490585597=([org.hibernate.hql.internal.ast.tree.ComponentJoin], org.hibernate.type.CompositeType), var1105_getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), cast-from-var2730-to-var1105=([org.hibernate.type.CompositeType], org.hibernate.type.Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2858=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3979=org.hibernate.hql.internal.ast.tree.ComponentJoin, var1423=r1, var1042=$r0, var1694=$r3, var1177=$r2, var710=$r4, var621=$r7, var2730=org.hibernate.type.CompositeType, var653=$r5, var1105=org.hibernate.type.Type, var1007=$r6, var2858=java.lang.Object, var2318=$r8, var3478=$r9, var2953=$r10}
; {org.hibernate.hql.internal.ast.tree.ComponentJoin=var3979, r1=var1423, $r0=var1042, $r3=var1694, $r2=var1177, $r4=var710, $r7=var621, org.hibernate.type.CompositeType=var2730, $r5=var653, org.hibernate.type.Type=var1105, $r6=var1007, java.lang.Object=var2858, $r8=var2318, $r9=var3478, $r10=var2953}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.ComponentJoin;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ComponentJoin{path=");	$r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getComponentPath()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type=");	$r5 = r1.<org.hibernate.hql.internal.ast.tree.ComponentJoin: org.hibernate.type.CompositeType componentType>;	$r6 = interfaceinvoke $r5.<org.hibernate.type.CompositeType: java.lang.Class getReturnedClass()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1