(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var682 0)
(declare-sort var34 0)
(declare-sort var400 0)
(declare-sort var742 0)
(declare-sort var1260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/262370177 (var682) var400)
(declare-fun var400_getPropertyResultsMapByAlias/-127290905 (var400 String) var742)
(declare-fun var400_getEntityPersisterByAlias/-835102132 (var400 String) var1260)
(declare-fun var400_getEntitySuffixByAlias/32319943 (var400 String) String)
(declare-fun var742_isEmpty/-1655013448 (var742) Bool)
(declare-fun aliasesFound/262370177 (var682) Int)
(declare-fun var1260_selectFragment/-25173368 (var1260 String String) String)
(declare-const null-var682 var682)
(declare-const null-String String)
(declare-const var2802 var682) ; Statement: r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser 
(assert (not (= var2802 null-var682)))
(declare-const var2734 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2734 null-String)))
(declare-const var939 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var939 null-String)))
(define-const var920 var400 (context/262370177 var2802)) ; Statement: $r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var2478 var742 (var400_getPropertyResultsMapByAlias/-127290905 var920 var2734)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1) 
(define-const var2302 var400 (context/262370177 var2802)) ; Statement: $r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var1514 var1260 (var400_getEntityPersisterByAlias/-835102132 var2302 var2734)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.entity.SQLLoadable getEntityPersisterByAlias(java.lang.String)>(r1) 
(define-const var1447 var400 (context/262370177 var2802)) ; Statement: $r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context> 
(define-const var2299 String (var400_getEntitySuffixByAlias/32319943 var1447 var2734)) ; Statement: r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getEntitySuffixByAlias(java.lang.String)>(r1) 
(define-const var2332 String "*") ; Statement: $r9 = "*" 
(assert true)
(define-const var250 Bool (= var2332 var939)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto $r10 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r8) 
(assert (not (= (ite var250 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var444 Bool (var742_isEmpty/-1655013448 var2478)) ; Statement: $z1 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $l5 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound> 
(assert (not (= (ite var444 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3297 Int (aliasesFound/262370177 var2802)) ; Statement: $l5 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound> 
(define-const var1617 Int (+ var3297 1)) ; Statement: $l6 = $l5 + 1L 
(declare-const var2802!1 var682)
(assert (not (= var2802!1 null-var682)))
(assert (= (aliasesFound/262370177 var2802!1) var1617)) ; Statement: r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound> = $l6 
(define-const var3511 String (var1260_selectFragment/-25173368 var1514 var2734 var2299)) ; Statement: $r30 = interfaceinvoke r5.<org.hibernate.persister.entity.SQLLoadable: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r1, r7) 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {context/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext), var400_getPropertyResultsMapByAlias/-127290905=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.util.Map), var400_getEntityPersisterByAlias/-835102132=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], org.hibernate.persister.entity.SQLLoadable), var400_getEntitySuffixByAlias/32319943=([org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, java.lang.String], java.lang.String), var742_isEmpty/-1655013448=([java.util.Map], boolean), aliasesFound/262370177=([org.hibernate.loader.custom.sql.SQLQueryParser], long), var1260_selectFragment/-25173368=([org.hibernate.persister.entity.SQLLoadable, java.lang.String, java.lang.String], java.lang.String)}
; {var682=org.hibernate.loader.custom.sql.SQLQueryParser, var2802=r0, var2734=r1, var34=null_type, var939=r8, var400=org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext, var920=$r2, var742=java.util.Map, var2478=r3, var2302=$r4, var1260=org.hibernate.persister.entity.SQLLoadable, var1514=r5, var1447=$r6, var2299=r7, var2332=$r9, var250=$z0, var444=$z1, var3297=$l5, var1617=$l6, var3511=$r30}
; {org.hibernate.loader.custom.sql.SQLQueryParser=var682, r0=var2802, r1=var2734, null_type=var34, r8=var939, org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext=var400, $r2=var920, java.util.Map=var742, r3=var2478, $r4=var2302, org.hibernate.persister.entity.SQLLoadable=var1260, r5=var1514, $r6=var1447, r7=var2299, $r9=var2332, $z0=var250, $z1=var444, $l5=var3297, $l6=var1617, $r30=var3511}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.sql.SQLQueryParser;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r3 = interfaceinvoke $r2.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.util.Map getPropertyResultsMapByAlias(java.lang.String)>(r1);	$r4 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r5 = interfaceinvoke $r4.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: org.hibernate.persister.entity.SQLLoadable getEntityPersisterByAlias(java.lang.String)>(r1);	$r6 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext context>;	r7 = interfaceinvoke $r6.<org.hibernate.loader.custom.sql.SQLQueryParser$ParserContext: java.lang.String getEntitySuffixByAlias(java.lang.String)>(r1);	$r9 = "*";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto $r10 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r8);	$z1 = interfaceinvoke r3.<java.util.Map: boolean isEmpty()>();	if $z1 != 0 goto $l5 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound>;	$l5 = r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound>;	$l6 = $l5 + 1L;	r0.<org.hibernate.loader.custom.sql.SQLQueryParser: long aliasesFound> = $l6;	$r30 = interfaceinvoke r5.<org.hibernate.persister.entity.SQLLoadable: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r1, r7);	return $r30
;block_num 3