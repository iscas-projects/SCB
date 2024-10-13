(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1364 0)
(declare-sort var92 0)
(declare-sort var360 0)
(declare-sort var2006 0)
(declare-sort var1913 0)
(declare-sort var2504 0)
(declare-sort var259 0)
(declare-sort var3515 0)
(declare-sort var1470 0)
(declare-sort var1404 0)
(declare-sort var2290 0)
(declare-sort var332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var332!class ClassObject)
(declare-fun var92_getMysqlType/-215853011 (var92) var2006)
(declare-fun ordinal/-291641772 (var1913) Int)
(declare-fun cast-from-var2006-to-var1913 (var2006) var1913)
(declare-fun arr-var2504-init () (Array Int var2504))
(declare-fun var92_getValue/1809189437 (var92) var2504)
(declare-fun getClass/1258963082 (var2504) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2504 (String) var2504)
(declare-fun toString/1761020461 (var1913) String)
(declare-fun var259_getString/1500902777 (String (Array Int var2504)) String)
(declare-fun exceptionInterceptor/-791602078 (var1470) var3515)
(declare-fun cast-from-var1364-to-var1470 (var1364) var1470)
(declare-fun var2290_createException/-988168188 (ClassObject String var3515) var1404)
(declare-fun cast-from-var1404-to-var332 (var1404) var332)
(declare-const null-var1364 var1364)
(declare-const null-var92 var92)
(declare-const var360-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var2504__ (Array Int var2504))
(declare-const var1140 var1364) ; Statement: r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder 
(assert (not (= var1140 null-var1364)))
(declare-const var1592 var92) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1592 null-var92)))
(define-const var1659 (Array Int Int) var360-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1767 var2006 (var92_getMysqlType/-215853011 var1592)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3773 Int (ordinal/-291641772 (cast-from-var2006-to-var1913 var1767))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1734 Int (select var1659 var3773)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var1734 12)) (and (not (= var1734 11)) (and (not (= var1734 10)) (and (not (= var1734 9)) (and (not (= var1734 8)) (and (not (= var1734 7)) (and (not (= var1734 6)) (and (not (= var1734 5)) (and (not (= var1734 4)) (and (not (= var1734 3)) (and (not (= var1734 2)) (and (not (= var1734 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var3127 (Array Int var2504) arr-var2504-init) ; Statement: $r47 = newarray (java.lang.Object)[2] 
(define-const var3675 var2504 (var92_getValue/1809189437 var1592)) ; Statement: $r48 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var1522 ClassObject (getClass/1258963082 var3675)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var688 String (getName/-1958580599 var1522)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.Class: java.lang.String getName()>() 
(declare-const var3127!1 (Array Int var2504))
(assert (not (= var3127!1 null-__Array__Int__var2504__)))
(assert (= (select var3127!1 0) (cast-from-String-to-var2504 var688))) ; Statement: $r47[0] = $r50 
(define-const var2458 var2006 (var92_getMysqlType/-215853011 var1592)) ; Statement: $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3074 String (toString/1761020461 (cast-from-var2006-to-var1913 var2458))) ; Statement: $r52 = virtualinvoke $r51.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var3127!2 (Array Int var2504))
(assert (not (= var3127!2 null-__Array__Int__var2504__)))
(assert (= (select var3127!2 1) (cast-from-String-to-var2504 var3074))) ; Statement: $r47[1] = $r52 
(define-const var595 String (var259_getString/1500902777 "PreparedStatement.67" var3127!2)) ; Statement: $r54 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r47) 
(define-const var1779 var3515 (exceptionInterceptor/-791602078 (cast-from-var1364-to-var1470 var1140))) ; Statement: $r53 = r5.<com.mysql.cj.protocol.a.LocalDateTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var3939 var1404 (var2290_createException/-988168188 var332!class var595 var1779)) ; Statement: $r55 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r54, $r53) 
(define-const var2870 var332 (cast-from-var1404-to-var332 var3939)) ; Statement: $r56 = (com.mysql.cj.exceptions.WrongArgumentException) $r55 
 ; Statement: throw $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {var92_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2006-to-var1913=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var2504-init=([], java.lang.Object[]), var92_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2504=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var259_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var1364-to-var1470=([com.mysql.cj.protocol.a.LocalDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var2290_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var1404-to-var332=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var1364=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder, var1140=r5, var92=com.mysql.cj.BindValue, var1592=r0, var360=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1, var1659=$r1, var2006=com.mysql.cj.MysqlType, var1767=$r2, var1913=java.lang.Enum, var3773=$i0, var1734=$i1, var2504=java.lang.Object, var3127=$r47, var3675=$r48, var1522=$r49, var688=$r50, var2458=$r51, var3074=$r52, var259=com.mysql.cj.Messages, var595=$r54, var3515=com.mysql.cj.exceptions.ExceptionInterceptor, var1470=com.mysql.cj.protocol.a.AbstractValueEncoder, var1779=$r53, var1404=com.mysql.cj.exceptions.CJException, var2290=com.mysql.cj.exceptions.ExceptionFactory, var332=com.mysql.cj.exceptions.WrongArgumentException, var3939=$r55, var2870=$r56}
; {com.mysql.cj.protocol.a.LocalDateTimeValueEncoder=var1364, r5=var1140, com.mysql.cj.BindValue=var92, r0=var1592, com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1=var360, $r1=var1659, com.mysql.cj.MysqlType=var2006, $r2=var1767, java.lang.Enum=var1913, $i0=var3773, $i1=var1734, java.lang.Object=var2504, $r47=var3127, $r48=var3675, $r49=var1522, $r50=var688, $r51=var2458, $r52=var3074, com.mysql.cj.Messages=var259, $r54=var595, com.mysql.cj.exceptions.ExceptionInterceptor=var3515, com.mysql.cj.protocol.a.AbstractValueEncoder=var1470, $r53=var1779, com.mysql.cj.exceptions.CJException=var1404, com.mysql.cj.exceptions.ExceptionFactory=var2290, com.mysql.cj.exceptions.WrongArgumentException=var332, $r55=var3939, $r56=var2870}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; };	$r47 = newarray (java.lang.Object)[2];	$r48 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r49 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>();	$r50 = virtualinvoke $r49.<java.lang.Class: java.lang.String getName()>();	$r47[0] = $r50;	$r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r52 = virtualinvoke $r51.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r47[1] = $r52;	$r54 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r47);	$r53 = r5.<com.mysql.cj.protocol.a.LocalDateTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r55 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r54, $r53);	$r56 = (com.mysql.cj.exceptions.WrongArgumentException) $r55;	throw $r56
;block_num 2