(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3426 0)
(declare-sort var2662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTableName/761225172 (var3426) String)
(declare-fun columnSpec/1732383027 (var3426) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setText/981743401 (var2662 String) void)
(declare-fun cast-from-var3426-to-var2662 (var3426) var2662)
(declare-const null-var3426 var3426)
(declare-const var2991 var3426) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.IntoClause 
(assert (not (= var2991 null-var3426)))
(define-const var518 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var518)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var518!1 String)
(assert (= var518!1 ""))
(assert true)
(define-const var1617 String (append/672562846 var518!1 "into ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("into ") 
(declare-const var518!2 String)
(assert (= var518!2 (str.++ var518!1 "into ")))
(assert true)
(define-const var392 String (getTableName/761225172 var2991)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String getTableName()>() 
(assert true)
(define-const var1555 String (append/672562846 var1617 var392)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1617!1 String)
(assert (= var1617!1 (str.++ var1617 var392)))
(assert true)
(define-const var1288 String (append/672562846 var1555 " ( ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ") 
(declare-const var1555!1 String)
(assert (= var1555!1 (str.++ var1555 " ( ")))
(define-const var2847 String (columnSpec/1732383027 var2991)) ; Statement: $r5 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> 
(assert true)
(define-const var2095 String (append/672562846 var1288 var2847)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 var2847)))
(assert true)
(define-const var255 String (append/672562846 var2095 " )")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var2095!1 String)
(assert (= var2095!1 (str.++ var2095 " )")))
(assert true)
(define-const var2832 String (toString/-2075883882 var255)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setText/981743401 (cast-from-var3426-to-var2662 var2991) var2832)) ; Statement: virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: void setText(java.lang.String)>($r9) 

(declare-const var2991!1 var3426)
(declare-const var2832!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTableName/761225172=([org.hibernate.hql.internal.ast.tree.IntoClause], java.lang.String), columnSpec/1732383027=([org.hibernate.hql.internal.ast.tree.IntoClause], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setText/981743401=([org.hibernate.hql.internal.ast.tree.SqlNode, java.lang.String], void), cast-from-var3426-to-var2662=([org.hibernate.hql.internal.ast.tree.IntoClause], org.hibernate.hql.internal.ast.tree.SqlNode)}
; {var3426=org.hibernate.hql.internal.ast.tree.IntoClause, var2991=r0, var518=$r1, var1617=$r3, var392=$r2, var1555=$r4, var1288=$r6, var2847=$r5, var2095=$r7, var255=$r8, var2832=$r9, var2662=org.hibernate.hql.internal.ast.tree.SqlNode}
; {org.hibernate.hql.internal.ast.tree.IntoClause=var3426, r0=var2991, $r1=var518, $r3=var1617, $r2=var392, $r4=var1555, $r6=var1288, $r5=var2847, $r7=var2095, $r8=var255, $r9=var2832, org.hibernate.hql.internal.ast.tree.SqlNode=var2662}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.IntoClause;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("into ");	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String getTableName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ( ");	$r5 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: void setText(java.lang.String)>($r9);	return
;block_num 1