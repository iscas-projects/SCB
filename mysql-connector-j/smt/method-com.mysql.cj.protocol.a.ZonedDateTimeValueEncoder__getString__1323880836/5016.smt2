(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3832 0)
(declare-sort var2061 0)
(declare-sort var195 0)
(declare-sort var3282 0)
(declare-sort var1008 0)
(declare-sort var1290 0)
(declare-sort var504 0)
(declare-sort var3747 0)
(declare-sort var3480 0)
(declare-sort var325 0)
(declare-sort var3389 0)
(declare-sort var3338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3338!class ClassObject)
(declare-fun var2061_getMysqlType/-215853011 (var2061) var3282)
(declare-fun ordinal/-291641772 (var1008) Int)
(declare-fun cast-from-var3282-to-var1008 (var3282) var1008)
(declare-fun arr-var1290-init () (Array Int var1290))
(declare-fun var2061_getValue/1809189437 (var2061) var1290)
(declare-fun getClass/1258963082 (var1290) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var1290 (String) var1290)
(declare-fun toString/1761020461 (var1008) String)
(declare-fun var504_getString/1500902777 (String (Array Int var1290)) String)
(declare-fun exceptionInterceptor/-791602078 (var3480) var3747)
(declare-fun cast-from-var3832-to-var3480 (var3832) var3480)
(declare-fun var3389_createException/-988168188 (ClassObject String var3747) var325)
(declare-fun cast-from-var325-to-var3338 (var325) var3338)
(declare-const null-var3832 var3832)
(declare-const null-var2061 var2061)
(declare-const var195-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var1290__ (Array Int var1290))
(declare-const var1563 var3832) ; Statement: r5 := @this: com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder 
(assert (not (= var1563 null-var3832)))
(declare-const var3765 var2061) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3765 null-var2061)))
(define-const var1266 (Array Int Int) var195-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var2162 var3282 (var2061_getMysqlType/-215853011 var3765)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var421 Int (ordinal/-291641772 (cast-from-var3282-to-var1008 var2162))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2976 Int (select var1266 var421)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r50 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var2976 12)) (and (not (= var2976 11)) (and (not (= var2976 10)) (and (not (= var2976 9)) (and (not (= var2976 8)) (and (not (= var2976 7)) (and (not (= var2976 6)) (and (not (= var2976 5)) (and (not (= var2976 4)) (and (not (= var2976 3)) (and (not (= var2976 2)) (and (not (= var2976 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var1009 (Array Int var1290) arr-var1290-init) ; Statement: $r61 = newarray (java.lang.Object)[2] 
(define-const var23 var1290 (var2061_getValue/1809189437 var3765)) ; Statement: $r62 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var3905 ClassObject (getClass/1258963082 var23)) ; Statement: $r63 = virtualinvoke $r62.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var999 String (getName/-1958580599 var3905)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1009!1 (Array Int var1290))
(assert (not (= var1009!1 null-__Array__Int__var1290__)))
(assert (= (select var1009!1 0) (cast-from-String-to-var1290 var999))) ; Statement: $r61[0] = $r64 
(define-const var1342 var3282 (var2061_getMysqlType/-215853011 var3765)) ; Statement: $r65 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1933 String (toString/1761020461 (cast-from-var3282-to-var1008 var1342))) ; Statement: $r66 = virtualinvoke $r65.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var1009!2 (Array Int var1290))
(assert (not (= var1009!2 null-__Array__Int__var1290__)))
(assert (= (select var1009!2 1) (cast-from-String-to-var1290 var1933))) ; Statement: $r61[1] = $r66 
(define-const var993 String (var504_getString/1500902777 "PreparedStatement.67" var1009!2)) ; Statement: $r68 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r61) 
(define-const var2935 var3747 (exceptionInterceptor/-791602078 (cast-from-var3832-to-var3480 var1563))) ; Statement: $r67 = r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1374 var325 (var3389_createException/-988168188 var3338!class var993 var2935)) ; Statement: $r69 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r68, $r67) 
(define-const var3095 var3338 (cast-from-var325-to-var3338 var1374)) ; Statement: $r70 = (com.mysql.cj.exceptions.WrongArgumentException) $r69 
 ; Statement: throw $r70 
(check-sat)
(get-model)
(get-unsat-core)
; {var2061_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3282-to-var1008=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var1290-init=([], java.lang.Object[]), var2061_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var1290=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var504_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var3832-to-var3480=([com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var3389_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var325-to-var3338=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var3832=com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder, var1563=r5, var2061=com.mysql.cj.BindValue, var3765=r0, var195=com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1, var1266=$r1, var3282=com.mysql.cj.MysqlType, var2162=$r2, var1008=java.lang.Enum, var421=$i0, var2976=$i1, var1290=java.lang.Object, var1009=$r61, var23=$r62, var3905=$r63, var999=$r64, var1342=$r65, var1933=$r66, var504=com.mysql.cj.Messages, var993=$r68, var3747=com.mysql.cj.exceptions.ExceptionInterceptor, var3480=com.mysql.cj.protocol.a.AbstractValueEncoder, var2935=$r67, var325=com.mysql.cj.exceptions.CJException, var3389=com.mysql.cj.exceptions.ExceptionFactory, var3338=com.mysql.cj.exceptions.WrongArgumentException, var1374=$r69, var3095=$r70}
; {com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder=var3832, r5=var1563, com.mysql.cj.BindValue=var2061, r0=var3765, com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1=var195, $r1=var1266, com.mysql.cj.MysqlType=var3282, $r2=var2162, java.lang.Enum=var1008, $i0=var421, $i1=var2976, java.lang.Object=var1290, $r61=var1009, $r62=var23, $r63=var3905, $r64=var999, $r65=var1342, $r66=var1933, com.mysql.cj.Messages=var504, $r68=var993, com.mysql.cj.exceptions.ExceptionInterceptor=var3747, com.mysql.cj.protocol.a.AbstractValueEncoder=var3480, $r67=var2935, com.mysql.cj.exceptions.CJException=var325, com.mysql.cj.exceptions.ExceptionFactory=var3389, com.mysql.cj.exceptions.WrongArgumentException=var3338, $r69=var1374, $r70=var3095}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r5 := @this: com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r50 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; };	$r61 = newarray (java.lang.Object)[2];	$r62 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r63 = virtualinvoke $r62.<java.lang.Object: java.lang.Class getClass()>();	$r64 = virtualinvoke $r63.<java.lang.Class: java.lang.String getName()>();	$r61[0] = $r64;	$r65 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r66 = virtualinvoke $r65.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r61[1] = $r66;	$r68 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r61);	$r67 = r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r69 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r68, $r67);	$r70 = (com.mysql.cj.exceptions.WrongArgumentException) $r69;	throw $r70
;block_num 2