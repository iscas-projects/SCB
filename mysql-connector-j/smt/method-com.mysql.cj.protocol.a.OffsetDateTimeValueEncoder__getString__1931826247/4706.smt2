(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2828 0)
(declare-sort var186 0)
(declare-sort var619 0)
(declare-sort var2252 0)
(declare-sort var3850 0)
(declare-sort var434 0)
(declare-sort var1990 0)
(declare-sort var3450 0)
(declare-sort var2264 0)
(declare-sort var790 0)
(declare-sort var1756 0)
(declare-sort var3995 0)
(declare-sort var3693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3693!class ClassObject)
(declare-fun var186_getValue/1809189437 (var186) var619)
(declare-fun cast-from-var619-to-var2252 (var619) var2252)
(declare-fun var186_getMysqlType/-215853011 (var186) var434)
(declare-fun ordinal/-291641772 (var1990) Int)
(declare-fun cast-from-var434-to-var1990 (var434) var1990)
(declare-fun arr-var619-init () (Array Int var619))
(declare-fun getClass/1258963082 (var619) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var619 (String) var619)
(declare-fun toString/1761020461 (var1990) String)
(declare-fun var3450_getString/1500902777 (String (Array Int var619)) String)
(declare-fun exceptionInterceptor/-791602078 (var790) var2264)
(declare-fun cast-from-var2828-to-var790 (var2828) var790)
(declare-fun var3995_createException/-988168188 (ClassObject String var2264) var1756)
(declare-fun cast-from-var1756-to-var3693 (var1756) var3693)
(declare-const null-var2828 var2828)
(declare-const null-var186 var186)
(declare-const var3850-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var619__ (Array Int var619))
(declare-const var3697 var2828) ; Statement: r6 := @this: com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder 
(assert (not (= var3697 null-var2828)))
(declare-const var3577 var186) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3577 null-var186)))
(define-const var3197 var619 (var186_getValue/1809189437 var3577)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var880 var2252 (cast-from-var619-to-var2252 var3197)) ; Statement: r2 = (java.time.OffsetDateTime) $r1 
(define-const var1085 (Array Int Int) var3850-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var334 var434 (var186_getMysqlType/-215853011 var3577)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2449 Int (ordinal/-291641772 (cast-from-var434-to-var1990 var334))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2845 Int (select var1085 var2449)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r47 = new java.lang.StringBuilder;     case 3: goto $r34 = new java.lang.StringBuilder;     case 4: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;     case 7: goto $r5 = new java.lang.StringBuilder;     case 8: goto $r5 = new java.lang.StringBuilder;     case 9: goto $r5 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r5 = new java.lang.StringBuilder;     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r56 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var2845 12)) (and (not (= var2845 11)) (and (not (= var2845 10)) (and (not (= var2845 9)) (and (not (= var2845 8)) (and (not (= var2845 7)) (and (not (= var2845 6)) (and (not (= var2845 5)) (and (not (= var2845 4)) (and (not (= var2845 3)) (and (not (= var2845 2)) (and (not (= var2845 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var2503 (Array Int var619) arr-var619-init) ; Statement: $r56 = newarray (java.lang.Object)[2] 
(define-const var3242 var619 (var186_getValue/1809189437 var3577)) ; Statement: $r57 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var357 ClassObject (getClass/1258963082 var3242)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1160 String (getName/-1958580599 var357)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2503!1 (Array Int var619))
(assert (not (= var2503!1 null-__Array__Int__var619__)))
(assert (= (select var2503!1 0) (cast-from-String-to-var619 var1160))) ; Statement: $r56[0] = $r59 
(define-const var1866 var434 (var186_getMysqlType/-215853011 var3577)) ; Statement: $r60 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3516 String (toString/1761020461 (cast-from-var434-to-var1990 var1866))) ; Statement: $r61 = virtualinvoke $r60.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var2503!2 (Array Int var619))
(assert (not (= var2503!2 null-__Array__Int__var619__)))
(assert (= (select var2503!2 1) (cast-from-String-to-var619 var3516))) ; Statement: $r56[1] = $r61 
(define-const var866 String (var3450_getString/1500902777 "PreparedStatement.67" var2503!2)) ; Statement: $r63 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r56) 
(define-const var3502 var2264 (exceptionInterceptor/-791602078 (cast-from-var2828-to-var790 var3697))) ; Statement: $r62 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var233 var1756 (var3995_createException/-988168188 var3693!class var866 var3502)) ; Statement: $r64 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r63, $r62) 
(define-const var3380 var3693 (cast-from-var1756-to-var3693 var233)) ; Statement: $r65 = (com.mysql.cj.exceptions.WrongArgumentException) $r64 
 ; Statement: throw $r65 
(check-sat)
(get-model)
(get-unsat-core)
; {var186_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var619-to-var2252=([java.lang.Object], java.time.OffsetDateTime), var186_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var434-to-var1990=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var619-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var619=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var3450_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var2828-to-var790=([com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var3995_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var1756-to-var3693=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var2828=com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder, var3697=r6, var186=com.mysql.cj.BindValue, var3577=r0, var619=java.lang.Object, var3197=$r1, var2252=java.time.OffsetDateTime, var880=r2, var3850=com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1, var1085=$r3, var434=com.mysql.cj.MysqlType, var334=$r4, var1990=java.lang.Enum, var2449=$i0, var2845=$i1, var2503=$r56, var3242=$r57, var357=$r58, var1160=$r59, var1866=$r60, var3516=$r61, var3450=com.mysql.cj.Messages, var866=$r63, var2264=com.mysql.cj.exceptions.ExceptionInterceptor, var790=com.mysql.cj.protocol.a.AbstractValueEncoder, var3502=$r62, var1756=com.mysql.cj.exceptions.CJException, var3995=com.mysql.cj.exceptions.ExceptionFactory, var3693=com.mysql.cj.exceptions.WrongArgumentException, var233=$r64, var3380=$r65}
; {com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder=var2828, r6=var3697, com.mysql.cj.BindValue=var186, r0=var3577, java.lang.Object=var619, $r1=var3197, java.time.OffsetDateTime=var2252, r2=var880, com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1=var3850, $r3=var1085, com.mysql.cj.MysqlType=var434, $r4=var334, java.lang.Enum=var1990, $i0=var2449, $i1=var2845, $r56=var2503, $r57=var3242, $r58=var357, $r59=var1160, $r60=var1866, $r61=var3516, com.mysql.cj.Messages=var3450, $r63=var866, com.mysql.cj.exceptions.ExceptionInterceptor=var2264, com.mysql.cj.protocol.a.AbstractValueEncoder=var790, $r62=var3502, com.mysql.cj.exceptions.CJException=var1756, com.mysql.cj.exceptions.ExceptionFactory=var3995, com.mysql.cj.exceptions.WrongArgumentException=var3693, $r64=var233, $r65=var3380}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r6 := @this: com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.time.OffsetDateTime) $r1;	$r3 = <com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r47 = new java.lang.StringBuilder;     case 3: goto $r34 = new java.lang.StringBuilder;     case 4: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;     case 7: goto $r5 = new java.lang.StringBuilder;     case 8: goto $r5 = new java.lang.StringBuilder;     case 9: goto $r5 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r5 = new java.lang.StringBuilder;     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r56 = newarray (java.lang.Object)[2]; };	$r56 = newarray (java.lang.Object)[2];	$r57 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r58 = virtualinvoke $r57.<java.lang.Object: java.lang.Class getClass()>();	$r59 = virtualinvoke $r58.<java.lang.Class: java.lang.String getName()>();	$r56[0] = $r59;	$r60 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r61 = virtualinvoke $r60.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r56[1] = $r61;	$r63 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r56);	$r62 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r64 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r63, $r62);	$r65 = (com.mysql.cj.exceptions.WrongArgumentException) $r64;	throw $r65
;block_num 2