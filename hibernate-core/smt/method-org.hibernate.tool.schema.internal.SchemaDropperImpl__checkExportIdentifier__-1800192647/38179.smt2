(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1198 0)
(declare-sort var1007 0)
(declare-sort var67 0)
(declare-sort var2173 0)
(declare-sort var361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1198_getExportIdentifier/1141844361 (var1198) String)
(declare-fun var1007_contains/1636690605 (var1007 var67) Bool)
(declare-fun cast-from-String-to-var67 (String) var67)
(declare-fun var2173-init () var2173)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2079914650 (var2173 String) void)
(declare-fun cast-from-var2173-to-var361 (var2173) var361)
(declare-const null-var1198 var1198)
(declare-const null-var1007 var1007)
(declare-const var70 var1198) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.Exportable 
(assert (not (= var70 null-var1198)))
(declare-const var584 var1007) ; Statement: r2 := @parameter1: java.util.Set 
(assert (not (= var584 null-var1007)))
(define-const var2529 String (var1198_getExportIdentifier/1141844361 var70)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>() 
(define-const var2617 Bool (var1007_contains/1636690605 var584 (cast-from-String-to-var67 var2529))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
(assert (not (= (ite var2617 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1611 var2173 var2173-init) ; Statement: $r9 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var3447 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3447)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3447!1 String)
(assert (= var3447!1 ""))
(assert true)
(define-const var2837 String (append/672562846 var3447!1 "SQL strings added more than once for: ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SQL strings added more than once for: ") 
(declare-const var3447!2 String)
(assert (= var3447!2 (str.++ var3447!1 "SQL strings added more than once for: ")))
(assert true)
(define-const var1995 String (append/672562846 var2837 var2529)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2837!1 String)
(assert (= var2837!1 (str.++ var2837 var2529)))
(assert true)
(define-const var2321 String (toString/-2075883882 var1995)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2079914650 var1611 var2321)) ; Statement: specialinvoke $r9.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r7) 

(declare-const var1611!1 var2173)
(declare-const var2321!1 String)
(define-const var2356 var361 (cast-from-var2173-to-var361 var1611!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1198_getExportIdentifier/1141844361=([org.hibernate.boot.model.relational.Exportable], java.lang.String), var1007_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var67=([java.lang.String], java.lang.Object), var2173-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var2173-to-var361=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var1198=org.hibernate.boot.model.relational.Exportable, var70=r0, var1007=java.util.Set, var584=r2, var2529=r1, var67=java.lang.Object, var2617=$z0, var2173=org.hibernate.tool.schema.spi.SchemaManagementException, var1611=$r9, var3447=$r8, var2837=$r5, var1995=$r6, var2321=$r7, var361=java.lang.Throwable, var2356=$r10}
; {org.hibernate.boot.model.relational.Exportable=var1198, r0=var70, java.util.Set=var1007, r2=var584, r1=var2529, java.lang.Object=var67, $z0=var2617, org.hibernate.tool.schema.spi.SchemaManagementException=var2173, $r9=var1611, $r8=var3447, $r5=var2837, $r6=var1995, $r7=var2321, java.lang.Throwable=var361, $r10=var2356}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.model.relational.Exportable;	r2 := @parameter1: java.util.Set;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>();	$z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	$r9 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SQL strings added more than once for: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2