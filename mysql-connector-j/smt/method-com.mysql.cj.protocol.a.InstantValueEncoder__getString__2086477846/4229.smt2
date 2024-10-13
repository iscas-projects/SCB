(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3834 0)
(declare-sort var2330 0)
(declare-sort var3045 0)
(declare-sort var1095 0)
(declare-sort var1708 0)
(declare-sort var2169 0)
(declare-sort var3715 0)
(declare-sort var1209 0)
(declare-sort var2690 0)
(declare-sort var2990 0)
(declare-sort var1164 0)
(declare-sort var1475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1475!class ClassObject)
(declare-fun var2330_getMysqlType/-215853011 (var2330) var1095)
(declare-fun ordinal/-291641772 (var1708) Int)
(declare-fun cast-from-var1095-to-var1708 (var1095) var1708)
(declare-fun arr-var2169-init () (Array Int var2169))
(declare-fun var2330_getValue/1809189437 (var2330) var2169)
(declare-fun getClass/1258963082 (var2169) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2169 (String) var2169)
(declare-fun toString/1761020461 (var1708) String)
(declare-fun var3715_getString/1500902777 (String (Array Int var2169)) String)
(declare-fun exceptionInterceptor/-791602078 (var2690) var1209)
(declare-fun cast-from-var3834-to-var2690 (var3834) var2690)
(declare-fun var1164_createException/-988168188 (ClassObject String var1209) var2990)
(declare-fun cast-from-var2990-to-var1475 (var2990) var1475)
(declare-const null-var3834 var3834)
(declare-const null-var2330 var2330)
(declare-const var3045-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var2169__ (Array Int var2169))
(declare-const var166 var3834) ; Statement: r7 := @this: com.mysql.cj.protocol.a.InstantValueEncoder 
(assert (not (= var166 null-var3834)))
(declare-const var512 var2330) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var512 null-var2330)))
(define-const var2228 (Array Int Int) var3045-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.InstantValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3982 var1095 (var2330_getMysqlType/-215853011 var512)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var889 Int (ordinal/-291641772 (cast-from-var1095-to-var1708 var3982))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1508 Int (select var2228 var889)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r58 = new java.lang.StringBuilder;     case 3: goto $r43 = new java.lang.StringBuilder;     case 4: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r71 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var1508 12)) (and (not (= var1508 11)) (and (not (= var1508 10)) (and (not (= var1508 9)) (and (not (= var1508 8)) (and (not (= var1508 7)) (and (not (= var1508 6)) (and (not (= var1508 5)) (and (not (= var1508 4)) (and (not (= var1508 3)) (and (not (= var1508 2)) (and (not (= var1508 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var2832 (Array Int var2169) arr-var2169-init) ; Statement: $r71 = newarray (java.lang.Object)[2] 
(define-const var1974 var2169 (var2330_getValue/1809189437 var512)) ; Statement: $r72 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var1775 ClassObject (getClass/1258963082 var1974)) ; Statement: $r73 = virtualinvoke $r72.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2973 String (getName/-1958580599 var1775)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2832!1 (Array Int var2169))
(assert (not (= var2832!1 null-__Array__Int__var2169__)))
(assert (= (select var2832!1 0) (cast-from-String-to-var2169 var2973))) ; Statement: $r71[0] = $r74 
(define-const var2444 var1095 (var2330_getMysqlType/-215853011 var512)) ; Statement: $r75 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3027 String (toString/1761020461 (cast-from-var1095-to-var1708 var2444))) ; Statement: $r76 = virtualinvoke $r75.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var2832!2 (Array Int var2169))
(assert (not (= var2832!2 null-__Array__Int__var2169__)))
(assert (= (select var2832!2 1) (cast-from-String-to-var2169 var3027))) ; Statement: $r71[1] = $r76 
(define-const var1695 String (var3715_getString/1500902777 "PreparedStatement.67" var2832!2)) ; Statement: $r78 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r71) 
(define-const var951 var1209 (exceptionInterceptor/-791602078 (cast-from-var3834-to-var2690 var166))) ; Statement: $r77 = r7.<com.mysql.cj.protocol.a.InstantValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var2070 var2990 (var1164_createException/-988168188 var1475!class var1695 var951)) ; Statement: $r79 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r78, $r77) 
(define-const var2568 var1475 (cast-from-var2990-to-var1475 var2070)) ; Statement: $r80 = (com.mysql.cj.exceptions.WrongArgumentException) $r79 
 ; Statement: throw $r80 
(check-sat)
(get-model)
(get-unsat-core)
; {var2330_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1095-to-var1708=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var2169-init=([], java.lang.Object[]), var2330_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2169=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var3715_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var3834-to-var2690=([com.mysql.cj.protocol.a.InstantValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var1164_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var2990-to-var1475=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var3834=com.mysql.cj.protocol.a.InstantValueEncoder, var166=r7, var2330=com.mysql.cj.BindValue, var512=r0, var3045=com.mysql.cj.protocol.a.InstantValueEncoder$1, var2228=$r1, var1095=com.mysql.cj.MysqlType, var3982=$r2, var1708=java.lang.Enum, var889=$i0, var1508=$i1, var2169=java.lang.Object, var2832=$r71, var1974=$r72, var1775=$r73, var2973=$r74, var2444=$r75, var3027=$r76, var3715=com.mysql.cj.Messages, var1695=$r78, var1209=com.mysql.cj.exceptions.ExceptionInterceptor, var2690=com.mysql.cj.protocol.a.AbstractValueEncoder, var951=$r77, var2990=com.mysql.cj.exceptions.CJException, var1164=com.mysql.cj.exceptions.ExceptionFactory, var1475=com.mysql.cj.exceptions.WrongArgumentException, var2070=$r79, var2568=$r80}
; {com.mysql.cj.protocol.a.InstantValueEncoder=var3834, r7=var166, com.mysql.cj.BindValue=var2330, r0=var512, com.mysql.cj.protocol.a.InstantValueEncoder$1=var3045, $r1=var2228, com.mysql.cj.MysqlType=var1095, $r2=var3982, java.lang.Enum=var1708, $i0=var889, $i1=var1508, java.lang.Object=var2169, $r71=var2832, $r72=var1974, $r73=var1775, $r74=var2973, $r75=var2444, $r76=var3027, com.mysql.cj.Messages=var3715, $r78=var1695, com.mysql.cj.exceptions.ExceptionInterceptor=var1209, com.mysql.cj.protocol.a.AbstractValueEncoder=var2690, $r77=var951, com.mysql.cj.exceptions.CJException=var2990, com.mysql.cj.exceptions.ExceptionFactory=var1164, com.mysql.cj.exceptions.WrongArgumentException=var1475, $r79=var2070, $r80=var2568}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r7 := @this: com.mysql.cj.protocol.a.InstantValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.InstantValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r58 = new java.lang.StringBuilder;     case 3: goto $r43 = new java.lang.StringBuilder;     case 4: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r71 = newarray (java.lang.Object)[2]; };	$r71 = newarray (java.lang.Object)[2];	$r72 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r73 = virtualinvoke $r72.<java.lang.Object: java.lang.Class getClass()>();	$r74 = virtualinvoke $r73.<java.lang.Class: java.lang.String getName()>();	$r71[0] = $r74;	$r75 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r76 = virtualinvoke $r75.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r71[1] = $r76;	$r78 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r71);	$r77 = r7.<com.mysql.cj.protocol.a.InstantValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r79 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r78, $r77);	$r80 = (com.mysql.cj.exceptions.WrongArgumentException) $r79;	throw $r80
;block_num 2