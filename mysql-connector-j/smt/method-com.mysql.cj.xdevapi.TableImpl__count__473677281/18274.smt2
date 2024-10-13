(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2155 0)
(declare-sort var1174 0)
(declare-sort var3139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mysqlxSession/2128262959 (var2155) var1174)
(declare-fun getErrorCode/1340740181 (var3139) Int)
(declare-const null-var2155 var2155)
(declare-const null-var3139 var3139)
(declare-const var2532 var2155) ; Statement: r0 := @this: com.mysql.cj.xdevapi.TableImpl 
(assert (not (= var2532 null-var2155)))
(define-const var2697 var1174 (mysqlxSession/2128262959 var2532)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.TableImpl: com.mysql.cj.MysqlxSession mysqlxSession> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3929 var3139) ; Statement: $r6 := @caughtexception 
(assert (not (= var3929 null-var3139)))
(assert true)
(define-const var1974 Int (getErrorCode/1340740181 var3929)) ; Statement: $i1 = virtualinvoke $r6.<com.mysql.cj.protocol.x.XProtocolError: int getErrorCode()>() 
 ; Statement: if $i1 != 1146 goto throw $r6 
(assert (not (= var1974 1146))) ; Cond: $i1 != 1146 
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {mysqlxSession/2128262959=([com.mysql.cj.xdevapi.TableImpl], com.mysql.cj.MysqlxSession), getErrorCode/1340740181=([com.mysql.cj.protocol.x.XProtocolError], int)}
; {var2155=com.mysql.cj.xdevapi.TableImpl, var2532=r0, var1174=com.mysql.cj.MysqlxSession, var2697=$r1, var3139=com.mysql.cj.protocol.x.XProtocolError, var3929=$r6, var1974=$i1}
; {com.mysql.cj.xdevapi.TableImpl=var2155, r0=var2532, com.mysql.cj.MysqlxSession=var1174, $r1=var2697, com.mysql.cj.protocol.x.XProtocolError=var3139, $r6=var3929, $i1=var1974}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.xdevapi.TableImpl;	$r1 = r0.<com.mysql.cj.xdevapi.TableImpl: com.mysql.cj.MysqlxSession mysqlxSession>;	$r6 := @caughtexception;	$i1 = virtualinvoke $r6.<com.mysql.cj.protocol.x.XProtocolError: int getErrorCode()>();	if $i1 != 1146 goto throw $r6;	throw $r6
;block_num 3