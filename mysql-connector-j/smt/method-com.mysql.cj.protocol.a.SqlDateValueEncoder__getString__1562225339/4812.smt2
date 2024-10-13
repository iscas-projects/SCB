(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var436 0)
(declare-sort var2098 0)
(declare-sort var1453 0)
(declare-sort var21 0)
(declare-sort var2441 0)
(declare-sort var2514 0)
(declare-sort var2534 0)
(declare-sort var1303 0)
(declare-sort var101 0)
(declare-sort var3677 0)
(declare-sort var105 0)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1967!class ClassObject)
(declare-fun var2098_getMysqlType/-215853011 (var2098) var21)
(declare-fun ordinal/-291641772 (var2441) Int)
(declare-fun cast-from-var21-to-var2441 (var21) var2441)
(declare-fun arr-var2514-init () (Array Int var2514))
(declare-fun var2098_getValue/1809189437 (var2098) var2514)
(declare-fun getClass/1258963082 (var2514) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2514 (String) var2514)
(declare-fun toString/1761020461 (var2441) String)
(declare-fun var2534_getString/1500902777 (String (Array Int var2514)) String)
(declare-fun exceptionInterceptor/-791602078 (var101) var1303)
(declare-fun cast-from-var436-to-var101 (var436) var101)
(declare-fun var105_createException/-988168188 (ClassObject String var1303) var3677)
(declare-fun cast-from-var3677-to-var1967 (var3677) var1967)
(declare-const null-var436 var436)
(declare-const null-var2098 var2098)
(declare-const var1453-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var2514__ (Array Int var2514))
(declare-const var1860 var436) ; Statement: r13 := @this: com.mysql.cj.protocol.a.SqlDateValueEncoder 
(assert (not (= var1860 null-var436)))
(declare-const var2442 var2098) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var2442 null-var2098)))
(define-const var3450 (Array Int Int) var1453-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.SqlDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1391 var21 (var2098_getMysqlType/-215853011 var2442)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1431 Int (ordinal/-291641772 (cast-from-var21-to-var2441 var1391))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var699 Int (select var3450 var1431)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 4: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 5: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 6: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 7: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 8: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 9: goto $r7 = new java.sql.Timestamp;     case 10: goto $r7 = new java.sql.Timestamp;     case 11: goto r3 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     default: goto $r31 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var699 11)) (and (not (= var699 10)) (and (not (= var699 9)) (and (not (= var699 8)) (and (not (= var699 7)) (and (not (= var699 6)) (and (not (= var699 5)) (and (not (= var699 4)) (and (not (= var699 3)) (and (not (= var699 2)) (and (not (= var699 1)) true)))))))))))) ; Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(define-const var945 (Array Int var2514) arr-var2514-init) ; Statement: $r31 = newarray (java.lang.Object)[2] 
(define-const var3488 var2514 (var2098_getValue/1809189437 var2442)) ; Statement: $r32 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var1200 ClassObject (getClass/1258963082 var3488)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1179 String (getName/-1958580599 var1200)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.Class: java.lang.String getName()>() 
(declare-const var945!1 (Array Int var2514))
(assert (not (= var945!1 null-__Array__Int__var2514__)))
(assert (= (select var945!1 0) (cast-from-String-to-var2514 var1179))) ; Statement: $r31[0] = $r34 
(define-const var2852 var21 (var2098_getMysqlType/-215853011 var2442)) ; Statement: $r35 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3264 String (toString/1761020461 (cast-from-var21-to-var2441 var2852))) ; Statement: $r36 = virtualinvoke $r35.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var945!2 (Array Int var2514))
(assert (not (= var945!2 null-__Array__Int__var2514__)))
(assert (= (select var945!2 1) (cast-from-String-to-var2514 var3264))) ; Statement: $r31[1] = $r36 
(define-const var2398 String (var2534_getString/1500902777 "PreparedStatement.67" var945!2)) ; Statement: $r38 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r31) 
(define-const var3209 var1303 (exceptionInterceptor/-791602078 (cast-from-var436-to-var101 var1860))) ; Statement: $r37 = r13.<com.mysql.cj.protocol.a.SqlDateValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1288 var3677 (var105_createException/-988168188 var1967!class var2398 var3209)) ; Statement: $r39 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r38, $r37) 
(define-const var391 var1967 (cast-from-var3677-to-var1967 var1288)) ; Statement: $r40 = (com.mysql.cj.exceptions.WrongArgumentException) $r39 
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {var2098_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var21-to-var2441=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var2514-init=([], java.lang.Object[]), var2098_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2514=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var2534_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var436-to-var101=([com.mysql.cj.protocol.a.SqlDateValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var105_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var3677-to-var1967=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var436=com.mysql.cj.protocol.a.SqlDateValueEncoder, var1860=r13, var2098=com.mysql.cj.BindValue, var2442=r0, var1453=com.mysql.cj.protocol.a.SqlDateValueEncoder$1, var3450=$r1, var21=com.mysql.cj.MysqlType, var1391=$r2, var2441=java.lang.Enum, var1431=$i0, var699=$i1, var2514=java.lang.Object, var945=$r31, var3488=$r32, var1200=$r33, var1179=$r34, var2852=$r35, var3264=$r36, var2534=com.mysql.cj.Messages, var2398=$r38, var1303=com.mysql.cj.exceptions.ExceptionInterceptor, var101=com.mysql.cj.protocol.a.AbstractValueEncoder, var3209=$r37, var3677=com.mysql.cj.exceptions.CJException, var105=com.mysql.cj.exceptions.ExceptionFactory, var1967=com.mysql.cj.exceptions.WrongArgumentException, var1288=$r39, var391=$r40}
; {com.mysql.cj.protocol.a.SqlDateValueEncoder=var436, r13=var1860, com.mysql.cj.BindValue=var2098, r0=var2442, com.mysql.cj.protocol.a.SqlDateValueEncoder$1=var1453, $r1=var3450, com.mysql.cj.MysqlType=var21, $r2=var1391, java.lang.Enum=var2441, $i0=var1431, $i1=var699, java.lang.Object=var2514, $r31=var945, $r32=var3488, $r33=var1200, $r34=var1179, $r35=var2852, $r36=var3264, com.mysql.cj.Messages=var2534, $r38=var2398, com.mysql.cj.exceptions.ExceptionInterceptor=var1303, com.mysql.cj.protocol.a.AbstractValueEncoder=var101, $r37=var3209, com.mysql.cj.exceptions.CJException=var3677, com.mysql.cj.exceptions.ExceptionFactory=var105, com.mysql.cj.exceptions.WrongArgumentException=var1967, $r39=var1288, $r40=var391}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r13 := @this: com.mysql.cj.protocol.a.SqlDateValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.SqlDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 4: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 5: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 6: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 7: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 8: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 9: goto $r7 = new java.sql.Timestamp;     case 10: goto $r7 = new java.sql.Timestamp;     case 11: goto r3 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     default: goto $r31 = newarray (java.lang.Object)[2]; };	$r31 = newarray (java.lang.Object)[2];	$r32 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r33 = virtualinvoke $r32.<java.lang.Object: java.lang.Class getClass()>();	$r34 = virtualinvoke $r33.<java.lang.Class: java.lang.String getName()>();	$r31[0] = $r34;	$r35 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r36 = virtualinvoke $r35.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r31[1] = $r36;	$r38 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r31);	$r37 = r13.<com.mysql.cj.protocol.a.SqlDateValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r39 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r38, $r37);	$r40 = (com.mysql.cj.exceptions.WrongArgumentException) $r39;	throw $r40
;block_num 2