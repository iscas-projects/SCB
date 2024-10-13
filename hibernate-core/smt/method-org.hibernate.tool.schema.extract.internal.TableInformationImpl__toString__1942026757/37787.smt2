(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1569 0)
(declare-sort var2267 0)
(declare-sort var3052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tableName/463251749 (var1569) var2267)
(declare-fun toString/199734091 (var3052) String)
(declare-fun cast-from-var2267-to-var3052 (var2267) var3052)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1569 var1569)
(declare-const var1120 var1569) ; Statement: r1 := @this: org.hibernate.tool.schema.extract.internal.TableInformationImpl 
(assert (not (= var1120 null-var1569)))
(define-const var3579 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3579)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3579!1 String)
(assert (= var3579!1 ""))
(assert true)
(define-const var430 String (append/672562846 var3579!1 "TableInformationImpl(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TableInformationImpl(") 
(declare-const var3579!2 String)
(assert (= var3579!2 (str.++ var3579!1 "TableInformationImpl(")))
(define-const var1076 var2267 (tableName/463251749 var1120)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName tableName> 
(assert true)
(define-const var3672 String (toString/199734091 (cast-from-var2267-to-var3052 var1076))) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var3837 String (append/672562846 var430 var3672)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var430!1 String)
(assert (= var430!1 (str.++ var430 var3672)))
(assert true)
(define-const var3039 String (append/-1166366385 var3837 41)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3837!1 String)
(assert (str.prefixof var3837 var3837!1))
(assert true)
(define-const var409 String (toString/-2075883882 var3039)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tableName/463251749=([org.hibernate.tool.schema.extract.internal.TableInformationImpl], org.hibernate.boot.model.relational.QualifiedTableName), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), cast-from-var2267-to-var3052=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1569=org.hibernate.tool.schema.extract.internal.TableInformationImpl, var1120=r1, var3579=$r0, var430=$r4, var2267=org.hibernate.boot.model.relational.QualifiedTableName, var1076=$r2, var3052=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var3672=$r3, var3837=$r5, var3039=$r6, var409=$r7}
; {org.hibernate.tool.schema.extract.internal.TableInformationImpl=var1569, r1=var1120, $r0=var3579, $r4=var430, org.hibernate.boot.model.relational.QualifiedTableName=var2267, $r2=var1076, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var3052, $r3=var3672, $r5=var3837, $r6=var3039, $r7=var409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.extract.internal.TableInformationImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TableInformationImpl(");	$r2 = r1.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName tableName>;	$r3 = virtualinvoke $r2.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1