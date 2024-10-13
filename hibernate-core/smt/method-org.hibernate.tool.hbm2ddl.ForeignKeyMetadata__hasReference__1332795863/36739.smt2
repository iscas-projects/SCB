(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var174 0)
(declare-sort var1867 0)
(declare-sort var3648 0)
(declare-sort var1861 0)
(declare-sort var1039 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun references/2133940011 (var174) var3648)
(declare-fun getName/1923604921 (var1867) String)
(declare-fun toLowerCase/1946809429 (String var1861) String)
(declare-fun var3648_get/1088891777 (var3648 var1039) var1039)
(declare-fun cast-from-String-to-var1039 (String) var1039)
(declare-fun cast-from-var1039-to-String (var1039) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var174 var174)
(declare-const null-var1867 var1867)
(declare-const var1861-ROOT var1861)
(declare-const var1246 var174) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.ForeignKeyMetadata 
(assert (not (= var1246 null-var174)))
(declare-const var343 var1867) ; Statement: r1 := @parameter0: org.hibernate.mapping.Column 
(assert (not (= var343 null-var1867)))
(declare-const var3252 var1867) ; Statement: r8 := @parameter1: org.hibernate.mapping.Column 
(assert (not (= var3252 null-var1867)))
(define-const var651 var3648 (references/2133940011 var1246)) ; Statement: $r2 = r0.<org.hibernate.tool.hbm2ddl.ForeignKeyMetadata: java.util.Map references> 
(assert true)
(define-const var2940 String (getName/1923604921 var343)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getName()>() 
(define-const var3355 var1861 var1861-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var127 String (toLowerCase/1946809429 var2940 var3355)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var1102 var1039 (var3648_get/1088891777 var651 (cast-from-String-to-var1039 var127))) ; Statement: $r6 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r5) 
(define-const var1072 String (cast-from-var1039-to-String var1102)) ; Statement: r7 = (java.lang.String) $r6 
(assert true)
(define-const var756 String (getName/1923604921 var3252)) ; Statement: $r9 = virtualinvoke r8.<org.hibernate.mapping.Column: java.lang.String getName()>() 
(assert true)
(define-const var1920 Bool (equalsIgnoreCase/-92311102 var756 var1072)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r7) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {references/2133940011=([org.hibernate.tool.hbm2ddl.ForeignKeyMetadata], java.util.Map), getName/1923604921=([org.hibernate.mapping.Column], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3648_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1039=([java.lang.String], java.lang.Object), cast-from-var1039-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var174=org.hibernate.tool.hbm2ddl.ForeignKeyMetadata, var1246=r0, var1867=org.hibernate.mapping.Column, var343=r1, var3252=r8, var3648=java.util.Map, var651=$r2, var2940=$r4, var1861=java.util.Locale, var3355=$r3, var127=$r5, var1039=java.lang.Object, var1102=$r6, var1072=r7, var756=$r9, var1920=$z0}
; {org.hibernate.tool.hbm2ddl.ForeignKeyMetadata=var174, r0=var1246, org.hibernate.mapping.Column=var1867, r1=var343, r8=var3252, java.util.Map=var3648, $r2=var651, $r4=var2940, java.util.Locale=var1861, $r3=var3355, $r5=var127, java.lang.Object=var1039, $r6=var1102, r7=var1072, $r9=var756, $z0=var1920}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.ForeignKeyMetadata;	r1 := @parameter0: org.hibernate.mapping.Column;	r8 := @parameter1: org.hibernate.mapping.Column;	$r2 = r0.<org.hibernate.tool.hbm2ddl.ForeignKeyMetadata: java.util.Map references>;	$r4 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getName()>();	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$r6 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r5);	r7 = (java.lang.String) $r6;	$r9 = virtualinvoke r8.<org.hibernate.mapping.Column: java.lang.String getName()>();	$z0 = virtualinvoke $r9.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r7);	return $z0
;block_num 1