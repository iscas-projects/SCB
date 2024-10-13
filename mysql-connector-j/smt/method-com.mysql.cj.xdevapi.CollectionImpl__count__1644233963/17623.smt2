(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1385 0)
(declare-sort var2749 0)
(declare-sort var604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mysqlxSession/670250589 (var1385) var2749)
(declare-fun getErrorCode/1340740181 (var604) Int)
(declare-const null-var1385 var1385)
(declare-const null-var604 var604)
(declare-const var2324 var1385) ; Statement: r0 := @this: com.mysql.cj.xdevapi.CollectionImpl 
(assert (not (= var2324 null-var1385)))
(define-const var3668 var2749 (mysqlxSession/670250589 var2324)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.CollectionImpl: com.mysql.cj.MysqlxSession mysqlxSession> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1798 var604) ; Statement: $r6 := @caughtexception 
(assert (not (= var1798 null-var604)))
(assert true)
(define-const var2554 Int (getErrorCode/1340740181 var1798)) ; Statement: $i1 = virtualinvoke $r6.<com.mysql.cj.protocol.x.XProtocolError: int getErrorCode()>() 
 ; Statement: if $i1 != 1146 goto throw $r6 
(assert (not (= var2554 1146))) ; Cond: $i1 != 1146 
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {mysqlxSession/670250589=([com.mysql.cj.xdevapi.CollectionImpl], com.mysql.cj.MysqlxSession), getErrorCode/1340740181=([com.mysql.cj.protocol.x.XProtocolError], int)}
; {var1385=com.mysql.cj.xdevapi.CollectionImpl, var2324=r0, var2749=com.mysql.cj.MysqlxSession, var3668=$r1, var604=com.mysql.cj.protocol.x.XProtocolError, var1798=$r6, var2554=$i1}
; {com.mysql.cj.xdevapi.CollectionImpl=var1385, r0=var2324, com.mysql.cj.MysqlxSession=var2749, $r1=var3668, com.mysql.cj.protocol.x.XProtocolError=var604, $r6=var1798, $i1=var2554}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.xdevapi.CollectionImpl;	$r1 = r0.<com.mysql.cj.xdevapi.CollectionImpl: com.mysql.cj.MysqlxSession mysqlxSession>;	$r6 := @caughtexception;	$i1 = virtualinvoke $r6.<com.mysql.cj.protocol.x.XProtocolError: int getErrorCode()>();	if $i1 != 1146 goto throw $r6;	throw $r6
;block_num 3