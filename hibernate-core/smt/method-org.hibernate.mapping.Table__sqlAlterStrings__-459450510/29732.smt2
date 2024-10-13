(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1443 0)
(declare-sort var2746 0)
(declare-sort var1441 0)
(declare-sort var628 0)
(declare-sort var2493 0)
(declare-sort var1856 0)
(declare-sort var2583 0)
(declare-sort var43 0)
(declare-sort var2060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1856-init () var1856)
(declare-fun catalog/310692072 (var1443) var2583)
(declare-fun schema/310692072 (var1443) var2583)
(declare-fun name/310692072 (var1443) var2583)
(declare-fun <init>/-1697340226 (var1856 var2583 var2583 var2583) void)
(declare-fun var2493_format/1204537082 (var2493 var1856) String)
(declare-fun String-init () String)
(declare-fun getAlterTableString/-573220996 (var2746 String) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getAddColumnString/1461141650 (var2746) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getColumnIterator/1853955427 (var1443) Iterator)
(declare-fun var43-init () var43)
(declare-fun <init>/-325640736 (var43) void)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2060_isEmpty/-153543822 (var2060) Bool)
(declare-fun cast-from-var43-to-var2060 (var43) var2060)
(declare-fun var2060_iterator/-912451715 (var2060) Iterator)
(declare-const null-var1443 var1443)
(declare-const null-var2746 var2746)
(declare-const null-var1441 var1441)
(declare-const null-var628 var628)
(declare-const null-var2493 var2493)
(declare-const var1599 var1443) ; Statement: r2 := @this: org.hibernate.mapping.Table 
(assert (not (= var1599 null-var1443)))
(declare-const var442 var2746) ; Statement: r8 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var442 null-var2746)))
(declare-const var2956 var1441) ; Statement: r29 := @parameter1: org.hibernate.boot.Metadata 
(assert (not (= var2956 null-var1441)))
(declare-const var2491 var628) ; Statement: r20 := @parameter2: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var2491 null-var628)))
(declare-const var754 var2493) ; Statement: r0 := @parameter3: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var754 null-var2493)))
(define-const var3258 var1856 var1856-init) ; Statement: $r1 = new org.hibernate.boot.model.relational.QualifiedTableName 
(define-const var1063 var2583 (catalog/310692072 var1599)) ; Statement: $r5 = r2.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier catalog> 
(define-const var124 var2583 (schema/310692072 var1599)) ; Statement: $r4 = r2.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier schema> 
(define-const var1863 var2583 (name/310692072 var1599)) ; Statement: $r3 = r2.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier name> 
(assert true)
;(assert (<init>/-1697340226 var3258 var1063 var124 var1863)) ; Statement: specialinvoke $r1.<org.hibernate.boot.model.relational.QualifiedTableName: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r5, $r4, $r3) 

(declare-const var3258!1 var1856)
(declare-const var1063!1 var2583)
(declare-const var124!1 var2583)
(declare-const var1863!1 var2583)
(define-const var3900 String (var2493_format/1204537082 var754 var3258!1)) ; Statement: r6 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r1) 
(define-const var1332 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
(define-const var766 String (getAlterTableString/-573220996 var442 var3900)) ; Statement: $r9 = virtualinvoke r8.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r6) 
(assert true)
;(assert (<init>/-1061048412 var1332 var766)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>(java.lang.String)>($r9) 
(declare-const var1332!1 String)
(assert (= var1332!1 var766))
(assert true)
(define-const var3009 String (append/-1166366385 var1332!1 32)) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1332!2 String)
(assert (str.prefixof var1332!1 var1332!2))
(assert true)
(define-const var2542 String (getAddColumnString/1461141650 var442)) ; Statement: $r10 = virtualinvoke r8.<org.hibernate.dialect.Dialect: java.lang.String getAddColumnString()>() 
(assert true)
(define-const var3129 String (append/672562846 var3009 var2542)) ; Statement: r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3009!1 String)
(assert (= var3009!1 (str.++ var3009 var2542)))
(assert true)
(define-const var2192 Iterator (getColumnIterator/1853955427 var1599)) ; Statement: r13 = virtualinvoke r2.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(define-const var3930 var43 var43-init) ; Statement: $r14 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3930)) ; Statement: specialinvoke $r14.<java.util.ArrayList: void <init>()>() 

