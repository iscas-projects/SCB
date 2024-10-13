(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var653 0)
(declare-sort var1308 0)
(declare-sort var2970 0)
(declare-sort var720 0)
(declare-sort var1504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var653_getExportIdentifier/1141844361 (var653) String)
(declare-fun var1308_contains/1636690605 (var1308 var2970) Bool)
(declare-fun cast-from-String-to-var2970 (String) var2970)
(declare-fun var720-init () var720)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2079914650 (var720 String) void)
(declare-fun cast-from-var720-to-var1504 (var720) var1504)
(declare-const null-var653 var653)
(declare-const null-var1308 var1308)
(declare-const var2058 var653) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.Exportable 
(assert (not (= var2058 null-var653)))
(declare-const var3671 var1308) ; Statement: r2 := @parameter1: java.util.Set 
(assert (not (= var3671 null-var1308)))
(define-const var3108 String (var653_getExportIdentifier/1141844361 var2058)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>() 
(define-const var3366 Bool (var1308_contains/1636690605 var3671 (cast-from-String-to-var2970 var3108))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
(assert (not (= (ite var3366 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3514 var720 var720-init) ; Statement: $r9 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var3012 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3012)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3012!1 String)
(assert (= var3012!1 ""))
(assert true)
(define-const var1023 String (append/672562846 var3012!1 "SQL strings added more than once for: ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SQL strings added more than once for: ") 
(declare-const var3012!2 String)
(assert (= var3012!2 (str.++ var3012!1 "SQL strings added more than once for: ")))
(assert true)
(define-const var3299 String (append/672562846 var1023 var3108)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1023!1 String)
(assert (= var1023!1 (str.++ var1023 var3108)))
(assert true)
(define-const var786 String (toString/-2075883882 var3299)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2079914650 var3514 var786)) ; Statement: specialinvoke $r9.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r7) 

(declare-const var3514!1 var720)
(declare-const var786!1 String)
(define-const var238 var1504 (cast-from-var720-to-var1504 var3514!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var653_getExportIdentifier/1141844361=([org.hibernate.boot.model.relational.Exportable], java.lang.String), var1308_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2970=([java.lang.String], java.lang.Object), var720-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var720-to-var1504=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var653=org.hibernate.boot.model.relational.Exportable, var2058=r0, var1308=java.util.Set, var3671=r2, var3108=r1, var2970=java.lang.Object, var3366=$z0, var720=org.hibernate.tool.schema.spi.SchemaManagementException, var3514=$r9, var3012=$r8, var1023=$r5, var3299=$r6, var786=$r7, var1504=java.lang.Throwable, var238=$r10}
; {org.hibernate.boot.model.relational.Exportable=var653, r0=var2058, java.util.Set=var1308, r2=var3671, r1=var3108, java.lang.Object=var2970, $z0=var3366, org.hibernate.tool.schema.spi.SchemaManagementException=var720, $r9=var3514, $r8=var3012, $r5=var1023, $r6=var3299, $r7=var786, java.lang.Throwable=var1504, $r10=var238}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.model.relational.Exportable;	r2 := @parameter1: java.util.Set;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>();	$z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	$r9 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SQL strings added more than once for: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2