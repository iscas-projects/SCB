(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3337 0)
(declare-sort var2128 0)
(declare-sort var2260 0)
(declare-sort var546 0)
(declare-sort var3114 0)
(declare-sort var3542 0)
(declare-sort var1520 0)
(declare-sort var726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parseTableStatusIntoLocalAndReferencedColumns/-282842301 (var3337 String) var546)
(declare-fun localColumnsList/-9684541 (var546) var2260)
(declare-fun var2260_size/-959786421 (var2260) Int)
(declare-fun referencedColumnsList/-9684541 (var546) var2260)
(declare-fun var3114_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3337) var3542)
(declare-fun var726_createSQLException/-1268047242 (String String var3542) var1520)
(declare-const null-var3337 var3337)
(declare-const null-String String)
(declare-const null-var2260 var2260)
(declare-const null-Bool Bool)
(declare-const var1697 var3337) ; Statement: r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1697 null-var3337)))
(declare-const var601 String) ; Statement: r24 := @parameter0: java.lang.String 
(assert (not (= var601 null-String)))
(declare-const var91 String) ; Statement: r25 := @parameter1: java.lang.String 
(assert (not (= var91 null-String)))
(declare-const var3413 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3413 null-String)))
(declare-const var3154 var2260) ; Statement: r38 := @parameter3: java.util.List 
(assert (not (= var3154 null-var2260)))
(declare-const var2208 String) ; Statement: r41 := @parameter4: java.lang.String 
(assert (not (= var2208 null-String)))
(declare-const var242 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var242 null-Bool)))
(assert true)
(define-const var1621 var546 (parseTableStatusIntoLocalAndReferencedColumns/-282842301 var1697 var3413)) ; Statement: r2 = virtualinvoke r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns parseTableStatusIntoLocalAndReferencedColumns(java.lang.String)>(r1) 
 ; Statement: if z0 == 0 goto $r3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList> 
(assert (= (ite var242 1 0) 0)) ; Cond: z0 == 0 
(define-const var812 var2260 (localColumnsList/-9684541 var1621)) ; Statement: $r3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList> 
(define-const var138 Int (var2260_size/-959786421 var812)) ; Statement: $i1 = interfaceinvoke $r3.<java.util.List: int size()>() 
(define-const var3891 var2260 (referencedColumnsList/-9684541 var1621)) ; Statement: $r4 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List referencedColumnsList> 
(define-const var2467 Int (var2260_size/-959786421 var3891)) ; Statement: $i0 = interfaceinvoke $r4.<java.util.List: int size()>() 
 ; Statement: if $i1 == $i0 goto $r5 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList> 
(assert (not (= var138 var2467))) ; Negate: Cond: $i1 == $i0  
(define-const var1663 String (var3114_getString/-1547297038 "DatabaseMetaData.12")) ; Statement: $r45 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.12") 
(assert true)
(define-const var1530 var3542 (getExceptionInterceptor/-1244810802 var1697)) ; Statement: $r44 = virtualinvoke r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3927 var1520 (var726_createSQLException/-1268047242 var1663 "S1000" var1530)) ; Statement: $r46 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r45, "S1000", $r44) 
 ; Statement: throw $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {parseTableStatusIntoLocalAndReferencedColumns/-282842301=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns), localColumnsList/-9684541=([com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns], java.util.List), var2260_size/-959786421=([java.util.List], int), referencedColumnsList/-9684541=([com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns], java.util.List), var3114_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var726_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3337=com.mysql.cj.jdbc.DatabaseMetaData, var1697=r0, var601=r24, var2128=null_type, var91=r25, var3413=r1, var2260=java.util.List, var3154=r38, var2208=r41, var242=z0, var546=com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns, var1621=r2, var812=$r3, var138=$i1, var3891=$r4, var2467=$i0, var3114=com.mysql.cj.Messages, var1663=$r45, var3542=com.mysql.cj.exceptions.ExceptionInterceptor, var1530=$r44, var1520=java.sql.SQLException, var726=com.mysql.cj.jdbc.exceptions.SQLError, var3927=$r46}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3337, r0=var1697, r24=var601, null_type=var2128, r25=var91, r1=var3413, java.util.List=var2260, r38=var3154, r41=var2208, z0=var242, com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns=var546, r2=var1621, $r3=var812, $i1=var138, $r4=var3891, $i0=var2467, com.mysql.cj.Messages=var3114, $r45=var1663, com.mysql.cj.exceptions.ExceptionInterceptor=var3542, $r44=var1530, java.sql.SQLException=var1520, com.mysql.cj.jdbc.exceptions.SQLError=var726, $r46=var3927}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r24 := @parameter0: java.lang.String;	r25 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r38 := @parameter3: java.util.List;	r41 := @parameter4: java.lang.String;	z0 := @parameter5: boolean;	r2 = virtualinvoke r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns parseTableStatusIntoLocalAndReferencedColumns(java.lang.String)>(r1);	if z0 == 0 goto $r3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList>;	$r3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList>;	$i1 = interfaceinvoke $r3.<java.util.List: int size()>();	$r4 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List referencedColumnsList>;	$i0 = interfaceinvoke $r4.<java.util.List: int size()>();	if $i1 == $i0 goto $r5 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList>;	$r45 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.12");	$r44 = virtualinvoke r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r46 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r45, "S1000", $r44);	throw $r46
;block_num 3