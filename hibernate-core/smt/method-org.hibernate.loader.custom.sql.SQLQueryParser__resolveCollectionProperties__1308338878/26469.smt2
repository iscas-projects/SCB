(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1756 0)
(declare-sort var1995 0)
(declare-sort var55 0)
(declare-sort var1141 0)
(declare-sort var2592 0)
(declare-sort var765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/262370177 (var1756) var55)
(declare-fun var55_getPropertyResultsMapByAlias/-127290905 (var55 String) var1141)
(declare-fun var55_getCollectionPersisterByAlias/1587514456 (var55 String) var2592)
(declare-fun var55_getCollectionSuffixByAlias/51790722 (var55 String) String)
(declare-fun var1141_isEmpty/-1655013448 (var1141) Bool)
(declare-fun var765_selectFragment/232488891 (var765 String String) String)
(declare-fun cast-from-var2592-to-var765 (var2592) var765)
(declare-fun aliasesFound/262370177 (var1756) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resolveProperties/-1126140544 (var1756 String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1756 var1756)
(declare-const null-String String)
(declare-const var525 var1756) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser 
(assert (not (= var525 null-var1756)))
(declare-const var1289 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1289 null-String)))
(declare-const var2224 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2224 null-String)))
(define-const var2038 var55 (context/262370177 var525)) ; Statement: $r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var48 var1141 (var55_getPropertyResultsMapByAlias/-127290905 var2038 var1289)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1) 
(define-const var2678 var55 (context/262370177 var525)) ; Statement: $r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var541 var2592 (var55_getCollectionPersisterByAlias/1587514456 var2678 var1289)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.collection.SQLLoadableCollection getCollectionPersisterByAlias(java.lang.String)>(r1) 
(define-const var3285 var55 (context/262370177 var525)) ; Statement: $r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var2687 String (var55_getCollectionSuffixByAlias/51790722 var3285 var1289)) ; Statement: r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getCollectionSuffixByAlias(java.lang.String)>(r1) 
(define-const var2815 String "*") ; Statement: $r9 = "*" 
(assert true)
(define-const var3347 Bool (= var2815 var2224)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto $r10 = "element.*" 
(assert (not (= (ite var3347 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1677 Bool (var1141_isEmpty/-1655013448 var48)) ; Statement: $z2 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto r39 = interfaceinvoke r5.<org.hibernate.persister.collection.SQLLoadableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r1, r7) 
(assert (not (= (ite var1677 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1253 String (var765_selectFragment/232488891 (cast-from-var2592-to-var765 var541) var1289 var2687)) ; Statement: r39 = interfaceinvoke r5.<org.hibernate.persister.collection.SQLLoadableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r1, r7) 
(define-const var1347 Int (aliasesFound/262370177 var525)) ; Statement: $l5 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound> 
(define-const var2771 Int (+ var1347 1)) ; Statement: $l6 = $l5 + 1L 
(declare-const var525!1 var1756)
(assert (not (= var525!1 null-var1756)))
(assert (= (aliasesFound/262370177 var525!1) var2771)) ; Statement: r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound> = $l6 
(define-const var2103 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2103)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2103!1 String)
(assert (= var2103!1 ""))
(assert true)
(define-const var1222 String (append/672562846 var2103!1 var1253)) ; Statement: $r33 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r39) 
(declare-const var2103!2 String)
(assert (= var2103!2 (str.++ var2103!1 var1253)))
(assert true)
(define-const var3307 String (append/672562846 var1222 ", ")) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1222!1 String)
(assert (= var1222!1 (str.++ var1222 ", ")))
(assert true)
(define-const var3383 String (resolveProperties/-1126140544 var525!1 var1289 var2224)) ; Statement: $r34 = specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser: java.lang.String resolveProperties(java.lang.String,java.lang.String)>(r1, r8) 
(assert true)
(define-const var1930 String (append/672562846 var3307 var3383)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var3307!1 String)
(assert (= var3307!1 (str.++ var3307 var3383)))
(assert true)
(define-const var2973 String (toString/-2075883882 var1930)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {context/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext), var55_getPropertyResultsMapByAlias/-127290905=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.util.Map), var55_getCollectionPersisterByAlias/1587514456=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], org.hibernate.persister.collection.SQLLoadableCollection), var55_getCollectionSuffixByAlias/51790722=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.lang.String), var1141_isEmpty/-1655013448=([java.util.Map], boolean), var765_selectFragment/232488891=([org.hibernate.persister.collection.QueryableCollection, java.lang.String, java.lang.String], java.lang.String), cast-from-var2592-to-var765=([org.hibernate.persister.collection.SQLLoadableCollection], org.hibernate.persister.collection.QueryableCollection), aliasesFound/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resolveProperties/-1126140544=([org.hibernate.loader.custom.sql.SQLQueryParser, java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1756=org.hibernate.loader.custom.sql.SQLQueryParser, var525=r0, var1289=r1, var1995=null_type, var2224=r8, var55=org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, var2038=$r2, var1141=java.util.Map, var48=r3, var2678=$r4, var2592=org.hibernate.persister.collection.SQLLoadableCollection, var541=r5, var3285=$r6, var2687=r7, var2815=$r9, var3347=$z0, var1677=$z2, var765=org.hibernate.persister.collection.QueryableCollection, var1253=r39, var1347=$l5, var2771=$l6, var2103=$r42, var1222=$r33, var3307=$r35, var3383=$r34, var1930=$r36, var2973=$r37}
; {org.hibernate.loader.custom.sql.SQLQueryParser=var1756, r0=var525, r1=var1289, null_type=var1995, r8=var2224, org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext=var55, $r2=var2038, java.util.Map=var1141, r3=var48, $r4=var2678, org.hibernate.persister.collection.SQLLoadableCollection=var2592, r5=var541, $r6=var3285, r7=var2687, $r9=var2815, $z0=var3347, $z2=var1677, org.hibernate.persister.collection.QueryableCollection=var765, r39=var1253, $l5=var1347, $l6=var2771, $r42=var2103, $r33=var1222, $r35=var3307, $r34=var3383, $r36=var1930, $r37=var2973}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1);	$r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.collection.SQLLoadableCollection getCollectionPersisterByAlias(java.lang.String)>(r1);	$r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getCollectionSuffixByAlias(java.lang.String)>(r1);	$r9 = "*";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto $r10 = "element.*";	$z2 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>();	if $z2 != 0 goto r39 = interfaceinvoke r5.<org.hibernate.persister.collection.SQLLoadableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r1, r7);	r39 = interfaceinvoke r5.<org.hibernate.persister.collection.SQLLoadableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r1, r7);	$l5 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound>;	$l6 = $l5 + 1L;	r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound> = $l6;	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r39);	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r34 = specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser: java.lang.String resolveProperties(java.lang.String,java.lang.String)>(r1, r8);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r37
;block_num 3