(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2323 0)
(declare-sort var2373 0)
(declare-sort var3097 0)
(declare-sort var3209 0)
(declare-sort var1825 0)
(declare-sort var2046 0)
(declare-sort var1365 0)
(declare-sort var111 0)
(declare-sort var368 0)
(declare-sort var2005 0)
(declare-sort var3877 0)
(declare-sort var3049 0)
(declare-sort var2526 0)
(declare-sort var756 0)
(declare-sort var176 0)
(declare-sort var3534 0)
(declare-sort var654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConfiguration/-564181419 (var2373) var3209)
(declare-fun newStatementHandler/-955014978 (var3209 var1365 var2373 var3097 var1825 var111 var368) var2046)
(declare-fun cast-from-var2323-to-var1365 (var2323) var1365)
(declare-fun var2046_getBoundSql/-1701737336 (var2046) var368)
(declare-fun getSql/464797630 (var368) String)
(declare-fun currentSql/-1105212396 (var2323) String)
(declare-fun getStatementLog/-84618237 (var2373) var2005)
(declare-fun getConnection/-112435177 (var3049 var2005) var3877)
(declare-fun cast-from-var2323-to-var3049 (var2323) var3049)
(declare-fun transaction/77281277 (var3049) var2526)
(declare-fun var2526_getTimeout/472320230 (var2526) Int)
(declare-fun var2046_prepare/1494655836 (var2046 var3877 Int) var756)
(declare-fun var2046_parameterize/-304337114 (var2046 var756) void)
(declare-fun currentStatement/-1105212396 (var2323) var2373)
(declare-fun statementList/-1105212396 (var2323) var176)
(declare-fun var176_add/328494887 (var176 var3097) Bool)
(declare-fun cast-from-var756-to-var3097 (var756) var3097)
(declare-fun batchResultList/-1105212396 (var2323) var176)
(declare-fun var3534-init () var3534)
(declare-fun <init>/-908413197 (var3534 var2373 String var3097) void)
(declare-fun cast-from-var3534-to-var3097 (var3534) var3097)
(declare-fun var2046_batch/-1778203435 (var2046 var756) void)
(declare-const null-var2323 var2323)
(declare-const null-var2373 var2373)
(declare-const null-var3097 var3097)
(declare-const var1825-DEFAULT var1825)
(declare-const null-NullType var654)
(declare-const null-var111 var111)
(declare-const null-var368 var368)
(declare-const var228 var2323) ; Statement: r2 := @this: org.apache.ibatis.executor.BatchExecutor 
(assert (not (= var228 null-var2323)))
(declare-const var3811 var2373) ; Statement: r0 := @parameter0: org.apache.ibatis.mapping.MappedStatement 
(assert (not (= var3811 null-var2373)))
(declare-const var1289 var3097) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1289 null-var3097)))
(assert true)
(define-const var3477 var3209 (getConfiguration/-564181419 var3811)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.session.Configuration getConfiguration()>() 
(define-const var1546 var1825 var1825-DEFAULT) ; Statement: $r4 = <org.apache.ibatis.session.RowBounds: org.apache.ibatis.session.RowBounds DEFAULT> 
(assert true)
(define-const var1348 var2046 (newStatementHandler/-955014978 var3477 (cast-from-var2323-to-var1365 var228) var3811 var1289 var1546 null-var111 null-var368)) ; Statement: r5 = virtualinvoke r1.<org.apache.ibatis.session.Configuration: org.apache.ibatis.executor.statement.StatementHandler newStatementHandler(org.apache.ibatis.executor.Executor,org.apache.ibatis.mapping.MappedStatement,java.lang.Object,org.apache.ibatis.session.RowBounds,org.apache.ibatis.session.ResultHandler,org.apache.ibatis.mapping.BoundSql)>(r2, r0, r3, $r4, null, null) 
(define-const var1891 var368 (var2046_getBoundSql/-1701737336 var1348)) ; Statement: r6 = interfaceinvoke r5.<org.apache.ibatis.executor.statement.StatementHandler: org.apache.ibatis.mapping.BoundSql getBoundSql()>() 
(assert true)
(define-const var1125 String (getSql/464797630 var1891)) ; Statement: r7 = virtualinvoke r6.<org.apache.ibatis.mapping.BoundSql: java.lang.String getSql()>() 
(define-const var2754 String (currentSql/-1105212396 var228)) ; Statement: $r8 = r2.<org.apache.ibatis.executor.BatchExecutor: java.lang.String currentSql> 
(assert true)
(define-const var2871 Bool (= var1125 var2754)) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z0 == 0 goto $r9 = virtualinvoke r0.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.logging.Log getStatementLog()>() 
(assert (= (ite var2871 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var28 var2005 (getStatementLog/-84618237 var3811)) ; Statement: $r9 = virtualinvoke r0.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.logging.Log getStatementLog()>() 
(assert true)
(define-const var966 var3877 (getConnection/-112435177 (cast-from-var2323-to-var3049 var228) var28)) ; Statement: $r16 = virtualinvoke r2.<org.apache.ibatis.executor.BatchExecutor: java.sql.Connection getConnection(org.apache.ibatis.logging.Log)>($r9) 
(define-const var3197 var2526 (transaction/77281277 (cast-from-var2323-to-var3049 var228))) ; Statement: $r10 = r2.<org.apache.ibatis.executor.BatchExecutor: org.apache.ibatis.transaction.Transaction transaction> 
(define-const var2404 Int (var2526_getTimeout/472320230 var3197)) ; Statement: $r11 = interfaceinvoke $r10.<org.apache.ibatis.transaction.Transaction: java.lang.Integer getTimeout()>() 
(define-const var685 var756 (var2046_prepare/1494655836 var1348 var966 var2404)) ; Statement: $r17 = interfaceinvoke r5.<org.apache.ibatis.executor.statement.StatementHandler: java.sql.Statement prepare(java.sql.Connection,java.lang.Integer)>($r16, $r11) 
(define-const var1006 var756 var685) ; Statement: r24 = $r17 
;(assert (var2046_parameterize/-304337114 var1348 var685)) ; Statement: interfaceinvoke r5.<org.apache.ibatis.executor.statement.StatementHandler: void parameterize(java.sql.Statement)>($r17) 

(declare-const var1348!1 var2046)
(declare-const var685!1 var756)
(declare-const var228!1 var2323)
(assert (not (= var228!1 null-var2323)))
(assert (= (currentSql/-1105212396 var228!1) var1125)) ; Statement: r2.<org.apache.ibatis.executor.BatchExecutor: java.lang.String currentSql> = r7 
(declare-const var228!2 var2323)
(assert (not (= var228!2 null-var2323)))
(assert (= (currentStatement/-1105212396 var228!2) var3811)) ; Statement: r2.<org.apache.ibatis.executor.BatchExecutor: org.apache.ibatis.mapping.MappedStatement currentStatement> = r0 
(define-const var2851 var176 (statementList/-1105212396 var228!2)) ; Statement: $r12 = r2.<org.apache.ibatis.executor.BatchExecutor: java.util.List statementList> 
;(assert (var176_add/328494887 var2851 (cast-from-var756-to-var3097 var685!1))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var2851!1 var176)
(declare-const var685!2 var756)
(define-const var1112 var176 (batchResultList/-1105212396 var228!2)) ; Statement: $r14 = r2.<org.apache.ibatis.executor.BatchExecutor: java.util.List batchResultList> 
(define-const var3730 var3534 var3534-init) ; Statement: $r13 = new org.apache.ibatis.executor.BatchResult 
(assert true)
;(assert (<init>/-908413197 var3730 var3811 var1125 var1289)) ; Statement: specialinvoke $r13.<org.apache.ibatis.executor.BatchResult: void <init>(org.apache.ibatis.mapping.MappedStatement,java.lang.String,java.lang.Object)>(r0, r7, r3) 

(declare-const var3730!1 var3534)
(declare-const var3811!1 var2373)
(declare-const var1125!1 String)
(declare-const var1289!1 var3097)
;(assert (var176_add/328494887 var1112 (cast-from-var3534-to-var3097 var3730!1))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var1112!1 var176)
(declare-const var3730!2 var3534)
(assert true) ; Non Conditional
;(assert (var2046_batch/-1778203435 var1348!1 var1006)) ; Statement: interfaceinvoke r5.<org.apache.ibatis.executor.statement.StatementHandler: void batch(java.sql.Statement)>(r24) 

(declare-const var1348!2 var2046)
(declare-const var1006!1 var756)
 ; Statement: return -2147482646 
(check-sat)
(get-model)
(get-unsat-core)
; {getConfiguration/-564181419=([org.apache.ibatis.mapping.MappedStatement], org.apache.ibatis.session.Configuration), newStatementHandler/-955014978=([org.apache.ibatis.session.Configuration, org.apache.ibatis.executor.Executor, org.apache.ibatis.mapping.MappedStatement, java.lang.Object, org.apache.ibatis.session.RowBounds, org.apache.ibatis.session.ResultHandler, org.apache.ibatis.mapping.BoundSql], org.apache.ibatis.executor.statement.StatementHandler), cast-from-var2323-to-var1365=([org.apache.ibatis.executor.BatchExecutor], org.apache.ibatis.executor.Executor), var2046_getBoundSql/-1701737336=([org.apache.ibatis.executor.statement.StatementHandler], org.apache.ibatis.mapping.BoundSql), getSql/464797630=([org.apache.ibatis.mapping.BoundSql], java.lang.String), currentSql/-1105212396=([org.apache.ibatis.executor.BatchExecutor], java.lang.String), getStatementLog/-84618237=([org.apache.ibatis.mapping.MappedStatement], org.apache.ibatis.logging.Log), getConnection/-112435177=([org.apache.ibatis.executor.BaseExecutor, org.apache.ibatis.logging.Log], java.sql.Connection), cast-from-var2323-to-var3049=([org.apache.ibatis.executor.BatchExecutor], org.apache.ibatis.executor.BaseExecutor), transaction/77281277=([org.apache.ibatis.executor.BaseExecutor], org.apache.ibatis.transaction.Transaction), var2526_getTimeout/472320230=([org.apache.ibatis.transaction.Transaction], java.lang.Integer), var2046_prepare/1494655836=([org.apache.ibatis.executor.statement.StatementHandler, java.sql.Connection, java.lang.Integer], java.sql.Statement), var2046_parameterize/-304337114=([org.apache.ibatis.executor.statement.StatementHandler, java.sql.Statement], void), currentStatement/-1105212396=([org.apache.ibatis.executor.BatchExecutor], org.apache.ibatis.mapping.MappedStatement), statementList/-1105212396=([org.apache.ibatis.executor.BatchExecutor], java.util.List), var176_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var756-to-var3097=([java.sql.Statement], java.lang.Object), batchResultList/-1105212396=([org.apache.ibatis.executor.BatchExecutor], java.util.List), var3534-init=([], org.apache.ibatis.executor.BatchResult), <init>/-908413197=([org.apache.ibatis.executor.BatchResult, org.apache.ibatis.mapping.MappedStatement, java.lang.String, java.lang.Object], void), cast-from-var3534-to-var3097=([org.apache.ibatis.executor.BatchResult], java.lang.Object), var2046_batch/-1778203435=([org.apache.ibatis.executor.statement.StatementHandler, java.sql.Statement], void)}
; {var2323=org.apache.ibatis.executor.BatchExecutor, var228=r2, var2373=org.apache.ibatis.mapping.MappedStatement, var3811=r0, var3097=java.lang.Object, var1289=r3, var3209=org.apache.ibatis.session.Configuration, var3477=r1, var1825=org.apache.ibatis.session.RowBounds, var1546=$r4, var2046=org.apache.ibatis.executor.statement.StatementHandler, var1365=org.apache.ibatis.executor.Executor, var111=org.apache.ibatis.session.ResultHandler, var368=org.apache.ibatis.mapping.BoundSql, var1348=r5, var1891=r6, var1125=r7, var2754=$r8, var2871=$z0, var2005=org.apache.ibatis.logging.Log, var28=$r9, var3877=java.sql.Connection, var3049=org.apache.ibatis.executor.BaseExecutor, var966=$r16, var2526=org.apache.ibatis.transaction.Transaction, var3197=$r10, var2404=$r11, var756=java.sql.Statement, var685=$r17, var1006=r24, var176=java.util.List, var2851=$r12, var1112=$r14, var3534=org.apache.ibatis.executor.BatchResult, var3730=$r13, var654=null_type}
; {org.apache.ibatis.executor.BatchExecutor=var2323, r2=var228, org.apache.ibatis.mapping.MappedStatement=var2373, r0=var3811, java.lang.Object=var3097, r3=var1289, org.apache.ibatis.session.Configuration=var3209, r1=var3477, org.apache.ibatis.session.RowBounds=var1825, $r4=var1546, org.apache.ibatis.executor.statement.StatementHandler=var2046, org.apache.ibatis.executor.Executor=var1365, org.apache.ibatis.session.ResultHandler=var111, org.apache.ibatis.mapping.BoundSql=var368, r5=var1348, r6=var1891, r7=var1125, $r8=var2754, $z0=var2871, org.apache.ibatis.logging.Log=var2005, $r9=var28, java.sql.Connection=var3877, org.apache.ibatis.executor.BaseExecutor=var3049, $r16=var966, org.apache.ibatis.transaction.Transaction=var2526, $r10=var3197, $r11=var2404, java.sql.Statement=var756, $r17=var685, r24=var1006, java.util.List=var176, $r12=var2851, $r14=var1112, org.apache.ibatis.executor.BatchResult=var3534, $r13=var3730, null_type=var654}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.executor.BatchExecutor;	r0 := @parameter0: org.apache.ibatis.mapping.MappedStatement;	r3 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.session.Configuration getConfiguration()>();	$r4 = <org.apache.ibatis.session.RowBounds: org.apache.ibatis.session.RowBounds DEFAULT>;	r5 = virtualinvoke r1.<org.apache.ibatis.session.Configuration: org.apache.ibatis.executor.statement.StatementHandler newStatementHandler(org.apache.ibatis.executor.Executor,org.apache.ibatis.mapping.MappedStatement,java.lang.Object,org.apache.ibatis.session.RowBounds,org.apache.ibatis.session.ResultHandler,org.apache.ibatis.mapping.BoundSql)>(r2, r0, r3, $r4, null, null);	r6 = interfaceinvoke r5.<org.apache.ibatis.executor.statement.StatementHandler: org.apache.ibatis.mapping.BoundSql getBoundSql()>();	r7 = virtualinvoke r6.<org.apache.ibatis.mapping.BoundSql: java.lang.String getSql()>();	$r8 = r2.<org.apache.ibatis.executor.BatchExecutor: java.lang.String currentSql>;	$z0 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 == 0 goto $r9 = virtualinvoke r0.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.logging.Log getStatementLog()>();	$r9 = virtualinvoke r0.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.logging.Log getStatementLog()>();	$r16 = virtualinvoke r2.<org.apache.ibatis.executor.BatchExecutor: java.sql.Connection getConnection(org.apache.ibatis.logging.Log)>($r9);	$r10 = r2.<org.apache.ibatis.executor.BatchExecutor: org.apache.ibatis.transaction.Transaction transaction>;	$r11 = interfaceinvoke $r10.<org.apache.ibatis.transaction.Transaction: java.lang.Integer getTimeout()>();	$r17 = interfaceinvoke r5.<org.apache.ibatis.executor.statement.StatementHandler: java.sql.Statement prepare(java.sql.Connection,java.lang.Integer)>($r16, $r11);	r24 = $r17;	interfaceinvoke r5.<org.apache.ibatis.executor.statement.StatementHandler: void parameterize(java.sql.Statement)>($r17);	r2.<org.apache.ibatis.executor.BatchExecutor: java.lang.String currentSql> = r7;	r2.<org.apache.ibatis.executor.BatchExecutor: org.apache.ibatis.mapping.MappedStatement currentStatement> = r0;	$r12 = r2.<org.apache.ibatis.executor.BatchExecutor: java.util.List statementList>;	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r17);	$r14 = r2.<org.apache.ibatis.executor.BatchExecutor: java.util.List batchResultList>;	$r13 = new org.apache.ibatis.executor.BatchResult;	specialinvoke $r13.<org.apache.ibatis.executor.BatchResult: void <init>(org.apache.ibatis.mapping.MappedStatement,java.lang.String,java.lang.Object)>(r0, r7, r3);	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r13);	interfaceinvoke r5.<org.apache.ibatis.executor.statement.StatementHandler: void batch(java.sql.Statement)>(r24);	return -2147482646
;block_num 3