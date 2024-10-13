(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2689 0)
(declare-sort var2474 0)
(declare-sort var1587 0)
(declare-sort var3972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkInitialized/1364637885 (var2689) void)
(declare-fun getTableAlias/-89139576 (var2689) String)
(declare-fun var1587-init () var1587)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3972) String)
(declare-fun cast-from-var2689-to-var3972 (var2689) var3972)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1587 String) void)
(declare-const null-var2689 var2689)
(declare-const null-String String)
(declare-const var279 var2689) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var279 null-var2689)))
(assert true)
;(assert (checkInitialized/1364637885 var279)) ; Statement: virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: void checkInitialized()>() 

(declare-const var279!1 var2689)
(assert true)
(define-const var294 String (getTableAlias/-89139576 var279!1)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
 ; Statement: if r1 != null goto r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] getIdentifierPropertyNames()>() 
(assert (not (not (= var294 null-String)))) ; Negate: Cond: r1 != null  
(define-const var3594 var1587 var1587-init) ; Statement: $r11 = new java.lang.IllegalStateException 
(define-const var484 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var484)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var484!1 String)
(assert (= var484!1 ""))
(assert true)
(define-const var3747 String (append/672562846 var484!1 "No table alias for node ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No table alias for node ") 
(declare-const var484!2 String)
(assert (= var484!2 (str.++ var484!1 "No table alias for node ")))
(assert true)
(define-const var2159 String (append/-1031950772 var3747 (cast-from-var2689-to-var3972 var279!1))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3747!1 String)
(assert (str.prefixof var3747 var3747!1))
(assert true)
(define-const var1004 String (toString/-2075883882 var2159)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3594 var1004)) ; Statement: specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15) 

(declare-const var3594!1 var1587)
(declare-const var1004!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {checkInitialized/1364637885=([org.hibernate.hql.internal.ast.tree.FromElement], void), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), var1587-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2689-to-var3972=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2689=org.hibernate.hql.internal.ast.tree.FromElement, var279=r0, var294=r1, var2474=null_type, var1587=java.lang.IllegalStateException, var3594=$r11, var484=$r12, var3747=$r13, var3972=java.lang.Object, var2159=$r14, var1004=$r15}
; {org.hibernate.hql.internal.ast.tree.FromElement=var2689, r0=var279, r1=var294, null_type=var2474, java.lang.IllegalStateException=var1587, $r11=var3594, $r12=var484, $r13=var3747, java.lang.Object=var3972, $r14=var2159, $r15=var1004}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FromElement;	virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: void checkInitialized()>();	r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	if r1 != null goto r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] getIdentifierPropertyNames()>();	$r11 = new java.lang.IllegalStateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No table alias for node ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2