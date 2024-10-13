(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1121 0)
(declare-sort var430 0)
(declare-sort var3507 0)
(declare-sort var371 0)
(declare-sort var3015 0)
(declare-sort var2437 0)
(declare-sort var401 0)
(declare-sort var3420 0)
(declare-sort var1654 0)
(declare-sort var2221 0)
(declare-sort var646 0)
(declare-sort var678 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2775!class ClassObject)
(declare-fun var430_getValue/1809189437 (var430) var3507)
(declare-fun cast-from-var3507-to-var371 (var3507) var371)
(declare-fun booleanValue/-1820462562 (var371) Bool)
(declare-fun var430_getMysqlType/-215853011 (var430) var2437)
(declare-fun ordinal/-291641772 (var401) Int)
(declare-fun cast-from-var2437-to-var401 (var2437) var401)
(declare-fun arr-var3507-init () (Array Int var3507))
(declare-fun getClass/1258963082 (var3507) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var3507 (String) var3507)
(declare-fun toString/1761020461 (var401) String)
(declare-fun var3420_getString/1500902777 (String (Array Int var3507)) String)
(declare-fun exceptionInterceptor/-791602078 (var2221) var1654)
(declare-fun cast-from-var1121-to-var2221 (var1121) var2221)
(declare-fun var678_createException/-988168188 (ClassObject String var1654) var646)
(declare-fun cast-from-var646-to-var2775 (var646) var2775)
(declare-const null-var1121 var1121)
(declare-const null-var430 var430)
(declare-const var3015-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var3507__ (Array Int var3507))
(declare-const var2116 var1121) ; Statement: r20 := @this: com.mysql.cj.protocol.a.BooleanValueEncoder 
(assert (not (= var2116 null-var1121)))
(declare-const var2349 var430) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var2349 null-var430)))
(define-const var3901 var3507 (var430_getValue/1809189437 var2349)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2011 var371 (cast-from-var3507-to-var371 var3901)) ; Statement: $r2 = (java.lang.Boolean) $r1 
(assert true)
(define-const var2888 Bool (booleanValue/-1820462562 var2011)) ; Statement: z0 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>() 
(define-const var3020 (Array Int Int) var3015-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.BooleanValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var467 var2437 (var430_getMysqlType/-215853011 var2349)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var305 Int (ordinal/-291641772 (cast-from-var2437-to-var401 var467))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var950 Int (select var3020 var305)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 3: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 4: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 5: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 6: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 7: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 8: goto if z0 == 0 goto $b2 = 0;     case 9: goto if z0 == 0 goto $b2 = 0;     case 10: goto if z0 == 0 goto $b2 = 0;     case 11: goto if z0 == 0 goto $b2 = 0;     case 12: goto if z0 == 0 goto $b2 = 0;     case 13: goto if z0 == 0 goto $b2 = 0;     case 14: goto if z0 == 0 goto $b2 = 0;     case 15: goto if z0 == 0 goto $b2 = 0;     case 16: goto if z0 == 0 goto $b2 = 0;     case 17: goto if z0 == 0 goto $b2 = 0;     case 18: goto if z0 == 0 goto $b2 = 0;     case 19: goto if z0 == 0 goto $l3 = 0L;     case 20: goto if z0 == 0 goto $l3 = 0L;     case 21: goto if z0 == 0 goto $f0 = 0.0F;     case 22: goto if z0 == 0 goto $f0 = 0.0F;     case 23: goto if z0 == 0 goto $d0 = 0.0;     case 24: goto if z0 == 0 goto $d0 = 0.0;     case 25: goto $r5 = new java.math.BigDecimal;     case 26: goto $r5 = new java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var950 26)) (and (not (= var950 25)) (and (not (= var950 24)) (and (not (= var950 23)) (and (not (= var950 22)) (and (not (= var950 21)) (and (not (= var950 20)) (and (not (= var950 19)) (and (not (= var950 18)) (and (not (= var950 17)) (and (not (= var950 16)) (and (not (= var950 15)) (and (not (= var950 14)) (and (not (= var950 13)) (and (not (= var950 12)) (and (not (= var950 11)) (and (not (= var950 10)) (and (not (= var950 9)) (and (not (= var950 8)) (and (not (= var950 7)) (and (not (= var950 6)) (and (not (= var950 5)) (and (not (= var950 4)) (and (not (= var950 3)) (and (not (= var950 2)) (and (not (= var950 1)) true))))))))))))))))))))))))))) ; Intersect: Negate: Cond: $i1 == 26   and Intersect: Negate: Cond: $i1 == 25   and Intersect: Negate: Cond: $i1 == 24   and Intersect: Negate: Cond: $i1 == 23   and Intersect: Negate: Cond: $i1 == 22   and Intersect: Negate: Cond: $i1 == 21   and Intersect: Negate: Cond: $i1 == 20   and Intersect: Negate: Cond: $i1 == 19   and Intersect: Negate: Cond: $i1 == 18   and Intersect: Negate: Cond: $i1 == 17   and Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional                          
(define-const var889 (Array Int var3507) arr-var3507-init) ; Statement: $r14 = newarray (java.lang.Object)[2] 
(define-const var1026 var3507 (var430_getValue/1809189437 var2349)) ; Statement: $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var1161 ClassObject (getClass/1258963082 var1026)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3526 String (getName/-1958580599 var1161)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(declare-const var889!1 (Array Int var3507))
(assert (not (= var889!1 null-__Array__Int__var3507__)))
(assert (= (select var889!1 0) (cast-from-String-to-var3507 var3526))) ; Statement: $r14[0] = $r17 
(define-const var888 var2437 (var430_getMysqlType/-215853011 var2349)) ; Statement: $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3214 String (toString/1761020461 (cast-from-var2437-to-var401 var888))) ; Statement: $r19 = virtualinvoke $r18.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var889!2 (Array Int var3507))
(assert (not (= var889!2 null-__Array__Int__var3507__)))
(assert (= (select var889!2 1) (cast-from-String-to-var3507 var3214))) ; Statement: $r14[1] = $r19 
(define-const var2870 String (var3420_getString/1500902777 "PreparedStatement.67" var889!2)) ; Statement: $r22 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r14) 
(define-const var1395 var1654 (exceptionInterceptor/-791602078 (cast-from-var1121-to-var2221 var2116))) ; Statement: $r21 = r20.<com.mysql.cj.protocol.a.BooleanValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1296 var646 (var678_createException/-988168188 var2775!class var2870 var1395)) ; Statement: $r23 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r22, $r21) 
(define-const var2760 var2775 (cast-from-var646-to-var2775 var1296)) ; Statement: $r24 = (com.mysql.cj.exceptions.WrongArgumentException) $r23 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var430_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var3507-to-var371=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var430_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2437-to-var401=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var3507-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var3507=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var3420_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var1121-to-var2221=([com.mysql.cj.protocol.a.BooleanValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var678_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var646-to-var2775=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var1121=com.mysql.cj.protocol.a.BooleanValueEncoder, var2116=r20, var430=com.mysql.cj.BindValue, var2349=r0, var3507=java.lang.Object, var3901=$r1, var371=java.lang.Boolean, var2011=$r2, var2888=z0, var3015=com.mysql.cj.protocol.a.BooleanValueEncoder$1, var3020=$r3, var2437=com.mysql.cj.MysqlType, var467=$r4, var401=java.lang.Enum, var305=$i0, var950=$i1, var889=$r14, var1026=$r15, var1161=$r16, var3526=$r17, var888=$r18, var3214=$r19, var3420=com.mysql.cj.Messages, var2870=$r22, var1654=com.mysql.cj.exceptions.ExceptionInterceptor, var2221=com.mysql.cj.protocol.a.AbstractValueEncoder, var1395=$r21, var646=com.mysql.cj.exceptions.CJException, var678=com.mysql.cj.exceptions.ExceptionFactory, var2775=com.mysql.cj.exceptions.WrongArgumentException, var1296=$r23, var2760=$r24}
; {com.mysql.cj.protocol.a.BooleanValueEncoder=var1121, r20=var2116, com.mysql.cj.BindValue=var430, r0=var2349, java.lang.Object=var3507, $r1=var3901, java.lang.Boolean=var371, $r2=var2011, z0=var2888, com.mysql.cj.protocol.a.BooleanValueEncoder$1=var3015, $r3=var3020, com.mysql.cj.MysqlType=var2437, $r4=var467, java.lang.Enum=var401, $i0=var305, $i1=var950, $r14=var889, $r15=var1026, $r16=var1161, $r17=var3526, $r18=var888, $r19=var3214, com.mysql.cj.Messages=var3420, $r22=var2870, com.mysql.cj.exceptions.ExceptionInterceptor=var1654, com.mysql.cj.protocol.a.AbstractValueEncoder=var2221, $r21=var1395, com.mysql.cj.exceptions.CJException=var646, com.mysql.cj.exceptions.ExceptionFactory=var678, com.mysql.cj.exceptions.WrongArgumentException=var2775, $r23=var1296, $r24=var2760}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r20 := @this: com.mysql.cj.protocol.a.BooleanValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r2 = (java.lang.Boolean) $r1;	z0 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>();	$r3 = <com.mysql.cj.protocol.a.BooleanValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 3: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 4: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 5: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 6: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 7: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 8: goto if z0 == 0 goto $b2 = 0;     case 9: goto if z0 == 0 goto $b2 = 0;     case 10: goto if z0 == 0 goto $b2 = 0;     case 11: goto if z0 == 0 goto $b2 = 0;     case 12: goto if z0 == 0 goto $b2 = 0;     case 13: goto if z0 == 0 goto $b2 = 0;     case 14: goto if z0 == 0 goto $b2 = 0;     case 15: goto if z0 == 0 goto $b2 = 0;     case 16: goto if z0 == 0 goto $b2 = 0;     case 17: goto if z0 == 0 goto $b2 = 0;     case 18: goto if z0 == 0 goto $b2 = 0;     case 19: goto if z0 == 0 goto $l3 = 0L;     case 20: goto if z0 == 0 goto $l3 = 0L;     case 21: goto if z0 == 0 goto $f0 = 0.0F;     case 22: goto if z0 == 0 goto $f0 = 0.0F;     case 23: goto if z0 == 0 goto $d0 = 0.0;     case 24: goto if z0 == 0 goto $d0 = 0.0;     case 25: goto $r5 = new java.math.BigDecimal;     case 26: goto $r5 = new java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; };	$r14 = newarray (java.lang.Object)[2];	$r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r16 = virtualinvoke $r15.<java.lang.Object: java.lang.Class getClass()>();	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	$r14[0] = $r17;	$r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r19 = virtualinvoke $r18.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r14[1] = $r19;	$r22 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r14);	$r21 = r20.<com.mysql.cj.protocol.a.BooleanValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r23 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r22, $r21);	$r24 = (com.mysql.cj.exceptions.WrongArgumentException) $r23;	throw $r24
;block_num 2