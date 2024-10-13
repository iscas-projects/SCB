(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1674 0)
(declare-sort var3226 0)
(declare-sort var2130 0)
(declare-sort var3023 0)
(declare-sort var986 0)
(declare-sort var1306 0)
(declare-sort var2843 0)
(declare-sort var2059 0)
(declare-sort var497 0)
(declare-sort var1006 0)
(declare-sort var3323 0)
(declare-sort var2828 0)
(declare-sort var2907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2907!class ClassObject)
(declare-fun var3226_getValue/1809189437 (var3226) var2130)
(declare-fun cast-from-var2130-to-var3023 (var2130) var3023)
(declare-fun var3226_getMysqlType/-215853011 (var3226) var1306)
(declare-fun ordinal/-291641772 (var2843) Int)
(declare-fun cast-from-var1306-to-var2843 (var1306) var2843)
(declare-fun arr-var2130-init () (Array Int var2130))
(declare-fun getClass/1258963082 (var2130) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2130 (String) var2130)
(declare-fun toString/1761020461 (var2843) String)
(declare-fun var2059_getString/1500902777 (String (Array Int var2130)) String)
(declare-fun exceptionInterceptor/-791602078 (var1006) var497)
(declare-fun cast-from-var1674-to-var1006 (var1674) var1006)
(declare-fun var2828_createException/-988168188 (ClassObject String var497) var3323)
(declare-fun cast-from-var3323-to-var2907 (var3323) var2907)
(declare-const null-var1674 var1674)
(declare-const null-var3226 var3226)
(declare-const var986-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var2130__ (Array Int var2130))
(declare-const var3029 var1674) ; Statement: r6 := @this: com.mysql.cj.protocol.a.UtilCalendarValueEncoder 
(assert (not (= var3029 null-var1674)))
(declare-const var215 var3226) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var215 null-var3226)))
(define-const var2028 var2130 (var3226_getValue/1809189437 var215)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2222 var3023 (cast-from-var2130-to-var3023 var2028)) ; Statement: r2 = (java.util.Calendar) $r1 
(define-const var1730 (Array Int Int) var986-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3275 var1306 (var3226_getMysqlType/-215853011 var215)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2993 Int (ordinal/-291641772 (cast-from-var1306-to-var2843 var3275))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1774 Int (select var1730 var2993)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r53 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r35 = new java.sql.Timestamp;     case 4: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 5: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 6: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 7: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 8: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 9: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 10: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 11: goto $i2 = virtualinvoke r2.<java.util.Calendar: int get(int)>(1);     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var1774 12)) (and (not (= var1774 11)) (and (not (= var1774 10)) (and (not (= var1774 9)) (and (not (= var1774 8)) (and (not (= var1774 7)) (and (not (= var1774 6)) (and (not (= var1774 5)) (and (not (= var1774 4)) (and (not (= var1774 3)) (and (not (= var1774 2)) (and (not (= var1774 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var1770 (Array Int var2130) arr-var2130-init) ; Statement: $r61 = newarray (java.lang.Object)[2] 
(define-const var1704 var2130 (var3226_getValue/1809189437 var215)) ; Statement: $r62 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var1611 ClassObject (getClass/1258963082 var1704)) ; Statement: $r63 = virtualinvoke $r62.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3575 String (getName/-1958580599 var1611)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1770!1 (Array Int var2130))
(assert (not (= var1770!1 null-__Array__Int__var2130__)))
(assert (= (select var1770!1 0) (cast-from-String-to-var2130 var3575))) ; Statement: $r61[0] = $r64 
(define-const var1818 var1306 (var3226_getMysqlType/-215853011 var215)) ; Statement: $r65 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2771 String (toString/1761020461 (cast-from-var1306-to-var2843 var1818))) ; Statement: $r66 = virtualinvoke $r65.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var1770!2 (Array Int var2130))
(assert (not (= var1770!2 null-__Array__Int__var2130__)))
(assert (= (select var1770!2 1) (cast-from-String-to-var2130 var2771))) ; Statement: $r61[1] = $r66 
(define-const var1169 String (var2059_getString/1500902777 "PreparedStatement.67" var1770!2)) ; Statement: $r68 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r61) 
(define-const var2171 var497 (exceptionInterceptor/-791602078 (cast-from-var1674-to-var1006 var3029))) ; Statement: $r67 = r6.<com.mysql.cj.protocol.a.UtilCalendarValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var600 var3323 (var2828_createException/-988168188 var2907!class var1169 var2171)) ; Statement: $r69 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r68, $r67) 
(define-const var2249 var2907 (cast-from-var3323-to-var2907 var600)) ; Statement: $r70 = (com.mysql.cj.exceptions.WrongArgumentException) $r69 
 ; Statement: throw $r70 
(check-sat)
(get-model)
(get-unsat-core)
; {var3226_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2130-to-var3023=([java.lang.Object], java.util.Calendar), var3226_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1306-to-var2843=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var2130-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2130=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var2059_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var1674-to-var1006=([com.mysql.cj.protocol.a.UtilCalendarValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var2828_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var3323-to-var2907=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var1674=com.mysql.cj.protocol.a.UtilCalendarValueEncoder, var3029=r6, var3226=com.mysql.cj.BindValue, var215=r0, var2130=java.lang.Object, var2028=$r1, var3023=java.util.Calendar, var2222=r2, var986=com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1, var1730=$r3, var1306=com.mysql.cj.MysqlType, var3275=$r4, var2843=java.lang.Enum, var2993=$i0, var1774=$i1, var1770=$r61, var1704=$r62, var1611=$r63, var3575=$r64, var1818=$r65, var2771=$r66, var2059=com.mysql.cj.Messages, var1169=$r68, var497=com.mysql.cj.exceptions.ExceptionInterceptor, var1006=com.mysql.cj.protocol.a.AbstractValueEncoder, var2171=$r67, var3323=com.mysql.cj.exceptions.CJException, var2828=com.mysql.cj.exceptions.ExceptionFactory, var2907=com.mysql.cj.exceptions.WrongArgumentException, var600=$r69, var2249=$r70}
; {com.mysql.cj.protocol.a.UtilCalendarValueEncoder=var1674, r6=var3029, com.mysql.cj.BindValue=var3226, r0=var215, java.lang.Object=var2130, $r1=var2028, java.util.Calendar=var3023, r2=var2222, com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1=var986, $r3=var1730, com.mysql.cj.MysqlType=var1306, $r4=var3275, java.lang.Enum=var2843, $i0=var2993, $i1=var1774, $r61=var1770, $r62=var1704, $r63=var1611, $r64=var3575, $r65=var1818, $r66=var2771, com.mysql.cj.Messages=var2059, $r68=var1169, com.mysql.cj.exceptions.ExceptionInterceptor=var497, com.mysql.cj.protocol.a.AbstractValueEncoder=var1006, $r67=var2171, com.mysql.cj.exceptions.CJException=var3323, com.mysql.cj.exceptions.ExceptionFactory=var2828, com.mysql.cj.exceptions.WrongArgumentException=var2907, $r69=var600, $r70=var2249}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r6 := @this: com.mysql.cj.protocol.a.UtilCalendarValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.util.Calendar) $r1;	$r3 = <com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r53 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r35 = new java.sql.Timestamp;     case 4: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 5: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 6: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 7: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 8: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 9: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 10: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 11: goto $i2 = virtualinvoke r2.<java.util.Calendar: int get(int)>(1);     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; };	$r61 = newarray (java.lang.Object)[2];	$r62 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r63 = virtualinvoke $r62.<java.lang.Object: java.lang.Class getClass()>();	$r64 = virtualinvoke $r63.<java.lang.Class: java.lang.String getName()>();	$r61[0] = $r64;	$r65 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r66 = virtualinvoke $r65.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r61[1] = $r66;	$r68 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r61);	$r67 = r6.<com.mysql.cj.protocol.a.UtilCalendarValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r69 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r68, $r67);	$r70 = (com.mysql.cj.exceptions.WrongArgumentException) $r69;	throw $r70
;block_num 2