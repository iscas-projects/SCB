(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3465 0)
(declare-sort var2118 0)
(declare-sort var2536 0)
(declare-sort var1759 0)
(declare-sort var3299 0)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2118_getReferencingColumnMetadata/-1618648410 (var2118) var2536)
(declare-fun var2536_getColumnIdentifier/-1324745536 (var2536) var1759)
(declare-fun getText/-467579009 (var1759) String)
(declare-fun var2118_getReferencedColumnMetadata/-58674711 (var2118) var2536)
(declare-fun var2536_getContainingTableInformation/-329601539 (var2536) var3299)
(declare-fun var3299_getName/-554364985 (var3299) var3368)
(declare-fun getTableName/-1073609799 (var3368) var1759)
(declare-fun getCanonicalName/-1692061233 (var1759) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const null-var2118 var2118)
(declare-const var828 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var828 null-String)))
(declare-const var3308 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var3308 null-String)))
(declare-const var164 var2118) ; Statement: r0 := @parameter2: org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping 
(assert (not (= var164 null-var2118)))
(define-const var3563 var2536 (var2118_getReferencingColumnMetadata/-1618648410 var164)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping: org.hibernate.tool.schema.extract.spi.ColumnInformation getReferencingColumnMetadata()>() 
(define-const var1892 var1759 (var2536_getColumnIdentifier/-1324745536 var3563)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.tool.schema.extract.spi.ColumnInformation: org.hibernate.boot.model.naming.Identifier getColumnIdentifier()>() 
(assert true)
(define-const var3984 String (getText/-467579009 var1892)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(define-const var3118 var2536 (var2118_getReferencedColumnMetadata/-58674711 var164)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping: org.hibernate.tool.schema.extract.spi.ColumnInformation getReferencedColumnMetadata()>() 
(define-const var1475 var3299 (var2536_getContainingTableInformation/-329601539 var3118)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.tool.schema.extract.spi.ColumnInformation: org.hibernate.tool.schema.extract.spi.TableInformation getContainingTableInformation()>() 
(define-const var606 var3368 (var3299_getName/-554364985 var1475)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var3911 var1759 (getTableName/-1073609799 var606)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getTableName()>() 
(assert true)
(define-const var1852 String (getCanonicalName/-1692061233 var3911)) ; Statement: r8 = virtualinvoke $r7.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var2901 Bool (equalsIgnoreCase/-92311102 var828 var3984)) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var2901 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2094 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2118_getReferencingColumnMetadata/-1618648410=([org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping], org.hibernate.tool.schema.extract.spi.ColumnInformation), var2536_getColumnIdentifier/-1324745536=([org.hibernate.tool.schema.extract.spi.ColumnInformation], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), var2118_getReferencedColumnMetadata/-58674711=([org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping], org.hibernate.tool.schema.extract.spi.ColumnInformation), var2536_getContainingTableInformation/-329601539=([org.hibernate.tool.schema.extract.spi.ColumnInformation], org.hibernate.tool.schema.extract.spi.TableInformation), var3299_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getTableName/-1073609799=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.naming.Identifier), getCanonicalName/-1692061233=([org.hibernate.boot.model.naming.Identifier], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var828=r9, var3465=null_type, var3308=r10, var2118=org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping, var164=r0, var2536=org.hibernate.tool.schema.extract.spi.ColumnInformation, var3563=$r1, var1759=org.hibernate.boot.model.naming.Identifier, var1892=$r2, var3984=r3, var3118=$r4, var3299=org.hibernate.tool.schema.extract.spi.TableInformation, var1475=$r5, var3368=org.hibernate.boot.model.relational.QualifiedTableName, var606=$r6, var3911=$r7, var1852=r8, var2901=$z0, var2094=$z2}
; {r9=var828, null_type=var3465, r10=var3308, org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping=var2118, r0=var164, org.hibernate.tool.schema.extract.spi.ColumnInformation=var2536, $r1=var3563, org.hibernate.boot.model.naming.Identifier=var1759, $r2=var1892, r3=var3984, $r4=var3118, org.hibernate.tool.schema.extract.spi.TableInformation=var3299, $r5=var1475, org.hibernate.boot.model.relational.QualifiedTableName=var3368, $r6=var606, $r7=var3911, r8=var1852, $z0=var2901, $z2=var2094}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r9 := @parameter0: java.lang.String;	r10 := @parameter1: java.lang.String;	r0 := @parameter2: org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping;	$r1 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping: org.hibernate.tool.schema.extract.spi.ColumnInformation getReferencingColumnMetadata()>();	$r2 = interfaceinvoke $r1.<org.hibernate.tool.schema.extract.spi.ColumnInformation: org.hibernate.boot.model.naming.Identifier getColumnIdentifier()>();	r3 = virtualinvoke $r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r4 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.ForeignKeyInformation$ColumnReferenceMapping: org.hibernate.tool.schema.extract.spi.ColumnInformation getReferencedColumnMetadata()>();	$r5 = interfaceinvoke $r4.<org.hibernate.tool.schema.extract.spi.ColumnInformation: org.hibernate.tool.schema.extract.spi.TableInformation getContainingTableInformation()>();	$r6 = interfaceinvoke $r5.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r7 = virtualinvoke $r6.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getTableName()>();	r8 = virtualinvoke $r7.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$z0 = virtualinvoke r9.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r3);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3