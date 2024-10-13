(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3430 0)
(declare-sort var2016 0)
(declare-sort var1347 0)
(declare-sort var966 0)
(declare-sort var1261 0)
(declare-sort var997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1347_getSequenceName/-1534807416 (var1347) var966)
(declare-fun getCatalogName/1959036760 (var997) var1261)
(declare-fun cast-from-var966-to-var997 (var966) var997)
(declare-fun getSchemaName/569056114 (var997) var1261)
(declare-fun getSequenceName/-591912351 (var966) var1261)
(declare-fun getText/-467579009 (var1261) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const null-var2016 var2016)
(declare-const null-var1347 var1347)
(declare-const var3805 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3805 null-String)))
(declare-const var537 var2016) ; Statement: r9 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var537 null-var2016)))
(declare-const var1327 var1347) ; Statement: r0 := @parameter2: org.hibernate.tool.schema.extract.spi.SequenceInformation 
(assert (not (= var1327 null-var1347)))
(define-const var1453 var966 (var1347_getSequenceName/-1534807416 var1327)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.SequenceInformation: org.hibernate.boot.model.relational.QualifiedSequenceName getSequenceName()>() 
(assert true)
(define-const var3115 var1261 (getCatalogName/1959036760 (cast-from-var966-to-var997 var1453))) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.boot.model.relational.QualifiedSequenceName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(define-const var1123 var966 (var1347_getSequenceName/-1534807416 var1327)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.SequenceInformation: org.hibernate.boot.model.relational.QualifiedSequenceName getSequenceName()>() 
(assert true)
(define-const var3817 var1261 (getSchemaName/569056114 (cast-from-var966-to-var997 var1123))) ; Statement: r4 = virtualinvoke $r3.<org.hibernate.boot.model.relational.QualifiedSequenceName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
(define-const var1637 var966 (var1347_getSequenceName/-1534807416 var1327)) ; Statement: $r6 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.SequenceInformation: org.hibernate.boot.model.relational.QualifiedSequenceName getSequenceName()>() 
(assert true)
(define-const var2630 var1261 (getSequenceName/-591912351 var1637)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.boot.model.relational.QualifiedSequenceName: org.hibernate.boot.model.naming.Identifier getSequenceName()>() 
(assert true)
(define-const var1136 String (getText/-467579009 var2630)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var1875 Bool (equalsIgnoreCase/-92311102 var3805 var1136)) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r8) 
 ; Statement: if $z0 == 0 goto $z3 = 0 
(assert (= (ite var1875 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2183 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1347_getSequenceName/-1534807416=([org.hibernate.tool.schema.extract.spi.SequenceInformation], org.hibernate.boot.model.relational.QualifiedSequenceName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var966-to-var997=([org.hibernate.boot.model.relational.QualifiedSequenceName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getSequenceName/-591912351=([org.hibernate.boot.model.relational.QualifiedSequenceName], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3805=r5, var3430=null_type, var2016=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var537=r9, var1347=org.hibernate.tool.schema.extract.spi.SequenceInformation, var1327=r0, var966=org.hibernate.boot.model.relational.QualifiedSequenceName, var1453=$r1, var1261=org.hibernate.boot.model.naming.Identifier, var997=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var3115=r2, var1123=$r3, var3817=r4, var1637=$r6, var2630=$r7, var1136=$r8, var1875=$z0, var2183=$z3}
; {r5=var3805, null_type=var3430, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2016, r9=var537, org.hibernate.tool.schema.extract.spi.SequenceInformation=var1347, r0=var1327, org.hibernate.boot.model.relational.QualifiedSequenceName=var966, $r1=var1453, org.hibernate.boot.model.naming.Identifier=var1261, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var997, r2=var3115, $r3=var1123, r4=var3817, $r6=var1637, $r7=var2630, $r8=var1136, $z0=var1875, $z3=var2183}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r5 := @parameter0: java.lang.String;	r9 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r0 := @parameter2: org.hibernate.tool.schema.extract.spi.SequenceInformation;	$r1 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.SequenceInformation: org.hibernate.boot.model.relational.QualifiedSequenceName getSequenceName()>();	r2 = virtualinvoke $r1.<org.hibernate.boot.model.relational.QualifiedSequenceName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	$r3 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.SequenceInformation: org.hibernate.boot.model.relational.QualifiedSequenceName getSequenceName()>();	r4 = virtualinvoke $r3.<org.hibernate.boot.model.relational.QualifiedSequenceName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	$r6 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.SequenceInformation: org.hibernate.boot.model.relational.QualifiedSequenceName getSequenceName()>();	$r7 = virtualinvoke $r6.<org.hibernate.boot.model.relational.QualifiedSequenceName: org.hibernate.boot.model.naming.Identifier getSequenceName()>();	$r8 = virtualinvoke $r7.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$z0 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r8);	if $z0 == 0 goto $z3 = 0;	$z3 = 0;	return $z3
;block_num 3