(declare-const var3930!1 var43)
(assert true) ; Non Conditional
(define-const var2577 Bool (Iterator_hasNext/-1669924200 var2192)) ; Statement: $z0 = interfaceinvoke r13.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $z1 = interfaceinvoke $r14.<java.util.List: boolean isEmpty()>() 
(assert (= (ite var2577 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3262 Bool (var2060_isEmpty/-153543822 (cast-from-var43-to-var2060 var3930!1))) ; Statement: $z1 = interfaceinvoke $r14.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r15 = interfaceinvoke $r14.<java.util.List: java.util.Iterator iterator()>() 
(assert (= (ite var3262 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3170 Iterator (var2060_iterator/-912451715 (cast-from-var43-to-var2060 var3930!1))) ; Statement: $r15 = interfaceinvoke $r14.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1856-init=([], org.hibernate.boot.model.relational.QualifiedTableName), catalog/310692072=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), schema/310692072=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), name/310692072=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), <init>/-1697340226=([org.hibernate.boot.model.relational.QualifiedTableName, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void), var2493_format/1204537082=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String), String-init=([], java.lang.StringBuilder), getAlterTableString/-573220996=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getAddColumnString/1461141650=([org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getColumnIterator/1853955427=([org.hibernate.mapping.Table], java.util.Iterator), var43-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2060_isEmpty/-153543822=([java.util.List], boolean), cast-from-var43-to-var2060=([java.util.ArrayList], java.util.List), var2060_iterator/-912451715=([java.util.List], java.util.Iterator)}
; {var1443=org.hibernate.mapping.Table, var1599=r2, var2746=org.hibernate.dialect.Dialect, var442=r8, var1441=org.hibernate.boot.Metadata, var2956=r29, var628=org.hibernate.tool.schema.extract.spi.TableInformation, var2491=r20, var2493=org.hibernate.boot.model.relational.SqlStringGenerationContext, var754=r0, var1856=org.hibernate.boot.model.relational.QualifiedTableName, var3258=$r1, var2583=org.hibernate.boot.model.naming.Identifier, var1063=$r5, var124=$r4, var1863=$r3, var3900=r6, var1332=$r7, var766=$r9, var3009=$r11, var2542=$r10, var3129=r12, var2192=r13, var43=java.util.ArrayList, var3930=$r14, var2577=$z0, var2060=java.util.List, var3262=$z1, var3170=$r15}
; {org.hibernate.mapping.Table=var1443, r2=var1599, org.hibernate.dialect.Dialect=var2746, r8=var442, org.hibernate.boot.Metadata=var1441, r29=var2956, org.hibernate.tool.schema.extract.spi.TableInformation=var628, r20=var2491, org.hibernate.boot.model.relational.SqlStringGenerationContext=var2493, r0=var754, org.hibernate.boot.model.relational.QualifiedTableName=var1856, $r1=var3258, org.hibernate.boot.model.naming.Identifier=var2583, $r5=var1063, $r4=var124, $r3=var1863, r6=var3900, $r7=var1332, $r9=var766, $r11=var3009, $r10=var2542, r12=var3129, r13=var2192, java.util.ArrayList=var43, $r14=var3930, $z0=var2577, java.util.List=var2060, $z1=var3262, $r15=var3170}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.mapping.Table;	r8 := @parameter0: org.hibernate.dialect.Dialect;	r29 := @parameter1: org.hibernate.boot.Metadata;	r20 := @parameter2: org.hibernate.tool.schema.extract.spi.TableInformation;	r0 := @parameter3: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r1 = new org.hibernate.boot.model.relational.QualifiedTableName;	$r5 = r2.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier catalog>;	$r4 = r2.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier schema>;	$r3 = r2.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier name>;	specialinvoke $r1.<org.hibernate.boot.model.relational.QualifiedTableName: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r5, $r4, $r3);	r6 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r1);	$r7 = new java.lang.StringBuilder;	$r9 = virtualinvoke r8.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r6);	specialinvoke $r7.<java.lang.StringBuilder: void <init>(java.lang.String)>($r9);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r10 = virtualinvoke r8.<org.hibernate.dialect.Dialect: java.lang.String getAddColumnString()>();	r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	r13 = virtualinvoke r2.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	$r14 = new java.util.ArrayList;	specialinvoke $r14.<java.util.ArrayList: void <init>()>();	$z0 = interfaceinvoke r13.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $z1 = interfaceinvoke $r14.<java.util.List: boolean isEmpty()>();	$z1 = interfaceinvoke $r14.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto $r15 = interfaceinvoke $r14.<java.util.List: java.util.Iterator iterator()>();	$r15 = interfaceinvoke $r14.<java.util.List: java.util.Iterator iterator()>();	return $r15
;block_num 4