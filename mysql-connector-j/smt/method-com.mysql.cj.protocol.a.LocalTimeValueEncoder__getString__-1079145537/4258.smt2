(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var740 0)
(declare-sort var1938 0)
(declare-sort var721 0)
(declare-sort var2931 0)
(declare-sort var2554 0)
(declare-sort var1612 0)
(declare-sort var1645 0)
(declare-sort var2316 0)
(declare-sort var3688 0)
(declare-sort var2175 0)
(declare-sort var1726 0)
(declare-sort var3053 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3053!class ClassObject)
(declare-fun var1938_getMysqlType/-215853011 (var1938) var2931)
(declare-fun ordinal/-291641772 (var2554) Int)
(declare-fun cast-from-var2931-to-var2554 (var2931) var2554)
(declare-fun arr-var1612-init () (Array Int var1612))
(declare-fun var1938_getValue/1809189437 (var1938) var1612)
(declare-fun getClass/1258963082 (var1612) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var1612 (String) var1612)
(declare-fun toString/1761020461 (var2554) String)
(declare-fun var1645_getString/1500902777 (String (Array Int var1612)) String)
(declare-fun exceptionInterceptor/-791602078 (var3688) var2316)
(declare-fun cast-from-var740-to-var3688 (var740) var3688)
(declare-fun var1726_createException/-988168188 (ClassObject String var2316) var2175)
(declare-fun cast-from-var2175-to-var3053 (var2175) var3053)
(declare-const null-var740 var740)
(declare-const null-var1938 var1938)
(declare-const var721-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const null-__Array__Int__var1612__ (Array Int var1612))
(declare-const var916 var740) ; Statement: r5 := @this: com.mysql.cj.protocol.a.LocalTimeValueEncoder 
(assert (not (= var916 null-var740)))
(declare-const var2039 var1938) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var2039 null-var1938)))
(define-const var1113 (Array Int Int) var721-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1240 var2931 (var1938_getMysqlType/-215853011 var2039)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1030 Int (ordinal/-291641772 (cast-from-var2931-to-var2554 var1240))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2682 Int (select var1113 var1030)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r11 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r20 = newarray (java.lang.Object)[2]; } 
(assert (and (not (= var2682 8)) (and (not (= var2682 7)) (and (not (= var2682 6)) (and (not (= var2682 5)) (and (not (= var2682 4)) (and (not (= var2682 3)) (and (not (= var2682 2)) (and (not (= var2682 1)) true))))))))) ; Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional        
(define-const var2731 (Array Int var1612) arr-var1612-init) ; Statement: $r20 = newarray (java.lang.Object)[2] 
(define-const var3171 var1612 (var1938_getValue/1809189437 var2039)) ; Statement: $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var2162 ClassObject (getClass/1258963082 var3171)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var750 String (getName/-1958580599 var2162)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2731!1 (Array Int var1612))
(assert (not (= var2731!1 null-__Array__Int__var1612__)))
(assert (= (select var2731!1 0) (cast-from-String-to-var1612 var750))) ; Statement: $r20[0] = $r23 
(define-const var279 var2931 (var1938_getMysqlType/-215853011 var2039)) ; Statement: $r24 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var341 String (toString/1761020461 (cast-from-var2931-to-var2554 var279))) ; Statement: $r25 = virtualinvoke $r24.<com.mysql.cj.MysqlType: java.lang.String toString()>() 
(declare-const var2731!2 (Array Int var1612))
(assert (not (= var2731!2 null-__Array__Int__var1612__)))
(assert (= (select var2731!2 1) (cast-from-String-to-var1612 var341))) ; Statement: $r20[1] = $r25 
(define-const var2012 String (var1645_getString/1500902777 "PreparedStatement.67" var2731!2)) ; Statement: $r27 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r20) 
(define-const var715 var2316 (exceptionInterceptor/-791602078 (cast-from-var740-to-var3688 var916))) ; Statement: $r26 = r5.<com.mysql.cj.protocol.a.LocalTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1457 var2175 (var1726_createException/-988168188 var3053!class var2012 var715)) ; Statement: $r28 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r27, $r26) 
(define-const var1388 var3053 (cast-from-var2175-to-var3053 var1457)) ; Statement: $r29 = (com.mysql.cj.exceptions.WrongArgumentException) $r28 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1938_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2931-to-var2554=([com.mysql.cj.MysqlType], java.lang.Enum), arr-var1612-init=([], java.lang.Object[]), var1938_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var1612=([java.lang.String], java.lang.Object), toString/1761020461=([java.lang.Enum], java.lang.String), var1645_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), exceptionInterceptor/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var740-to-var3688=([com.mysql.cj.protocol.a.LocalTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var1726_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var2175-to-var3053=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var740=com.mysql.cj.protocol.a.LocalTimeValueEncoder, var916=r5, var1938=com.mysql.cj.BindValue, var2039=r0, var721=com.mysql.cj.protocol.a.LocalTimeValueEncoder$1, var1113=$r1, var2931=com.mysql.cj.MysqlType, var1240=$r2, var2554=java.lang.Enum, var1030=$i0, var2682=$i1, var1612=java.lang.Object, var2731=$r20, var3171=$r21, var2162=$r22, var750=$r23, var279=$r24, var341=$r25, var1645=com.mysql.cj.Messages, var2012=$r27, var2316=com.mysql.cj.exceptions.ExceptionInterceptor, var3688=com.mysql.cj.protocol.a.AbstractValueEncoder, var715=$r26, var2175=com.mysql.cj.exceptions.CJException, var1726=com.mysql.cj.exceptions.ExceptionFactory, var3053=com.mysql.cj.exceptions.WrongArgumentException, var1457=$r28, var1388=$r29}
; {com.mysql.cj.protocol.a.LocalTimeValueEncoder=var740, r5=var916, com.mysql.cj.BindValue=var1938, r0=var2039, com.mysql.cj.protocol.a.LocalTimeValueEncoder$1=var721, $r1=var1113, com.mysql.cj.MysqlType=var2931, $r2=var1240, java.lang.Enum=var2554, $i0=var1030, $i1=var2682, java.lang.Object=var1612, $r20=var2731, $r21=var3171, $r22=var2162, $r23=var750, $r24=var279, $r25=var341, com.mysql.cj.Messages=var1645, $r27=var2012, com.mysql.cj.exceptions.ExceptionInterceptor=var2316, com.mysql.cj.protocol.a.AbstractValueEncoder=var3688, $r26=var715, com.mysql.cj.exceptions.CJException=var2175, com.mysql.cj.exceptions.ExceptionFactory=var1726, com.mysql.cj.exceptions.WrongArgumentException=var3053, $r28=var1457, $r29=var1388}
;seq <java.lang.Enum: java.lang.String toString()>
;cnt {}
;stmts r5 := @this: com.mysql.cj.protocol.a.LocalTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r11 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r20 = newarray (java.lang.Object)[2]; };	$r20 = newarray (java.lang.Object)[2];	$r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r22 = virtualinvoke $r21.<java.lang.Object: java.lang.Class getClass()>();	$r23 = virtualinvoke $r22.<java.lang.Class: java.lang.String getName()>();	$r20[0] = $r23;	$r24 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$r25 = virtualinvoke $r24.<com.mysql.cj.MysqlType: java.lang.String toString()>();	$r20[1] = $r25;	$r27 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("PreparedStatement.67", $r20);	$r26 = r5.<com.mysql.cj.protocol.a.LocalTimeValueEncoder: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r28 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r27, $r26);	$r29 = (com.mysql.cj.exceptions.WrongArgumentException) $r28;	throw $r29
;block_num 2