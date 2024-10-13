(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var246 0)
(declare-sort var2537 0)
(declare-sort var1168 0)
(declare-sort var1402 0)
(declare-sort var2238 0)
(declare-sort var2084 0)
(declare-sort var2824 0)
(declare-sort var2984 0)
(declare-sort var247 0)
(declare-sort var1370 0)
(declare-sort var3675 0)
(declare-sort var3082 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3082!class ClassObject)
(declare-fun var2537_getMysqlType/-215853011 (var2537) var1402)
(declare-fun ordinal/-291641772 (var2238) Int)
(declare-fun cast-from-var1402-to-var2238 (var1402) var2238)
(declare-fun arr-var2084-init () (Array Int var2084))
(declare-fun var2537_getValue/1809189437 (var2537) var2084)
(declare-fun getClass/1258963082 (var2084) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2084 (String) var2084)
(declare-fun toString/1761020461 (var2238) String)
(declare-fun var2824_getString/1500902777 (String (Array Int var2084)) String)
(declare-fun exceptionInterceptor/-791602078 (var247) var2984)
(declare-fun cast-from-var246-to-var247 (var246) var247)
(declare-fun var3675_createException/-988168188 (ClassObject String var2984) var1370)
(declare-fun cast-from-var1370-to-var3082 (var1370) var3082)
(declare-const null-var246 var246)
(declare-const null-var2537 var2537)
(declare-const var1168-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var2084__ (Array Int var2084))
(declare-const var1819 var246) ; Statement: r9 := @this: com.mysql.cj.protocol.a.DurationValueEncoder 
(assert (not (= var1819 null-var246)))
(declare-const var3562 var2537) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3562 null-var2537)))
(define-const var2296 (Array Int Int) var1168-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.DurationValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1700 var1402 (var2537_getMysqlType/-215853011 var3562)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3097 Int (ordinal/-291641772 (cast-from-var1402-to-var2238 var1700))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2346 Int (select var2296 var3097)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r8 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r17 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var2346 8)) (and (not (= var2346 7)) (and (not (= var2346 6)) (and (not (= var2346 5)) (and (not (= var2346 4)) (and (not (= var2346 3)) (and (not (= var2346 2)) (and (not (= var2346 1)) true))))))))) ; Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional        
(define-const var868 (Array Int var2084) arr-var2084-init) ; Statement: $r17 = newarray (java.lang.Object)[2] 
(define-const var2989 var2084 (var2537_getValue/1809189437 var3562)) ; Statement: $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var832 ClassObject (getClass/1258963082 var2989)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2208 String (getName/-1958580599 var832)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.Class: java.lang.String getName()>() 
(declare-const var868!1 (Array Int var2084))
(assert (not (= var868!1 null-__Array__Int__var2084__)))
(assert (= (select var868!1 0) (cast-from-String-to-var2084 var2208))) ; Statement: $r17[0] = $r20 
(define-const var6 var1402 (var2537_getMysqlType/-215853011 var3562)) ; Statement: $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2130 String (toString/1761020461 (cast-from-var1402-to-var2238 var6))) ; Statement: $r22 = virtualinvoke $r21.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var868!2 (Array Int var2084))
(assert (not (= var868!2 null-__Array__Int__var2084__)))
(assert (= (select var868!2 1) (cast-from-String-to-var2084 var2130))) ; Statement: $r17[1] = $r22 
(define-const var3582 String (var2824_getString/1500902777 "PreparedStatement.67" var868!2)) ; Statement: $r24 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r17) 
(define-const var3471 var2984 (exceptionInterceptor/-791602078 (cast-from-var246-to-var247 var1819))) ; Statement: $r23 = r9.<com.mysql.cj.protocol.a.DurationValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1035 var1370 (var3675_createException/-988168188 var3082!class var3582 var3471)) ; Statement: $r25 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r24, $r23) 
(define-const var73 var3082 (cast-from-var1370-to-var3082 var1035)) ; Statement: $r26 = (com.mysql.cj.exceptions.WrongArgumentException) $r25 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var2537_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1402-to-var2238=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var2084-init=([], java.lang.Object[]), var2537_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2084=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var2824_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var246-to-var247=([com.mysql.cj.protocol.a.DurationValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var3675_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var1370-to-var3082=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var246=com.mysql.cj.protocol.a.DurationValueEncoder, var1819=r9, var2537=com.mysql.cj.BindValue, var3562=r0, var1168=com.mysql.cj.protocol.a.DurationValueEncoder$1, var2296=$r1, var1402=com.mysql.cj.MysqlType, var1700=$r2, var2238=java.lang.Enum, var3097=$i0, var2346=$i1, var2084=java.lang.Object, var868=$r17, var2989=$r18, var832=$r19, var2208=$r20, var6=$r21, var2130=$r22, var2824=com.mysql.cj.Messages, var3582=$r24, var2984=com.mysql.cj.exceptions.ExceptionInterceptor, var247=com.mysql.cj.protocol.a.AbstractValueEncoder, var3471=$r23, var1370=com.mysql.cj.exceptions.CJException, var3675=com.mysql.cj.exceptions.ExceptionFactory, var3082=com.mysql.cj.exceptions.WrongArgumentException, var1035=$r25, var73=$r26}
; {com.mysql.cj.protocol.a.DurationValueEncoder=var246, r9=var1819, com.mysql.cj.BindValue=var2537, r0=var3562, com.mysql.cj.protocol.a.DurationValueEncoder$1=var1168, $r1=var2296, com.mysql.cj.MysqlType=var1402, $r2=var1700, java.lang.Enum=var2238, $i0=var3097, $i1=var2346, java.lang.Object=var2084, $r17=var868, $r18=var2989, $r19=var832, $r20=var2208, $r21=var6, $r22=var2130, com.mysql.cj.Messages=var2824, $r24=var3582, com.mysql.cj.exceptions.ExceptionInterceptor=var2984, com.mysql.cj.protocol.a.AbstractValueEncoder=var247, $r23=var3471, com.mysql.cj.exceptions.CJException=var1370, com.mysql.cj.exceptions.ExceptionFactory=var3675, com.mysql.cj.exceptions.WrongArgumentException=var3082, $r25=var1035, $r26=var73}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r9 := @this: com.mysql.cj.protocol.a.DurationValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.DurationValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r8 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r17 = newarray (java.lang.Object)[2]; };	$r17 = newarray (java.lang.Object)[2];	$r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r19 = virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>();	$r20 = virtualinvoke $r19.<java.lang.Class: java.lang.String getName()>();	$r17[0] = $r20;	$r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r22 = virtualinvoke $r21.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r17[1] = $r22;	$r24 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r17);	$r23 = r9.<com.mysql.cj.protocol.a.DurationValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r25 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r24, $r23);	$r26 = (com.mysql.cj.exceptions.WrongArgumentException) $r25;	throw $r26
;block_num 2