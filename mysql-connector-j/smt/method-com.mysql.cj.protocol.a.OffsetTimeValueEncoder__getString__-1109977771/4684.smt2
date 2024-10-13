(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1993 0)
(declare-sort var592 0)
(declare-sort var364 0)
(declare-sort var3038 0)
(declare-sort var2371 0)
(declare-sort var1508 0)
(declare-sort var3824 0)
(declare-sort var2790 0)
(declare-sort var2992 0)
(declare-sort var636 0)
(declare-sort var1321 0)
(declare-sort var2983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2983!class ClassObject)
(declare-fun var592_getMysqlType/-215853011 (var592) var3038)
(declare-fun ordinal/-291641772 (var2371) Int)
(declare-fun cast-from-var3038-to-var2371 (var3038) var2371)
(declare-fun arr-var1508-init () (Array Int var1508))
(declare-fun var592_getValue/1809189437 (var592) var1508)
(declare-fun getClass/1258963082 (var1508) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var1508 (String) var1508)
(declare-fun toString/1761020461 (var2371) String)
(declare-fun var3824_getString/1500902777 (String (Array Int var1508)) String)
(declare-fun exceptionInterceptor/-791602078 (var2992) var2790)
(declare-fun cast-from-var1993-to-var2992 (var1993) var2992)
(declare-fun var1321_createException/-988168188 (ClassObject String var2790) var636)
(declare-fun cast-from-var636-to-var2983 (var636) var2983)
(declare-const null-var1993 var1993)
(declare-const null-var592 var592)
(declare-const var364-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var1508__ (Array Int var1508))
(declare-const var72 var1993) ; Statement: r5 := @this: com.mysql.cj.protocol.a.OffsetTimeValueEncoder 
(assert (not (= var72 null-var1993)))
(declare-const var1336 var592) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1336 null-var592)))
(define-const var167 (Array Int Int) var364-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.OffsetTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1868 var3038 (var592_getMysqlType/-215853011 var1336)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1210 Int (ordinal/-291641772 (cast-from-var3038-to-var2371 var1868))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var901 Int (select var167 var1210)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r11 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var901 8)) (and (not (= var901 7)) (and (not (= var901 6)) (and (not (= var901 5)) (and (not (= var901 4)) (and (not (= var901 3)) (and (not (= var901 2)) (and (not (= var901 1)) true))))))))) ; Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional        
(define-const var1771 (Array Int var1508) arr-var1508-init) ; Statement: $r24 = newarray (java.lang.Object)[2] 
(define-const var208 var1508 (var592_getValue/1809189437 var1336)) ; Statement: $r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var2690 ClassObject (getClass/1258963082 var208)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2879 String (getName/-1958580599 var2690)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1771!1 (Array Int var1508))
(assert (not (= var1771!1 null-__Array__Int__var1508__)))
(assert (= (select var1771!1 0) (cast-from-String-to-var1508 var2879))) ; Statement: $r24[0] = $r27 
(define-const var1591 var3038 (var592_getMysqlType/-215853011 var1336)) ; Statement: $r28 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var104 String (toString/1761020461 (cast-from-var3038-to-var2371 var1591))) ; Statement: $r29 = virtualinvoke $r28.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var1771!2 (Array Int var1508))
(assert (not (= var1771!2 null-__Array__Int__var1508__)))
(assert (= (select var1771!2 1) (cast-from-String-to-var1508 var104))) ; Statement: $r24[1] = $r29 
(define-const var2591 String (var3824_getString/1500902777 "PreparedStatement.67" var1771!2)) ; Statement: $r31 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r24) 
(define-const var2429 var2790 (exceptionInterceptor/-791602078 (cast-from-var1993-to-var2992 var72))) ; Statement: $r30 = r5.<com.mysql.cj.protocol.a.OffsetTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1426 var636 (var1321_createException/-988168188 var2983!class var2591 var2429)) ; Statement: $r32 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r31, $r30) 
(define-const var162 var2983 (cast-from-var636-to-var2983 var1426)) ; Statement: $r33 = (com.mysql.cj.exceptions.WrongArgumentException) $r32 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var592_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3038-to-var2371=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var1508-init=([], java.lang.Object[]), var592_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var1508=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var3824_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var1993-to-var2992=([com.mysql.cj.protocol.a.OffsetTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var1321_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var636-to-var2983=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var1993=com.mysql.cj.protocol.a.OffsetTimeValueEncoder, var72=r5, var592=com.mysql.cj.BindValue, var1336=r0, var364=com.mysql.cj.protocol.a.OffsetTimeValueEncoder$1, var167=$r1, var3038=com.mysql.cj.MysqlType, var1868=$r2, var2371=java.lang.Enum, var1210=$i0, var901=$i1, var1508=java.lang.Object, var1771=$r24, var208=$r25, var2690=$r26, var2879=$r27, var1591=$r28, var104=$r29, var3824=com.mysql.cj.Messages, var2591=$r31, var2790=com.mysql.cj.exceptions.ExceptionInterceptor, var2992=com.mysql.cj.protocol.a.AbstractValueEncoder, var2429=$r30, var636=com.mysql.cj.exceptions.CJException, var1321=com.mysql.cj.exceptions.ExceptionFactory, var2983=com.mysql.cj.exceptions.WrongArgumentException, var1426=$r32, var162=$r33}
; {com.mysql.cj.protocol.a.OffsetTimeValueEncoder=var1993, r5=var72, com.mysql.cj.BindValue=var592, r0=var1336, com.mysql.cj.protocol.a.OffsetTimeValueEncoder$1=var364, $r1=var167, com.mysql.cj.MysqlType=var3038, $r2=var1868, java.lang.Enum=var2371, $i0=var1210, $i1=var901, java.lang.Object=var1508, $r24=var1771, $r25=var208, $r26=var2690, $r27=var2879, $r28=var1591, $r29=var104, com.mysql.cj.Messages=var3824, $r31=var2591, com.mysql.cj.exceptions.ExceptionInterceptor=var2790, com.mysql.cj.protocol.a.AbstractValueEncoder=var2992, $r30=var2429, com.mysql.cj.exceptions.CJException=var636, com.mysql.cj.exceptions.ExceptionFactory=var1321, com.mysql.cj.exceptions.WrongArgumentException=var2983, $r32=var1426, $r33=var162}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r5 := @this: com.mysql.cj.protocol.a.OffsetTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.OffsetTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r11 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; };	$r24 = newarray (java.lang.Object)[2];	$r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r26 = virtualinvoke $r25.<java.lang.Object: java.lang.Class getClass()>();	$r27 = virtualinvoke $r26.<java.lang.Class: java.lang.String getName()>();	$r24[0] = $r27;	$r28 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r29 = virtualinvoke $r28.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r24[1] = $r29;	$r31 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r24);	$r30 = r5.<com.mysql.cj.protocol.a.OffsetTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r32 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r31, $r30);	$r33 = (com.mysql.cj.exceptions.WrongArgumentException) $r32;	throw $r33
;block_num 2