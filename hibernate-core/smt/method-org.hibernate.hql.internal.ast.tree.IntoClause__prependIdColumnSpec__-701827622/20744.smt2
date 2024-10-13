(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1904 0)
(declare-sort var1209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun persister/1732383027 (var1904) var1209)
(declare-fun var1209_getIdentifierColumnNames/-1025856963 (var1209) (Array Int String))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columnSpec/1732383027 (var1904) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun resetText/-628006248 (var1904) void)
(declare-const null-var1904 var1904)
(declare-const var810 var1904) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.IntoClause 
(assert (not (= var810 null-var1904)))
(define-const var401 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var401)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var401!1 String)
(assert (= var401!1 ""))
(define-const var2970 var1209 (persister/1732383027 var810)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: org.hibernate.persister.entity.Queryable persister> 
(define-const var1129 (Array Int String) (var1209_getIdentifierColumnNames/-1025856963 var2970)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var1083 String (select var1129 0)) ; Statement: $r4 = $r3[0] 
(assert true)
(define-const var3114 String (append/672562846 var401!1 var1083)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var401!2 String)
(assert (= var401!2 (str.++ var401!1 var1083)))
(assert true)
(define-const var2004 String (append/672562846 var3114 ", ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3114!1 String)
(assert (= var3114!1 (str.++ var3114 ", ")))
(define-const var2345 String (columnSpec/1732383027 var810)) ; Statement: $r6 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> 
(assert true)
(define-const var352 String (append/672562846 var2004 var2345)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2004!1 String)
(assert (= var2004!1 (str.++ var2004 var2345)))
(assert true)
(define-const var1422 String (toString/-2075883882 var352)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var810!1 var1904)
(assert (not (= var810!1 null-var1904)))
(assert (= (columnSpec/1732383027 var810!1) var1422)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> = $r9 
(assert true)
;(assert (resetText/-628006248 var810!1)) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: void resetText()>() 

(declare-const var810!2 var1904)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), persister/1732383027=([org.hibernate.hql.internal.ast.tree.IntoClause], org.hibernate.persister.entity.Queryable), var1209_getIdentifierColumnNames/-1025856963=([org.hibernate.persister.entity.Queryable], java.lang.String[]), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columnSpec/1732383027=([org.hibernate.hql.internal.ast.tree.IntoClause], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), resetText/-628006248=([org.hibernate.hql.internal.ast.tree.IntoClause], void)}
; {var1904=org.hibernate.hql.internal.ast.tree.IntoClause, var810=r0, var401=$r1, var1209=org.hibernate.persister.entity.Queryable, var2970=$r2, var1129=$r3, var1083=$r4, var3114=$r5, var2004=$r7, var2345=$r6, var352=$r8, var1422=$r9}
; {org.hibernate.hql.internal.ast.tree.IntoClause=var1904, r0=var810, $r1=var401, org.hibernate.persister.entity.Queryable=var1209, $r2=var2970, $r3=var1129, $r4=var1083, $r5=var3114, $r7=var2004, $r6=var2345, $r8=var352, $r9=var1422}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.IntoClause;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: org.hibernate.persister.entity.Queryable persister>;	$r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>();	$r4 = $r3[0];	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r6 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> = $r9;	specialinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: void resetText()>();	return
;block_num 1