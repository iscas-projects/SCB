(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2558 0)
(declare-sort var1516 0)
(declare-sort var1432 0)
(declare-sort var637 0)
(declare-sort var2508 0)
(declare-sort var1035 0)
(declare-sort var1266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/262370177 (var2558) var1432)
(declare-fun var1432_getPropertyResultsMapByAlias/-127290905 (var1432 String) var637)
(declare-fun var1432_getCollectionPersisterByAlias/1587514456 (var1432 String) var2508)
(declare-fun var1432_getCollectionSuffixByAlias/51790722 (var1432 String) String)
(declare-fun var637_isEmpty/-1655013448 (var637) Bool)
(declare-fun var1035-init () var1035)
(declare-fun <init>/-1391884909 (var1035 String) void)
(declare-fun cast-from-var1035-to-var1266 (var1035) var1266)
(declare-const null-var2558 var2558)
(declare-const null-String String)
(declare-const var381 var2558) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser 
(assert (not (= var381 null-var2558)))
(declare-const var3748 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3748 null-String)))
(declare-const var3312 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var3312 null-String)))
(define-const var2761 var1432 (context/262370177 var381)) ; Statement: $r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var2815 var637 (var1432_getPropertyResultsMapByAlias/-127290905 var2761 var3748)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1) 
(define-const var2174 var1432 (context/262370177 var381)) ; Statement: $r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var3972 var2508 (var1432_getCollectionPersisterByAlias/1587514456 var2174 var3748)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.collection.SQLLoadableCollection getCollectionPersisterByAlias(java.lang.String)>(r1) 
(define-const var1923 var1432 (context/262370177 var381)) ; Statement: $r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var680 String (var1432_getCollectionSuffixByAlias/51790722 var1923 var3748)) ; Statement: r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getCollectionSuffixByAlias(java.lang.String)>(r1) 
(define-const var2047 String "*") ; Statement: $r9 = "*" 
(assert true)
(define-const var253 Bool (= var2047 var3312)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto $r10 = "element.*" 
(assert (not (= (ite var253 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var993 Bool (var637_isEmpty/-1655013448 var2815)) ; Statement: $z2 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto r39 = interfaceinvoke r5.<org.hibernate.persister.collection.SQLLoadableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r1, r7) 
(assert (not (not (= (ite var993 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var528 var1035 var1035-init) ; Statement: $r41 = new org.hibernate.QueryException 
(assert true)
;(assert (<init>/-1391884909 var528 "Using return-propertys together with * syntax is not supported.")) ; Statement: specialinvoke $r41.<org.hibernate.QueryException: void <init>(java.lang.String)>("Using return-propertys together with * syntax is not supported.") 

(declare-const var528!1 var1035)
(declare-const var3801 String)
(define-const var414 var1266 (cast-from-var1035-to-var1266 var528!1)) ; Statement: $r47 = (java.lang.Throwable) $r41 
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {context/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext), var1432_getPropertyResultsMapByAlias/-127290905=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.util.Map), var1432_getCollectionPersisterByAlias/1587514456=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], org.hibernate.persister.collection.SQLLoadableCollection), var1432_getCollectionSuffixByAlias/51790722=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.lang.String), var637_isEmpty/-1655013448=([java.util.Map], boolean), var1035-init=([], org.hibernate.QueryException), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1035-to-var1266=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2558=org.hibernate.loader.custom.sql.SQLQueryParser, var381=r0, var3748=r1, var1516=null_type, var3312=r8, var1432=org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, var2761=$r2, var637=java.util.Map, var2815=r3, var2174=$r4, var2508=org.hibernate.persister.collection.SQLLoadableCollection, var3972=r5, var1923=$r6, var680=r7, var2047=$r9, var253=$z0, var993=$z2, var1035=org.hibernate.QueryException, var528=$r41, var3801="Using return-propertys together with * syntax is not supported.", var1266=java.lang.Throwable, var414=$r47}
; {org.hibernate.loader.custom.sql.SQLQueryParser=var2558, r0=var381, r1=var3748, null_type=var1516, r8=var3312, org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext=var1432, $r2=var2761, java.util.Map=var637, r3=var2815, $r4=var2174, org.hibernate.persister.collection.SQLLoadableCollection=var2508, r5=var3972, $r6=var1923, r7=var680, $r9=var2047, $z0=var253, $z2=var993, org.hibernate.QueryException=var1035, $r41=var528, "Using return-propertys together with * syntax is not supported."=var3801, java.lang.Throwable=var1266, $r47=var414}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1);	$r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.collection.SQLLoadableCollection getCollectionPersisterByAlias(java.lang.String)>(r1);	$r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getCollectionSuffixByAlias(java.lang.String)>(r1);	$r9 = "*";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto $r10 = "element.*";	$z2 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>();	if $z2 != 0 goto r39 = interfaceinvoke r5.<org.hibernate.persister.collection.SQLLoadableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r1, r7);	$r41 = new org.hibernate.QueryException;	specialinvoke $r41.<org.hibernate.QueryException: void <init>(java.lang.String)>("Using return-propertys together with * syntax is not supported.");	$r47 = (java.lang.Throwable) $r41;	throw $r47
;block_num 3