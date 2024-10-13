(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var988 0)
(declare-sort var3855 0)
(declare-sort var3150 0)
(declare-sort var3474 0)
(declare-sort var2406 0)
(declare-sort var121 0)
(declare-sort var1217 0)
(declare-sort var3199 0)
(declare-sort var2370 0)
(declare-sort var3089 0)
(declare-sort var3113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var988) var3474)
(declare-fun var3474_getValue/1633538672 (var3474) var2406)
(declare-fun cast-from-var121-to-var2406 (var121) var2406)
(declare-fun s2b/-450202684 (var988 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var988 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3150) var1217)
(declare-fun getJdbcType/389098195 (var1217) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1217) String)
(declare-fun datetimePrecision/-289055874 (var3150) Int)
(declare-fun columnSize/-289055874 (var3150) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3150) Int)
(declare-fun numPrecRadix/-289055874 (var3150) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3150) Int)
(declare-fun var3199_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var988) var2370)
(declare-fun var3113_createSQLException/-1268047242 (String String var2370) var3089)
(declare-const null-var988 var988)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3150 var3150)
(declare-const null-Int Int)
(declare-const var121-SCHEMA var121)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1217-YEAR var1217)
(declare-const var2481 var988) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2481 null-var988)))
(declare-const var1106 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1106 null-__Array__Int__Int__)))
(declare-const var3820 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3820 null-__Array__Int__Int__)))
(declare-const var1548 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1548 null-String)))
(declare-const var1973 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1973 null-Bool)))
(declare-const var2279 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2279 null-Bool)))
(declare-const var3998 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3998 null-Bool)))
(declare-const var303 var3150) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var303 null-var3150)))
(declare-const var3751 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3751 null-Bool)))
(declare-const var1499 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1499 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3751 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1445 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3747 (Array Int (Array Int Int)) var1445) ; Statement: r0 = $r54 
(define-const var1029 (Array Int (Array Int Int)) var1445) ; Statement: $r53 = $r54 
(define-const var3822 var3474 (databaseTerm/1074764847 var2481)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2492 var2406 (var3474_getValue/1633538672 var3822)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var472 var121 var121-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var2492 (cast-from-var121-to-var2406 var472)))) ; Cond: $r4 != $r3 
(define-const var2582 (Array Int Int) var3820) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1029!1 (Array Int (Array Int Int)))
(assert (not (= var1029!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1029!1 0) var2582)) ; Statement: $r53[0] = $r55 
(define-const var278 var3474 (databaseTerm/1074764847 var2481)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1351 var2406 (var3474_getValue/1633538672 var278)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var228 var121 var121-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1351 (cast-from-var121-to-var2406 var228))))) ; Negate: Cond: $r8 != $r7  
(define-const var3695 (Array Int Int) var3820) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3747!1 (Array Int (Array Int Int)))
(assert (not (= var3747!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!1 1) var3695)) ; Statement: r0[1] = $r56 
(declare-const var3747!2 (Array Int (Array Int Int)))
(assert (not (= var3747!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!2 2) var1106)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3736 (Array Int Int) (s2b/-450202684 var2481 var1548)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3747!3 (Array Int (Array Int Int)))
(assert (not (= var3747!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!3 3) var3736)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2451 Int (getColumnType/800489773 var2481 var1973 var2279 var3998 var3751)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1681 String (String_valueOf/1240665136 var2451)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2672 (Array Int Int) (s2b/-450202684 var2481 var1681)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3747!4 (Array Int (Array Int Int)))
(assert (not (= var3747!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!4 4) var2672)) ; Statement: r0[4] = $r13 
(define-const var3776 var1217 (mysqlType/-289055874 var303)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1132 var1217 var1217-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3776 var1132))) ; Cond: $r16 != $r15 
(define-const var3624 var1217 (mysqlType/-289055874 var303)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var457 Int (getJdbcType/389098195 var3624)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var836 Int (cast-from-Int-to-Int var457)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1907 String (Int_toString/-1770815874 var836)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var280 (Array Int Int) (getBytes/1068683673 var1907)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3747!5 (Array Int (Array Int Int)))
(assert (not (= var3747!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!5 5) var280)) ; Statement: r0[5] = $r58 
(define-const var2122 var1217 (mysqlType/-289055874 var303)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var394 String (getName/1307715079 var2122)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1931 (Array Int Int) (s2b/-450202684 var2481 var394)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3747!6 (Array Int (Array Int Int)))
(assert (not (= var3747!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!6 6) var1931)) ; Statement: r0[6] = $r61 
(define-const var450 Int (datetimePrecision/-289055874 var303)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var450 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var2533 Int (columnSize/-289055874 var303)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3527 String (toString/483301002 var2533)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3969 (Array Int Int) (s2b/-450202684 var2481 var3527)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3747!7 (Array Int (Array Int Int)))
(assert (not (= var3747!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!7 7) var3969)) ; Statement: r0[7] = $r63 
(define-const var3688 Int (columnSize/-289055874 var303)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3688 null-Int))) ; Cond: $r20 != null 
(define-const var131 Int (columnSize/-289055874 var303)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var62 String (toString/483301002 var131)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3566 (Array Int Int) (s2b/-450202684 var2481 var62)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var3747!8 (Array Int (Array Int Int)))
(assert (not (= var3747!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!8 8) var3566)) ; Statement: r0[8] = $r64 
(define-const var1370 Int (decimalDigits/-289055874 var303)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1370 null-Int))) ; Cond: $r23 != null 
(define-const var3968 Int (decimalDigits/-289055874 var303)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var442 String (toString/483301002 var3968)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3466 (Array Int Int) (s2b/-450202684 var2481 var442)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3747!9 (Array Int (Array Int Int)))
(assert (not (= var3747!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!9 9) var3466)) ; Statement: r0[9] = $r65 
(define-const var2540 Int (numPrecRadix/-289055874 var303)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3305 String (Int_toString/1350422511 var2540)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2729 (Array Int Int) (s2b/-450202684 var2481 var3305)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3747!10 (Array Int (Array Int Int)))
(assert (not (= var3747!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3747!10 10) var2729)) ; Statement: r0[10] = $r27 
(define-const var181 Int (nullability/-289055874 var303)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var181 2)) (and (not (= var181 1)) (and (not (= var181 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3330 String (var3199_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var375 var2370 (getExceptionInterceptor/-1244810802 var2481)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3871 var3089 (var3113_createSQLException/-1268047242 var3330 "S1000" var375)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3474_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var121-to-var2406=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3199_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3113_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var988=com.mysql.cj.jdbc.DatabaseMetaData, var2481=r1, var1106=r9, var3820=r5, var1548=r10, var3855=null_type, var1973=z1, var2279=z2, var3998=z3, var3150=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var303=r14, var3751=z0, var1499=i4, var1445=$r54, var3747=r0, var1029=$r53, var3474=com.mysql.cj.conf.RuntimeProperty, var3822=$r2, var2406=java.lang.Object, var2492=$r4, var121=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var472=$r3, var2582=$r55, var278=$r6, var1351=$r8, var228=$r7, var3695=$r56, var3736=$r11, var2451=$i0, var1681=$r12, var2672=$r13, var1217=com.mysql.cj.MysqlType, var3776=$r16, var1132=$r15, var3624=$r17, var457=$i1, var836=$s5, var1907=$r57, var280=$r58, var2122=$r59, var394=$r60, var1931=$r61, var450=$r62, var2533=$r51, var3527=$r52, var3969=$r63, var3688=$r20, var131=$r21, var62=$r22, var3566=$r64, var1370=$r23, var3968=$r24, var442=$r25, var3466=$r65, var2540=$i2, var3305=$r26, var2729=$r27, var181=$i3, var3199=com.mysql.cj.Messages, var3330=$r49, var2370=com.mysql.cj.exceptions.ExceptionInterceptor, var375=$r48, var3089=java.sql.SQLException, var3113=com.mysql.cj.jdbc.exceptions.SQLError, var3871=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var988, r1=var2481, r9=var1106, r5=var3820, r10=var1548, null_type=var3855, z1=var1973, z2=var2279, z3=var3998, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3150, r14=var303, z0=var3751, i4=var1499, $r54=var1445, r0=var3747, $r53=var1029, com.mysql.cj.conf.RuntimeProperty=var3474, $r2=var3822, java.lang.Object=var2406, $r4=var2492, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var121, $r3=var472, $r55=var2582, $r6=var278, $r8=var1351, $r7=var228, $r56=var3695, $r11=var3736, $i0=var2451, $r12=var1681, $r13=var2672, com.mysql.cj.MysqlType=var1217, $r16=var3776, $r15=var1132, $r17=var3624, $i1=var457, $s5=var836, $r57=var1907, $r58=var280, $r59=var2122, $r60=var394, $r61=var1931, $r62=var450, $r51=var2533, $r52=var3527, $r63=var3969, $r20=var3688, $r21=var131, $r22=var62, $r64=var3566, $r23=var1370, $r24=var3968, $r25=var442, $r65=var3466, $i2=var2540, $r26=var3305, $r27=var2729, $i3=var181, com.mysql.cj.Messages=var3199, $r49=var3330, com.mysql.cj.exceptions.ExceptionInterceptor=var2370, $r48=var375, java.sql.SQLException=var3089, com.mysql.cj.jdbc.exceptions.SQLError=var3113, $r50=var3871}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16