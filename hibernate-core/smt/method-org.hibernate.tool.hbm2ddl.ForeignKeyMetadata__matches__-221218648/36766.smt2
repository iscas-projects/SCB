(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2123 0)
(declare-sort var3574 0)
(declare-sort var1038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun refTable/2133940011 (var2123) String)
(declare-fun getReferencedTable/-750103725 (var3574) var1038)
(declare-fun getName/-1669825851 (var1038) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2123 var2123)
(declare-const null-var3574 var3574)
(declare-const var760 var2123) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.ForeignKeyMetadata 
(assert (not (= var760 null-var2123)))
(declare-const var2768 var3574) ; Statement: r1 := @parameter0: org.hibernate.mapping.ForeignKey 
(assert (not (= var2768 null-var3574)))
(define-const var2396 String (refTable/2133940011 var760)) ; Statement: $r2 = r0.<org.hibernate.tool.hbm2ddl.ForeignKeyMetadata: java.lang.String refTable> 
(assert true)
(define-const var612 var1038 (getReferencedTable/-750103725 var2768)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.ForeignKey: org.hibernate.mapping.Table getReferencedTable()>() 
(assert true)
(define-const var2231 String (getName/-1669825851 var612)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert true)
(define-const var3271 Bool (equalsIgnoreCase/-92311102 var2396 var2231)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var3271 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {refTable/2133940011=([org.hibernate.tool.hbm2ddl.ForeignKeyMetadata], java.lang.String), getReferencedTable/-750103725=([org.hibernate.mapping.ForeignKey], org.hibernate.mapping.Table), getName/-1669825851=([org.hibernate.mapping.Table], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2123=org.hibernate.tool.hbm2ddl.ForeignKeyMetadata, var760=r0, var3574=org.hibernate.mapping.ForeignKey, var2768=r1, var2396=$r2, var1038=org.hibernate.mapping.Table, var612=$r3, var2231=$r4, var3271=$z0}
; {org.hibernate.tool.hbm2ddl.ForeignKeyMetadata=var2123, r0=var760, org.hibernate.mapping.ForeignKey=var3574, r1=var2768, $r2=var2396, org.hibernate.mapping.Table=var1038, $r3=var612, $r4=var2231, $z0=var3271}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.ForeignKeyMetadata;	r1 := @parameter0: org.hibernate.mapping.ForeignKey;	$r2 = r0.<org.hibernate.tool.hbm2ddl.ForeignKeyMetadata: java.lang.String refTable>;	$r3 = virtualinvoke r1.<org.hibernate.mapping.ForeignKey: org.hibernate.mapping.Table getReferencedTable()>();	$r4 = virtualinvoke $r3.<org.hibernate.mapping.Table: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto return 0;	return 0
;block_num 2