(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var581 0)
(declare-sort var995 0)
(declare-sort var34 0)
(declare-sort var2921 0)
(declare-sort var1529 0)
(declare-sort var3459 0)
(declare-sort var1275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/262370177 (var581) var34)
(declare-fun var34_getPropertyResultsMapByAlias/-127290905 (var34 String) var2921)
(declare-fun var34_getEntityPersisterByAlias/-835102132 (var34 String) var1529)
(declare-fun var34_getEntitySuffixByAlias/32319943 (var34 String) String)
(declare-fun var2921_isEmpty/-1655013448 (var2921) Bool)
(declare-fun var3459-init () var3459)
(declare-fun <init>/-1391884909 (var3459 String) void)
(declare-fun cast-from-var3459-to-var1275 (var3459) var1275)
(declare-const null-var581 var581)
(declare-const null-String String)
(declare-const var1355 var581) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser 
(assert (not (= var1355 null-var581)))
(declare-const var3915 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3915 null-String)))
(declare-const var817 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var817 null-String)))
(define-const var3546 var34 (context/262370177 var1355)) ; Statement: $r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var2393 var2921 (var34_getPropertyResultsMapByAlias/-127290905 var3546 var3915)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1) 
(define-const var655 var34 (context/262370177 var1355)) ; Statement: $r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var1216 var1529 (var34_getEntityPersisterByAlias/-835102132 var655 var3915)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.entity.SQLLoadable getEntityPersisterByAlias(java.lang.String)>(r1) 
(define-const var1773 var34 (context/262370177 var1355)) ; Statement: $r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var2569 String (var34_getEntitySuffixByAlias/32319943 var1773 var3915)) ; Statement: r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getEntitySuffixByAlias(java.lang.String)>(r1) 
(define-const var3837 String "*") ; Statement: $r9 = "*" 
(assert true)
(define-const var1919 Bool (= var3837 var817)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto $r10 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r8) 
(assert (not (= (ite var1919 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2926 Bool (var2921_isEmpty/-1655013448 var2393)) ; Statement: $z1 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $l5 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound> 
(assert (not (not (= (ite var2926 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3996 var3459 var3459-init) ; Statement: $r33 = new org.hibernate.QueryException 
(assert true)
;(assert (<init>/-1391884909 var3996 "Using return-propertys together with * syntax is not supported.")) ; Statement: specialinvoke $r33.<org.hibernate.QueryException: void <init>(java.lang.String)>("Using return-propertys together with * syntax is not supported.") 

(declare-const var3996!1 var3459)
(declare-const var1363 String)
(define-const var1285 var1275 (cast-from-var3459-to-var1275 var3996!1)) ; Statement: $r38 = (java.lang.Throwable) $r33 
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {context/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext), var34_getPropertyResultsMapByAlias/-127290905=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.util.Map), var34_getEntityPersisterByAlias/-835102132=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], org.hibernate.persister.entity.SQLLoadable), var34_getEntitySuffixByAlias/32319943=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.lang.String), var2921_isEmpty/-1655013448=([java.util.Map], boolean), var3459-init=([], org.hibernate.QueryException), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3459-to-var1275=([org.hibernate.QueryException], java.lang.Throwable)}
; {var581=org.hibernate.loader.custom.sql.SQLQueryParser, var1355=r0, var3915=r1, var995=null_type, var817=r8, var34=org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, var3546=$r2, var2921=java.util.Map, var2393=r3, var655=$r4, var1529=org.hibernate.persister.entity.SQLLoadable, var1216=r5, var1773=$r6, var2569=r7, var3837=$r9, var1919=$z0, var2926=$z1, var3459=org.hibernate.QueryException, var3996=$r33, var1363="Using return-propertys together with * syntax is not supported.", var1275=java.lang.Throwable, var1285=$r38}
; {org.hibernate.loader.custom.sql.SQLQueryParser=var581, r0=var1355, r1=var3915, null_type=var995, r8=var817, org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext=var34, $r2=var3546, java.util.Map=var2921, r3=var2393, $r4=var655, org.hibernate.persister.entity.SQLLoadable=var1529, r5=var1216, $r6=var1773, r7=var2569, $r9=var3837, $z0=var1919, $z1=var2926, org.hibernate.QueryException=var3459, $r33=var3996, "Using return-propertys together with * syntax is not supported."=var1363, java.lang.Throwable=var1275, $r38=var1285}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1);	$r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.entity.SQLLoadable getEntityPersisterByAlias(java.lang.String)>(r1);	$r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getEntitySuffixByAlias(java.lang.String)>(r1);	$r9 = "*";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto $r10 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r8);	$z1 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>();	if $z1 != 0 goto $l5 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound>;	$r33 = new org.hibernate.QueryException;	specialinvoke $r33.<org.hibernate.QueryException: void <init>(java.lang.String)>("Using return-propertys together with * syntax is not supported.");	$r38 = (java.lang.Throwable) $r33;	throw $r38
;block_num 3