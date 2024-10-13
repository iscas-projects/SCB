(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1478 0)
(declare-sort var2583 0)
(declare-sort var1467 0)
(declare-sort var377 0)
(declare-sort var512 0)
(declare-sort var1479 0)
(declare-sort var2543 0)
(declare-sort var1378 0)
(declare-sort var757 0)
(declare-sort var3622 0)
(declare-sort var3350 0)
(declare-sort var2792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2792!class ClassObject)
(declare-fun var2583_getMysqlType/-215853011 (var2583) var377)
(declare-fun ordinal/-291641772 (var512) Int)
(declare-fun cast-from-var377-to-var512 (var377) var512)
(declare-fun arr-var1479-init () (Array Int var1479))
(declare-fun var2583_getValue/1809189437 (var2583) var1479)
(declare-fun getClass/1258963082 (var1479) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var1479 (String) var1479)
(declare-fun toString/1761020461 (var512) String)
(declare-fun var2543_getString/1500902777 (String (Array Int var1479)) String)
(declare-fun exceptionInterceptor/-791602078 (var757) var1378)
(declare-fun cast-from-var1478-to-var757 (var1478) var757)
(declare-fun var3350_createException/-988168188 (ClassObject String var1378) var3622)
(declare-fun cast-from-var3622-to-var2792 (var3622) var2792)
(declare-const null-var1478 var1478)
(declare-const null-var2583 var2583)
(declare-const var1467-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var1479__ (Array Int var1479))
(declare-const var746 var1478) ; Statement: r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder 
(assert (not (= var746 null-var1478)))
(declare-const var1208 var2583) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1208 null-var2583)))
(define-const var879 (Array Int Int) var1467-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3182 var377 (var2583_getMysqlType/-215853011 var1208)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var14 Int (ordinal/-291641772 (cast-from-var377-to-var512 var3182))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3462 Int (select var879 var14)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var3462 11)) (and (not (= var3462 10)) (and (not (= var3462 9)) (and (not (= var3462 8)) (and (not (= var3462 7)) (and (not (= var3462 6)) (and (not (= var3462 5)) (and (not (= var3462 4)) (and (not (= var3462 3)) (and (not (= var3462 2)) (and (not (= var3462 1)) true)))))))))))) ; Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(define-const var2716 (Array Int var1479) arr-var1479-init) ; Statement: $r24 = newarray (java.lang.Object)[2] 
(define-const var3778 var1479 (var2583_getValue/1809189437 var1208)) ; Statement: $r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var3190 ClassObject (getClass/1258963082 var3778)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2287 String (getName/-1958580599 var3190)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2716!1 (Array Int var1479))
(assert (not (= var2716!1 null-__Array__Int__var1479__)))
(assert (= (select var2716!1 0) (cast-from-String-to-var1479 var2287))) ; Statement: $r24[0] = $r27 
(define-const var3216 var377 (var2583_getMysqlType/-215853011 var1208)) ; Statement: $r28 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var844 String (toString/1761020461 (cast-from-var377-to-var512 var3216))) ; Statement: $r29 = virtualinvoke $r28.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var2716!2 (Array Int var1479))
(assert (not (= var2716!2 null-__Array__Int__var1479__)))
(assert (= (select var2716!2 1) (cast-from-String-to-var1479 var844))) ; Statement: $r24[1] = $r29 
(define-const var1631 String (var2543_getString/1500902777 "PreparedStatement.67" var2716!2)) ; Statement: $r32 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r24) 
(define-const var518 var1378 (exceptionInterceptor/-791602078 (cast-from-var1478-to-var757 var746))) ; Statement: $r31 = r30.<com.mysql.cj.protocol.a.LocalDateValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1412 var3622 (var3350_createException/-988168188 var2792!class var1631 var518)) ; Statement: $r33 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r32, $r31) 
(define-const var1787 var2792 (cast-from-var3622-to-var2792 var1412)) ; Statement: $r34 = (com.mysql.cj.exceptions.WrongArgumentException) $r33 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var2583_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var377-to-var512=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var1479-init=([], java.lang.Object[]), var2583_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var1479=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var2543_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var1478-to-var757=([com.mysql.cj.protocol.a.LocalDateValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var3350_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var3622-to-var2792=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var1478=com.mysql.cj.protocol.a.LocalDateValueEncoder, var746=r30, var2583=com.mysql.cj.BindValue, var1208=r0, var1467=com.mysql.cj.protocol.a.LocalDateValueEncoder$1, var879=$r1, var377=com.mysql.cj.MysqlType, var3182=$r2, var512=java.lang.Enum, var14=$i0, var3462=$i1, var1479=java.lang.Object, var2716=$r24, var3778=$r25, var3190=$r26, var2287=$r27, var3216=$r28, var844=$r29, var2543=com.mysql.cj.Messages, var1631=$r32, var1378=com.mysql.cj.exceptions.ExceptionInterceptor, var757=com.mysql.cj.protocol.a.AbstractValueEncoder, var518=$r31, var3622=com.mysql.cj.exceptions.CJException, var3350=com.mysql.cj.exceptions.ExceptionFactory, var2792=com.mysql.cj.exceptions.WrongArgumentException, var1412=$r33, var1787=$r34}
; {com.mysql.cj.protocol.a.LocalDateValueEncoder=var1478, r30=var746, com.mysql.cj.BindValue=var2583, r0=var1208, com.mysql.cj.protocol.a.LocalDateValueEncoder$1=var1467, $r1=var879, com.mysql.cj.MysqlType=var377, $r2=var3182, java.lang.Enum=var512, $i0=var14, $i1=var3462, java.lang.Object=var1479, $r24=var2716, $r25=var3778, $r26=var3190, $r27=var2287, $r28=var3216, $r29=var844, com.mysql.cj.Messages=var2543, $r32=var1631, com.mysql.cj.exceptions.ExceptionInterceptor=var1378, com.mysql.cj.protocol.a.AbstractValueEncoder=var757, $r31=var518, com.mysql.cj.exceptions.CJException=var3622, com.mysql.cj.exceptions.ExceptionFactory=var3350, com.mysql.cj.exceptions.WrongArgumentException=var2792, $r33=var1412, $r34=var1787}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; };	$r24 = newarray (java.lang.Object)[2];	$r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r26 = virtualinvoke $r25.<java.lang.Object: java.lang.Class getClass()>();	$r27 = virtualinvoke $r26.<java.lang.Class: java.lang.String getName()>();	$r24[0] = $r27;	$r28 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r29 = virtualinvoke $r28.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r24[1] = $r29;	$r32 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r24);	$r31 = r30.<com.mysql.cj.protocol.a.LocalDateValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r33 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r32, $r31);	$r34 = (com.mysql.cj.exceptions.WrongArgumentException) $r33;	throw $r34
;block_num 2