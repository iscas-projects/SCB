(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var1465 0)
(declare-sort var1307 0)
(declare-sort var338 0)
(declare-sort var788 0)
(declare-sort var2152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1465_getDialect/-253498657 (var1465) var338)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun table/300922348 (var1717) var788)
(declare-fun getQualifiedName/-1090669273 (var788 var1465) String)
(declare-fun getQuotedName/1896636041 (var1717 var338) String)
(declare-fun var2152_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1717 var1717)
(declare-const null-var1465 var1465)
(declare-const null-String String)
(declare-const var790 var1717) ; Statement: r3 := @this: org.hibernate.mapping.Index 
(assert (not (= var790 null-var1717)))
(declare-const var520 var1465) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var520 null-var1465)))
(declare-const var2268 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var2268 null-String)))
(declare-const var1653 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var1653 null-String)))
(define-const var1779 var338 (var1465_getDialect/-253498657 var520)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var3857 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3857)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3857!1 String)
(assert (= var3857!1 ""))
(assert true)
(define-const var697 String (append/672562846 var3857!1 "drop index ")) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop index ") 
(declare-const var3857!2 String)
(assert (= var3857!2 (str.++ var3857!1 "drop index ")))
(define-const var295 var788 (table/300922348 var790)) ; Statement: $r4 = r3.<org.hibernate.mapping.Index: org.hibernate.mapping.Table table> 
(assert true)
(define-const var1617 String (getQualifiedName/-1090669273 var295 var520)) ; Statement: $r6 = virtualinvoke $r4.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0) 
(assert true)
(define-const var2453 String (getQuotedName/1896636041 var790 var1779)) ; Statement: $r5 = virtualinvoke r3.<org.hibernate.mapping.Index: java.lang.String getQuotedName(org.hibernate.dialect.Dialect)>(r1) 
(define-const var785 String (var2152_qualify/-1563731603 var1617 var2453)) ; Statement: $r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r6, $r5) 
(assert true)
(define-const var2323 String (append/672562846 var697 var785)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var697!1 String)
(assert (= var697!1 (str.++ var697 var785)))
(assert true)
(define-const var723 String (toString/-2075883882 var2323)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1465_getDialect/-253498657=([org.hibernate.boot.model.relational.SqlStringGenerationContext], org.hibernate.dialect.Dialect), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), table/300922348=([org.hibernate.mapping.Index], org.hibernate.mapping.Table), getQualifiedName/-1090669273=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), getQuotedName/1896636041=([org.hibernate.mapping.Index, org.hibernate.dialect.Dialect], java.lang.String), var2152_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1717=org.hibernate.mapping.Index, var790=r3, var1465=org.hibernate.boot.model.relational.SqlStringGenerationContext, var520=r0, var2268=r11, var1307=null_type, var1653=r12, var338=org.hibernate.dialect.Dialect, var1779=r1, var3857=$r2, var697=$r8, var788=org.hibernate.mapping.Table, var295=$r4, var1617=$r6, var2453=$r5, var2152=org.hibernate.internal.util.StringHelper, var785=$r7, var2323=$r9, var723=$r10}
; {org.hibernate.mapping.Index=var1717, r3=var790, org.hibernate.boot.model.relational.SqlStringGenerationContext=var1465, r0=var520, r11=var2268, null_type=var1307, r12=var1653, org.hibernate.dialect.Dialect=var338, r1=var1779, $r2=var3857, $r8=var697, org.hibernate.mapping.Table=var788, $r4=var295, $r6=var1617, $r5=var2453, org.hibernate.internal.util.StringHelper=var2152, $r7=var785, $r9=var2323, $r10=var723}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.mapping.Index;	r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	r11 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop index ");	$r4 = r3.<org.hibernate.mapping.Index: org.hibernate.mapping.Table table>;	$r6 = virtualinvoke $r4.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0);	$r5 = virtualinvoke r3.<org.hibernate.mapping.Index: java.lang.String getQuotedName(org.hibernate.dialect.Dialect)>(r1);	$r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r6, $r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1