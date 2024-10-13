(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var460 0)
(declare-sort var998 0)
(declare-sort var445 0)
(declare-sort var590 0)
(declare-sort var304 0)
(declare-sort var3411 0)
(declare-sort var2379 0)
(declare-sort var3069 0)
(declare-sort var2671 0)
(declare-sort var3157 0)
(declare-sort var3780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var460) var590)
(declare-fun var590_getValue/1633538672 (var590) var304)
(declare-fun cast-from-var3411-to-var304 (var3411) var304)
(declare-fun s2b/-450202684 (var460 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var460 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var445) var2379)
(declare-fun getJdbcType/389098195 (var2379) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2379) String)
(declare-fun datetimePrecision/-289055874 (var445) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var445) Int)
(declare-fun decimalDigits/-289055874 (var445) Int)
(declare-fun numPrecRadix/-289055874 (var445) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var445) Int)
(declare-fun var3069_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var460) var2671)
(declare-fun var3780_createSQLException/-1268047242 (String String var2671) var3157)
(declare-const null-var460 var460)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var445 var445)
(declare-const null-Int Int)
(declare-const var3411-SCHEMA var3411)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2379-YEAR var2379)
(declare-const var2298 var460) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2298 null-var460)))
(declare-const var1684 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1684 null-__Array__Int__Int__)))
(declare-const var2078 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2078 null-__Array__Int__Int__)))
(declare-const var975 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var975 null-String)))
(declare-const var1532 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1532 null-Bool)))
(declare-const var755 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var755 null-Bool)))
(declare-const var3764 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3764 null-Bool)))
(declare-const var3472 var445) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3472 null-var445)))
(declare-const var3180 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3180 null-Bool)))
(declare-const var2408 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2408 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var3180 1 0) 0)) ; Cond: z0 == 0 
(define-const var451 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var101 (Array Int (Array Int Int)) var451) ; Statement: r0 = $r54 
(define-const var3093 (Array Int (Array Int Int)) var451) ; Statement: $r53 = $r54 
(define-const var1905 var590 (databaseTerm/1074764847 var2298)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var481 var304 (var590_getValue/1633538672 var1905)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2120 var3411 var3411-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var481 (cast-from-var3411-to-var304 var2120))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3738 (Array Int Int) (s2b/-450202684 var2298 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var3093!1 (Array Int (Array Int Int)))
(assert (not (= var3093!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3093!1 0) var3738)) ; Statement: $r53[0] = $r55 
(define-const var2007 var590 (databaseTerm/1074764847 var2298)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1647 var304 (var590_getValue/1633538672 var2007)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2788 var3411 var3411-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var1647 (cast-from-var3411-to-var304 var2788)))) ; Cond: $r8 != $r7 
(define-const var1381 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var101!1 (Array Int (Array Int Int)))
(assert (not (= var101!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!1 1) var1381)) ; Statement: r0[1] = $r56 
(declare-const var101!2 (Array Int (Array Int Int)))
(assert (not (= var101!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!2 2) var1684)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1570 (Array Int Int) (s2b/-450202684 var2298 var975)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var101!3 (Array Int (Array Int Int)))
(assert (not (= var101!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!3 3) var1570)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3249 Int (getColumnType/800489773 var2298 var1532 var755 var3764 var3180)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1944 String (String_valueOf/1240665136 var3249)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3167 (Array Int Int) (s2b/-450202684 var2298 var1944)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var101!4 (Array Int (Array Int Int)))
(assert (not (= var101!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!4 4) var3167)) ; Statement: r0[4] = $r13 
(define-const var3359 var2379 (mysqlType/-289055874 var3472)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var70 var2379 var2379-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3359 var70))) ; Cond: $r16 != $r15 
(define-const var2321 var2379 (mysqlType/-289055874 var3472)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2670 Int (getJdbcType/389098195 var2321)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1326 Int (cast-from-Int-to-Int var2670)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2252 String (Int_toString/-1770815874 var1326)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var742 (Array Int Int) (getBytes/1068683673 var2252)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var101!5 (Array Int (Array Int Int)))
(assert (not (= var101!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!5 5) var742)) ; Statement: r0[5] = $r58 
(define-const var3071 var2379 (mysqlType/-289055874 var3472)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2466 String (getName/1307715079 var3071)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3277 (Array Int Int) (s2b/-450202684 var2298 var2466)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var101!6 (Array Int (Array Int Int)))
(assert (not (= var101!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!6 6) var3277)) ; Statement: r0[6] = $r61 
(define-const var604 Int (datetimePrecision/-289055874 var3472)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var604 null-Int))) ; Cond: $r62 != null 
(define-const var639 Int (datetimePrecision/-289055874 var3472)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3716 String (toString/483301002 var639)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var586 (Array Int Int) (s2b/-450202684 var2298 var3716)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var101!7 (Array Int (Array Int Int)))
(assert (not (= var101!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!7 7) var586)) ; Statement: r0[7] = $r63 
(define-const var2363 Int (columnSize/-289055874 var3472)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var2363 null-Int))) ; Cond: $r20 != null 
(define-const var693 Int (columnSize/-289055874 var3472)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3879 String (toString/483301002 var693)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3231 (Array Int Int) (s2b/-450202684 var2298 var3879)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var101!8 (Array Int (Array Int Int)))
(assert (not (= var101!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!8 8) var3231)) ; Statement: r0[8] = $r64 
(define-const var2400 Int (decimalDigits/-289055874 var3472)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var2400 null-Int))) ; Cond: $r23 != null 
(define-const var2857 Int (decimalDigits/-289055874 var3472)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var825 String (toString/483301002 var2857)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1271 (Array Int Int) (s2b/-450202684 var2298 var825)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var101!9 (Array Int (Array Int Int)))
(assert (not (= var101!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!9 9) var1271)) ; Statement: r0[9] = $r65 
(define-const var2797 Int (numPrecRadix/-289055874 var3472)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2070 String (Int_toString/1350422511 var2797)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3765 (Array Int Int) (s2b/-450202684 var2298 var2070)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var101!10 (Array Int (Array Int Int)))
(assert (not (= var101!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var101!10 10) var3765)) ; Statement: r0[10] = $r27 
(define-const var1487 Int (nullability/-289055874 var3472)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1487 2)) (and (not (= var1487 1)) (and (not (= var1487 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var862 String (var3069_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1884 var2671 (getExceptionInterceptor/-1244810802 var2298)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2905 var3157 (var3780_createSQLException/-1268047242 var862 "S1000" var1884)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var590_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3411-to-var304=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3069_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3780_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var460=com.mysql.cj.jdbc.DatabaseMetaData, var2298=r1, var1684=r9, var2078=r5, var975=r10, var998=null_type, var1532=z1, var755=z2, var3764=z3, var445=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3472=r14, var3180=z0, var2408=i4, var451=$r54, var101=r0, var3093=$r53, var590=com.mysql.cj.conf.RuntimeProperty, var1905=$r2, var304=java.lang.Object, var481=$r4, var3411=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2120=$r3, var3738=$r55, var2007=$r6, var1647=$r8, var2788=$r7, var1381=$r56, var1570=$r11, var3249=$i0, var1944=$r12, var3167=$r13, var2379=com.mysql.cj.MysqlType, var3359=$r16, var70=$r15, var2321=$r17, var2670=$i1, var1326=$s5, var2252=$r57, var742=$r58, var3071=$r59, var2466=$r60, var3277=$r61, var604=$r62, var639=$r18, var3716=$r19, var586=$r63, var2363=$r20, var693=$r21, var3879=$r22, var3231=$r64, var2400=$r23, var2857=$r24, var825=$r25, var1271=$r65, var2797=$i2, var2070=$r26, var3765=$r27, var1487=$i3, var3069=com.mysql.cj.Messages, var862=$r49, var2671=com.mysql.cj.exceptions.ExceptionInterceptor, var1884=$r48, var3157=java.sql.SQLException, var3780=com.mysql.cj.jdbc.exceptions.SQLError, var2905=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var460, r1=var2298, r9=var1684, r5=var2078, r10=var975, null_type=var998, z1=var1532, z2=var755, z3=var3764, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var445, r14=var3472, z0=var3180, i4=var2408, $r54=var451, r0=var101, $r53=var3093, com.mysql.cj.conf.RuntimeProperty=var590, $r2=var1905, java.lang.Object=var304, $r4=var481, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3411, $r3=var2120, $r55=var3738, $r6=var2007, $r8=var1647, $r7=var2788, $r56=var1381, $r11=var1570, $i0=var3249, $r12=var1944, $r13=var3167, com.mysql.cj.MysqlType=var2379, $r16=var3359, $r15=var70, $r17=var2321, $i1=var2670, $s5=var1326, $r57=var2252, $r58=var742, $r59=var3071, $r60=var2466, $r61=var3277, $r62=var604, $r18=var639, $r19=var3716, $r63=var586, $r20=var2363, $r21=var693, $r22=var3879, $r64=var3231, $r23=var2400, $r24=var2857, $r25=var825, $r65=var1271, $i2=var2797, $r26=var2070, $r27=var3765, $i3=var1487, com.mysql.cj.Messages=var3069, $r49=var862, com.mysql.cj.exceptions.ExceptionInterceptor=var2671, $r48=var1884, java.sql.SQLException=var3157, com.mysql.cj.jdbc.exceptions.SQLError=var3780, $r50=var2905}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16