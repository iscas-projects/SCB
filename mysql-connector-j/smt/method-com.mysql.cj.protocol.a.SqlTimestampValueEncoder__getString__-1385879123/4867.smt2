(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3081 0)
(declare-sort var467 0)
(declare-sort var2056 0)
(declare-sort var2649 0)
(declare-sort var2380 0)
(declare-sort var840 0)
(declare-sort var2666 0)
(declare-sort var985 0)
(declare-sort var2737 0)
(declare-sort var963 0)
(declare-sort var760 0)
(declare-sort var61 0)
(declare-sort var2244 0)
(declare-sort var2552 0)
(declare-sort var2186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2186!class ClassObject)
(declare-fun var467_getValue/1809189437 (var467) var2056)
(declare-fun cast-from-var2056-to-var2649 (var2056) var2649)
(declare-fun clone/-229247619 (var2380) var2056)
(declare-fun cast-from-var2649-to-var2380 (var2649) var2380)
(declare-fun var467_getField/-416441240 (var467) var840)
(declare-fun var467_keepOrigNanos/-1228352316 (var467) Bool)
(declare-fun adjustTimestamp/-1797346727 (var2666 var2649 var840 Bool) var2649)
(declare-fun cast-from-var3081-to-var2666 (var3081) var2666)
(declare-fun var467_getMysqlType/-215853011 (var467) var2737)
(declare-fun ordinal/-291641772 (var963) Int)
(declare-fun cast-from-var2737-to-var963 (var2737) var963)
(declare-fun arr-var2056-init () (Array Int var2056))
(declare-fun getClass/1258963082 (var2056) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2056 (String) var2056)
(declare-fun toString/1761020461 (var963) String)
(declare-fun var760_getString/1500902777 (String (Array Int var2056)) String)
(declare-fun exceptionInterceptor/-791602078 (var2666) var61)
(declare-fun var2552_createException/-988168188 (ClassObject String var61) var2244)
(declare-fun cast-from-var2244-to-var2186 (var2244) var2186)
(declare-const null-var3081 var3081)
(declare-const null-var467 var467)
(declare-const var985-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var2056__ (Array Int var2056))
(declare-const var3308 var3081) ; Statement: r0 := @this: com.mysql.cj.protocol.a.SqlTimestampValueEncoder 
(assert (not (= var3308 null-var3081)))
(declare-const var556 var467) ; Statement: r1 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var556 null-var467)))
(define-const var1132 var2056 (var467_getValue/1809189437 var556)) ; Statement: $r2 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1122 var2649 (cast-from-var2056-to-var2649 var1132)) ; Statement: $r3 = (java.sql.Timestamp) $r2 
(assert true)
(define-const var1110 var2056 (clone/-229247619 (cast-from-var2649-to-var2380 var1122))) ; Statement: $r4 = virtualinvoke $r3.<java.sql.Timestamp: java.lang.Object clone()>() 
(define-const var1815 var2649 (cast-from-var2056-to-var2649 var1110)) ; Statement: $r6 = (java.sql.Timestamp) $r4 
(define-const var127 var840 (var467_getField/-416441240 var556)) ; Statement: $r5 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(define-const var1407 Bool (var467_keepOrigNanos/-1228352316 var556)) ; Statement: $z0 = interfaceinvoke r1.<com.mysql.cj.BindValue: boolean keepOrigNanos()>() 
(assert true)
(define-const var3253 var2649 (adjustTimestamp/-1797346727 (cast-from-var3081-to-var2666 var3308) var1815 var127 var1407)) ; Statement: r7 = virtualinvoke r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: java.sql.Timestamp adjustTimestamp(java.sql.Timestamp,com.mysql.cj.result.Field,boolean)>($r6, $r5, $z0) 
(define-const var1230 (Array Int Int) var985-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r8 = <com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3674 var2737 (var467_getMysqlType/-215853011 var556)) ; Statement: $r9 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3895 Int (ordinal/-291641772 (cast-from-var2737-to-var963 var3674))) ; Statement: $i0 = virtualinvoke $r9.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2707 Int (select var1230 var3895)) ; Statement: $i1 = $r8[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r37 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r24 = new java.lang.StringBuilder;     case 4: goto $r24 = new java.lang.StringBuilder;     case 5: goto $r24 = new java.lang.StringBuilder;     case 6: goto $r24 = new java.lang.StringBuilder;     case 7: goto $r24 = new java.lang.StringBuilder;     case 8: goto $r24 = new java.lang.StringBuilder;     case 9: goto $r24 = new java.lang.StringBuilder;     case 10: goto $r24 = new java.lang.StringBuilder;     case 11: goto r20 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     case 12: goto $r10 = new java.lang.StringBuilder;     default: goto $r49 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var2707 12)) (and (not (= var2707 11)) (and (not (= var2707 10)) (and (not (= var2707 9)) (and (not (= var2707 8)) (and (not (= var2707 7)) (and (not (= var2707 6)) (and (not (= var2707 5)) (and (not (= var2707 4)) (and (not (= var2707 3)) (and (not (= var2707 2)) (and (not (= var2707 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var3604 (Array Int var2056) arr-var2056-init) ; Statement: $r49 = newarray (java.lang.Object)[2] 
(define-const var2884 var2056 (var467_getValue/1809189437 var556)) ; Statement: $r50 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var1855 ClassObject (getClass/1258963082 var2884)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2556 String (getName/-1958580599 var1855)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Class: java.lang.String getName()>() 
(declare-const var3604!1 (Array Int var2056))
(assert (not (= var3604!1 null-__Array__Int__var2056__)))
(assert (= (select var3604!1 0) (cast-from-String-to-var2056 var2556))) ; Statement: $r49[0] = $r52 
(define-const var2041 var2737 (var467_getMysqlType/-215853011 var556)) ; Statement: $r53 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1653 String (toString/1761020461 (cast-from-var2737-to-var963 var2041))) ; Statement: $r54 = virtualinvoke $r53.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var3604!2 (Array Int var2056))
(assert (not (= var3604!2 null-__Array__Int__var2056__)))
(assert (= (select var3604!2 1) (cast-from-String-to-var2056 var1653))) ; Statement: $r49[1] = $r54 
(define-const var3523 String (var760_getString/1500902777 "PreparedStatement.67" var3604!2)) ; Statement: $r56 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r49) 
(define-const var3960 var61 (exceptionInterceptor/-791602078 (cast-from-var3081-to-var2666 var3308))) ; Statement: $r55 = r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1934 var2244 (var2552_createException/-988168188 var2186!class var3523 var3960)) ; Statement: $r57 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r56, $r55) 
(define-const var1835 var2186 (cast-from-var2244-to-var2186 var1934)) ; Statement: $r58 = (com.mysql.cj.exceptions.WrongArgumentException) $r57 
 ; Statement: throw $r58 
(check-sat)
(get-model)
(get-unsat-core)
; {var467_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2056-to-var2649=([java.lang.Object], java.sql.Timestamp), clone/-229247619=([java.util.Date], java.lang.Object), cast-from-var2649-to-var2380=([java.sql.Timestamp], java.util.Date), var467_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), var467_keepOrigNanos/-1228352316=([com.mysql.cj.BindValue], boolean), adjustTimestamp/-1797346727=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.sql.Timestamp, com.mysql.cj.result.Field, boolean], java.sql.Timestamp), cast-from-var3081-to-var2666=([com.mysql.cj.protocol.a.SqlTimestampValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var467_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2737-to-var963=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var2056-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2056=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var760_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), var2552_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var2244-to-var2186=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var3081=com.mysql.cj.protocol.a.SqlTimestampValueEncoder, var3308=r0, var467=com.mysql.cj.BindValue, var556=r1, var2056=java.lang.Object, var1132=$r2, var2649=java.sql.Timestamp, var1122=$r3, var2380=java.util.Date, var1110=$r4, var1815=$r6, var840=com.mysql.cj.result.Field, var127=$r5, var1407=$z0, var2666=com.mysql.cj.protocol.a.AbstractValueEncoder, var3253=r7, var985=com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1, var1230=$r8, var2737=com.mysql.cj.MysqlType, var3674=$r9, var963=java.lang.Enum, var3895=$i0, var2707=$i1, var3604=$r49, var2884=$r50, var1855=$r51, var2556=$r52, var2041=$r53, var1653=$r54, var760=com.mysql.cj.Messages, var3523=$r56, var61=com.mysql.cj.exceptions.ExceptionInterceptor, var3960=$r55, var2244=com.mysql.cj.exceptions.CJException, var2552=com.mysql.cj.exceptions.ExceptionFactory, var2186=com.mysql.cj.exceptions.WrongArgumentException, var1934=$r57, var1835=$r58}
; {com.mysql.cj.protocol.a.SqlTimestampValueEncoder=var3081, r0=var3308, com.mysql.cj.BindValue=var467, r1=var556, java.lang.Object=var2056, $r2=var1132, java.sql.Timestamp=var2649, $r3=var1122, java.util.Date=var2380, $r4=var1110, $r6=var1815, com.mysql.cj.result.Field=var840, $r5=var127, $z0=var1407, com.mysql.cj.protocol.a.AbstractValueEncoder=var2666, r7=var3253, com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1=var985, $r8=var1230, com.mysql.cj.MysqlType=var2737, $r9=var3674, java.lang.Enum=var963, $i0=var3895, $i1=var2707, $r49=var3604, $r50=var2884, $r51=var1855, $r52=var2556, $r53=var2041, $r54=var1653, com.mysql.cj.Messages=var760, $r56=var3523, com.mysql.cj.exceptions.ExceptionInterceptor=var61, $r55=var3960, com.mysql.cj.exceptions.CJException=var2244, com.mysql.cj.exceptions.ExceptionFactory=var2552, com.mysql.cj.exceptions.WrongArgumentException=var2186, $r57=var1934, $r58=var1835}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.SqlTimestampValueEncoder;	r1 := @parameter0: com.mysql.cj.BindValue;	$r2 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r3 = (java.sql.Timestamp) $r2;	$r4 = virtualinvoke $r3.<java.sql.Timestamp: java.lang.Object clone()>();	$r6 = (java.sql.Timestamp) $r4;	$r5 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$z0 = interfaceinvoke r1.<com.mysql.cj.BindValue: boolean keepOrigNanos()>();	r7 = virtualinvoke r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: java.sql.Timestamp adjustTimestamp(java.sql.Timestamp,com.mysql.cj.result.Field,boolean)>($r6, $r5, $z0);	$r8 = <com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r9 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r9.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r8[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r37 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r24 = new java.lang.StringBuilder;     case 4: goto $r24 = new java.lang.StringBuilder;     case 5: goto $r24 = new java.lang.StringBuilder;     case 6: goto $r24 = new java.lang.StringBuilder;     case 7: goto $r24 = new java.lang.StringBuilder;     case 8: goto $r24 = new java.lang.StringBuilder;     case 9: goto $r24 = new java.lang.StringBuilder;     case 10: goto $r24 = new java.lang.StringBuilder;     case 11: goto r20 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     case 12: goto $r10 = new java.lang.StringBuilder;     default: goto $r49 = newarray (java.lang.Object)[2]; };	$r49 = newarray (java.lang.Object)[2];	$r50 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r51 = virtualinvoke $r50.<java.lang.Object: java.lang.Class getClass()>();	$r52 = virtualinvoke $r51.<java.lang.Class: java.lang.String getName()>();	$r49[0] = $r52;	$r53 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r54 = virtualinvoke $r53.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r49[1] = $r54;	$r56 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r49);	$r55 = r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r57 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r56, $r55);	$r58 = (com.mysql.cj.exceptions.WrongArgumentException) $r57;	throw $r58
;block_num 2