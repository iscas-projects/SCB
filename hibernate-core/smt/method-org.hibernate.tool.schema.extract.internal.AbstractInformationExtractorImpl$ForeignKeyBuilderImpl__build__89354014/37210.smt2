(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var397 0)
(declare-sort var170 0)
(declare-sort var3709 0)
(declare-sort var426 0)
(declare-sort var2690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columnMappingList/184342445 (var397) var170)
(declare-fun var170_isEmpty/-153543822 (var170) Bool)
(declare-fun var3709-init () var3709)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fkIdentifier/184342445 (var397) var426)
(declare-fun getText/-467579009 (var426) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2079914650 (var3709 String) void)
(declare-fun cast-from-var3709-to-var2690 (var3709) var2690)
(declare-const null-var397 var397)
(declare-const var1670 var397) ; Statement: r0 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl 
(assert (not (= var1670 null-var397)))
(define-const var2772 var170 (columnMappingList/184342445 var1670)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: java.util.List columnMappingList> 
(define-const var2839 Bool (var170_isEmpty/-153543822 var2772)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r15 = new org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl 
(assert (not (= (ite var2839 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1756 var3709 var3709-init) ; Statement: $r14 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var3410 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3410)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3410!1 String)
(assert (= var3410!1 ""))
(assert true)
(define-const var2948 String (append/672562846 var3410!1 "Attempt to resolve foreign key metadata from JDBC metadata failed to find column mappings for foreign key named [")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to resolve foreign key metadata from JDBC metadata failed to find column mappings for foreign key named [") 
(declare-const var3410!2 String)
(assert (= var3410!2 (str.++ var3410!1 "Attempt to resolve foreign key metadata from JDBC metadata failed to find column mappings for foreign key named [")))
(define-const var2957 var426 (fkIdentifier/184342445 var1670)) ; Statement: $r7 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: org.hibernate.boot.model.naming.Identifier fkIdentifier> 
(assert true)
(define-const var1500 String (getText/-467579009 var2957)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var3059 String (append/672562846 var2948 var1500)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2948!1 String)
(assert (= var2948!1 (str.++ var2948 var1500)))
(assert true)
(define-const var3046 String (append/672562846 var3059 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3059!1 String)
(assert (= var3059!1 (str.++ var3059 "]")))
(assert true)
(define-const var3976 String (toString/-2075883882 var3046)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2079914650 var1756 var3976)) ; Statement: specialinvoke $r14.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r12) 

(declare-const var1756!1 var3709)
(declare-const var3976!1 String)
(define-const var3625 var2690 (cast-from-var3709-to-var2690 var1756!1)) ; Statement: $r16 = (java.lang.Throwable) $r14 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {columnMappingList/184342445=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl], java.util.List), var170_isEmpty/-153543822=([java.util.List], boolean), var3709-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fkIdentifier/184342445=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var3709-to-var2690=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var397=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl, var1670=r0, var170=java.util.List, var2772=$r1, var2839=$z0, var3709=org.hibernate.tool.schema.spi.SchemaManagementException, var1756=$r14, var3410=$r13, var2948=$r9, var426=org.hibernate.boot.model.naming.Identifier, var2957=$r7, var1500=$r8, var3059=$r10, var3046=$r11, var3976=$r12, var2690=java.lang.Throwable, var3625=$r16}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl=var397, r0=var1670, java.util.List=var170, $r1=var2772, $z0=var2839, org.hibernate.tool.schema.spi.SchemaManagementException=var3709, $r14=var1756, $r13=var3410, $r9=var2948, org.hibernate.boot.model.naming.Identifier=var426, $r7=var2957, $r8=var1500, $r10=var3059, $r11=var3046, $r12=var3976, java.lang.Throwable=var2690, $r16=var3625}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl;	$r1 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: java.util.List columnMappingList>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r15 = new org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl;	$r14 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to resolve foreign key metadata from JDBC metadata failed to find column mappings for foreign key named [");	$r7 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: org.hibernate.boot.model.naming.Identifier fkIdentifier>;	$r8 = virtualinvoke $r7.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r12);	$r16 = (java.lang.Throwable) $r14;	throw $r16
;block_num 2