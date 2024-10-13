(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3919 0)
(declare-sort var2478 0)
(declare-sort var3258 0)
(declare-sort var2056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun methodName/-632286265 (var3919) String)
(declare-fun selectColumns/-632286265 (var3919) (Array Int String))
(declare-fun append/-1031950772 (String var3258) String)
(declare-fun cast-from-var2478-to-var3258 (var2478) var3258)
(declare-fun fromElement/-632286265 (var3919) var2056)
(declare-fun getTableAlias/-89139576 (var2056) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3919 var3919)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2478 var2478)
(declare-const var3700 var3919) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.MethodNode 
(assert (not (= var3700 null-var3919)))
(define-const var426 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var426)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var426!1 String)
(assert (= var426!1 ""))
(assert true)
(define-const var23 String (append/672562846 var426!1 "{method=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{method=") 
(declare-const var426!2 String)
(assert (= var426!2 (str.++ var426!1 "{method=")))
(define-const var3553 String (methodName/-632286265 var3700)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String methodName> 
(assert true)
(define-const var1911 String (append/672562846 var23 var3553)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var23!1 String)
(assert (= var23!1 (str.++ var23 var3553)))
(assert true)
(define-const var3955 String (append/672562846 var1911 ",selectColumns=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",selectColumns=") 
(declare-const var1911!1 String)
(assert (= var1911!1 (str.++ var1911 ",selectColumns=")))
(define-const var3156 (Array Int String) (selectColumns/-632286265 var3700)) ; Statement: $r5 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns> 
 ; Statement: if $r5 != null goto $r6 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns> 
(assert (not (not (= var3156 null-__Array__Int__String__)))) ; Negate: Cond: $r5 != null  
(define-const var2467 var2478 null-var2478) ; Statement: $r15 = null 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3519 String (append/-1031950772 var3955 (cast-from-var2478-to-var3258 var2467))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3955!1 String)
(assert (str.prefixof var3955 var3955!1))
(assert true)
(define-const var3742 String (append/672562846 var3519 ",fromElement=")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",fromElement=") 
(declare-const var3519!1 String)
(assert (= var3519!1 (str.++ var3519 ",fromElement=")))
(define-const var2079 var2056 (fromElement/-632286265 var3700)) ; Statement: $r9 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement> 
(assert true)
(define-const var589 String (getTableAlias/-89139576 var2079)) ; Statement: $r10 = virtualinvoke $r9.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
(assert true)
(define-const var377 String (append/672562846 var3742 var589)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3742!1 String)
(assert (= var3742!1 (str.++ var3742 var589)))
(assert true)
(define-const var1293 String (append/672562846 var377 "}")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var377!1 String)
(assert (= var377!1 (str.++ var377 "}")))
(assert true)
(define-const var1456 String (toString/-2075883882 var1293)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), methodName/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], java.lang.String), selectColumns/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], java.lang.String[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2478-to-var3258=([java.util.List], java.lang.Object), fromElement/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], org.hibernate.hql.internal.ast.tree.FromElement), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3919=org.hibernate.hql.internal.ast.tree.MethodNode, var3700=r1, var426=$r0, var23=$r3, var3553=$r2, var1911=$r4, var3955=$r7, var3156=$r5, var2478=java.util.List, var2467=$r15, var3258=java.lang.Object, var3519=$r8, var3742=$r11, var2056=org.hibernate.hql.internal.ast.tree.FromElement, var2079=$r9, var589=$r10, var377=$r12, var1293=$r13, var1456=$r14}
; {org.hibernate.hql.internal.ast.tree.MethodNode=var3919, r1=var3700, $r0=var426, $r3=var23, $r2=var3553, $r4=var1911, $r7=var3955, $r5=var3156, java.util.List=var2478, $r15=var2467, java.lang.Object=var3258, $r8=var3519, $r11=var3742, org.hibernate.hql.internal.ast.tree.FromElement=var2056, $r9=var2079, $r10=var589, $r12=var377, $r13=var1293, $r14=var1456}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.MethodNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{method=");	$r2 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String methodName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",selectColumns=");	$r5 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns>;	if $r5 != null goto $r6 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String[] selectColumns>;	$r15 = null;	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",fromElement=");	$r9 = r1.<org.hibernate.hql.internal.ast.tree.MethodNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement>;	$r10 = virtualinvoke $r9.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3