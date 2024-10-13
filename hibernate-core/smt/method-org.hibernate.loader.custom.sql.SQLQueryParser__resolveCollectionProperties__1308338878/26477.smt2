(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var2286 0)
(declare-sort var2225 0)
(declare-sort var1242 0)
(declare-sort var2941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/262370177 (var609) var2225)
(declare-fun var2225_getPropertyResultsMapByAlias/-127290905 (var2225 String) var1242)
(declare-fun var2225_getCollectionPersisterByAlias/1587514456 (var2225 String) var2941)
(declare-fun var2225_getCollectionSuffixByAlias/51790722 (var2225 String) String)
(declare-fun resolveProperties/-1126140544 (var609 String String) String)
(declare-const null-var609 var609)
(declare-const null-String String)
(declare-const var2758 var609) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser 
(assert (not (= var2758 null-var609)))
(declare-const var1310 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1310 null-String)))
(declare-const var2931 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2931 null-String)))
(define-const var2364 var2225 (context/262370177 var2758)) ; Statement: $r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var939 var1242 (var2225_getPropertyResultsMapByAlias/-127290905 var2364 var1310)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1) 
(define-const var3004 var2225 (context/262370177 var2758)) ; Statement: $r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var1391 var2941 (var2225_getCollectionPersisterByAlias/1587514456 var3004 var1310)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.collection.SQLLoadableCollection getCollectionPersisterByAlias(java.lang.String)>(r1) 
(define-const var1144 var2225 (context/262370177 var2758)) ; Statement: $r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var2649 String (var2225_getCollectionSuffixByAlias/51790722 var1144 var1310)) ; Statement: r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getCollectionSuffixByAlias(java.lang.String)>(r1) 
(define-const var448 String "*") ; Statement: $r9 = "*" 
(assert true)
(define-const var104 Bool (= var448 var2931)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto $r10 = "element.*" 
(assert (= (ite var104 1 0) 0)) ; Cond: $z0 == 0 
(define-const var320 String "element.*") ; Statement: $r10 = "element.*" 
(assert true)
(define-const var230 Bool (= var320 var2931)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z1 == 0 goto $r11 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r8) 
(assert (not (= (ite var230 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var3911 String (resolveProperties/-1126140544 var2758 var1310 "*")) ; Statement: $r31 = specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser: java.lang.String resolveProperties(java.lang.String,java.lang.String)>(r1, "*") 
 ; Statement: return $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {context/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext), var2225_getPropertyResultsMapByAlias/-127290905=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.util.Map), var2225_getCollectionPersisterByAlias/1587514456=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], org.hibernate.persister.collection.SQLLoadableCollection), var2225_getCollectionSuffixByAlias/51790722=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.lang.String), resolveProperties/-1126140544=([org.hibernate.loader.custom.sql.SQLQueryParser, java.lang.String, java.lang.String], java.lang.String)}
; {var609=org.hibernate.loader.custom.sql.SQLQueryParser, var2758=r0, var1310=r1, var2286=null_type, var2931=r8, var2225=org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, var2364=$r2, var1242=java.util.Map, var939=r3, var3004=$r4, var2941=org.hibernate.persister.collection.SQLLoadableCollection, var1391=r5, var1144=$r6, var2649=r7, var448=$r9, var104=$z0, var320=$r10, var230=$z1, var3911=$r31}
; {org.hibernate.loader.custom.sql.SQLQueryParser=var609, r0=var2758, r1=var1310, null_type=var2286, r8=var2931, org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext=var2225, $r2=var2364, java.util.Map=var1242, r3=var939, $r4=var3004, org.hibernate.persister.collection.SQLLoadableCollection=var2941, r5=var1391, $r6=var1144, r7=var2649, $r9=var448, $z0=var104, $r10=var320, $z1=var230, $r31=var3911}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1);	$r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.collection.SQLLoadableCollection getCollectionPersisterByAlias(java.lang.String)>(r1);	$r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getCollectionSuffixByAlias(java.lang.String)>(r1);	$r9 = "*";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto $r10 = "element.*";	$r10 = "element.*";	$z1 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z1 == 0 goto $r11 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r8);	$r31 = specialinvoke r0.<org.hibernate.loader.custom.sql.SQLQueryParser: java.lang.String resolveProperties(java.lang.String,java.lang.String)>(r1, "*");	return $r31
;block_num 3