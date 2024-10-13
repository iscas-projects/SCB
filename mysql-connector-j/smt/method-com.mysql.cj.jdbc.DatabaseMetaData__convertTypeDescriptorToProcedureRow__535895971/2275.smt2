(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1162 0)
(declare-sort var1410 0)
(declare-sort var3827 0)
(declare-sort var1444 0)
(declare-sort var1066 0)
(declare-sort var2467 0)
(declare-sort var1728 0)
(declare-sort var2345 0)
(declare-sort var774 0)
(declare-sort var466 0)
(declare-sort var1533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1162) var1444)
(declare-fun var1444_getValue/1633538672 (var1444) var1066)
(declare-fun cast-from-var2467-to-var1066 (var2467) var1066)
(declare-fun s2b/-450202684 (var1162 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1162 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3827) var1728)
(declare-fun getJdbcType/389098195 (var1728) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1728) String)
(declare-fun datetimePrecision/-289055874 (var3827) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3827) Int)
(declare-fun decimalDigits/-289055874 (var3827) Int)
(declare-fun numPrecRadix/-289055874 (var3827) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3827) Int)
(declare-fun var2345_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1162) var774)
(declare-fun var1533_createSQLException/-1268047242 (String String var774) var466)
(declare-const null-var1162 var1162)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3827 var3827)
(declare-const null-Int Int)
(declare-const var2467-SCHEMA var2467)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1728-YEAR var1728)
(declare-const var1217 var1162) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1217 null-var1162)))
(declare-const var847 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var847 null-__Array__Int__Int__)))
(declare-const var348 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var348 null-__Array__Int__Int__)))
(declare-const var2120 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2120 null-String)))
(declare-const var749 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var749 null-Bool)))
(declare-const var2962 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2962 null-Bool)))
(declare-const var548 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var548 null-Bool)))
(declare-const var3618 var3827) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3618 null-var3827)))
(declare-const var1609 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1609 null-Bool)))
(declare-const var3721 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3721 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1609 1 0) 0)) ; Cond: z0 == 0 
(define-const var1572 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var3272 (Array Int (Array Int Int)) var1572) ; Statement: r0 = $r54 
(define-const var1761 (Array Int (Array Int Int)) var1572) ; Statement: $r53 = $r54 
(define-const var3628 var1444 (databaseTerm/1074764847 var1217)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2187 var1066 (var1444_getValue/1633538672 var3628)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var4 var2467 var2467-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var2187 (cast-from-var2467-to-var1066 var4))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3592 (Array Int Int) (s2b/-450202684 var1217 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1761!1 (Array Int (Array Int Int)))
(assert (not (= var1761!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1761!1 0) var3592)) ; Statement: $r53[0] = $r55 
(define-const var1375 var1444 (databaseTerm/1074764847 var1217)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var559 var1066 (var1444_getValue/1633538672 var1375)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3015 var2467 var2467-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var559 (cast-from-var2467-to-var1066 var3015))))) ; Negate: Cond: $r8 != $r7  
(define-const var3873 (Array Int Int) var348) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3272!1 (Array Int (Array Int Int)))
(assert (not (= var3272!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!1 1) var3873)) ; Statement: r0[1] = $r56 
(declare-const var3272!2 (Array Int (Array Int Int)))
(assert (not (= var3272!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!2 2) var847)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2955 (Array Int Int) (s2b/-450202684 var1217 var2120)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3272!3 (Array Int (Array Int Int)))
(assert (not (= var3272!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!3 3) var2955)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1450 Int (getColumnType/800489773 var1217 var749 var2962 var548 var1609)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2652 String (String_valueOf/1240665136 var1450)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2084 (Array Int Int) (s2b/-450202684 var1217 var2652)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3272!4 (Array Int (Array Int Int)))
(assert (not (= var3272!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!4 4) var2084)) ; Statement: r0[4] = $r13 
(define-const var3604 var1728 (mysqlType/-289055874 var3618)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var453 var1728 var1728-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3604 var453))) ; Cond: $r16 != $r15 
(define-const var3173 var1728 (mysqlType/-289055874 var3618)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2412 Int (getJdbcType/389098195 var3173)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2817 Int (cast-from-Int-to-Int var2412)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1177 String (Int_toString/-1770815874 var2817)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var711 (Array Int Int) (getBytes/1068683673 var1177)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3272!5 (Array Int (Array Int Int)))
(assert (not (= var3272!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!5 5) var711)) ; Statement: r0[5] = $r58 
(define-const var1972 var1728 (mysqlType/-289055874 var3618)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3769 String (getName/1307715079 var1972)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2340 (Array Int Int) (s2b/-450202684 var1217 var3769)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3272!6 (Array Int (Array Int Int)))
(assert (not (= var3272!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!6 6) var2340)) ; Statement: r0[6] = $r61 
(define-const var2427 Int (datetimePrecision/-289055874 var3618)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2427 null-Int))) ; Cond: $r62 != null 
(define-const var2517 Int (datetimePrecision/-289055874 var3618)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3165 String (toString/483301002 var2517)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2714 (Array Int Int) (s2b/-450202684 var1217 var3165)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var3272!7 (Array Int (Array Int Int)))
(assert (not (= var3272!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!7 7) var2714)) ; Statement: r0[7] = $r63 
(define-const var84 Int (columnSize/-289055874 var3618)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var84 null-Int))) ; Cond: $r20 != null 
(define-const var874 Int (columnSize/-289055874 var3618)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3915 String (toString/483301002 var874)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var899 (Array Int Int) (s2b/-450202684 var1217 var3915)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var3272!8 (Array Int (Array Int Int)))
(assert (not (= var3272!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!8 8) var899)) ; Statement: r0[8] = $r64 
(define-const var2055 Int (decimalDigits/-289055874 var3618)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var2055 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var1937 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var3272!9 (Array Int (Array Int Int)))
(assert (not (= var3272!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!9 9) var1937)) ; Statement: r0[9] = $r65 
(define-const var3926 Int (numPrecRadix/-289055874 var3618)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2600 String (Int_toString/1350422511 var3926)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var179 (Array Int Int) (s2b/-450202684 var1217 var2600)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3272!10 (Array Int (Array Int Int)))
(assert (not (= var3272!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3272!10 10) var179)) ; Statement: r0[10] = $r27 
(define-const var1995 Int (nullability/-289055874 var3618)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1995 2)) (and (not (= var1995 1)) (and (not (= var1995 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2889 String (var2345_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1453 var774 (getExceptionInterceptor/-1244810802 var1217)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1128 var466 (var1533_createSQLException/-1268047242 var2889 "S1000" var1453)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1444_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2467-to-var1066=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2345_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1533_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1162=com.mysql.cj.jdbc.DatabaseMetaData, var1217=r1, var847=r9, var348=r5, var2120=r10, var1410=null_type, var749=z1, var2962=z2, var548=z3, var3827=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3618=r14, var1609=z0, var3721=i4, var1572=$r54, var3272=r0, var1761=$r53, var1444=com.mysql.cj.conf.RuntimeProperty, var3628=$r2, var1066=java.lang.Object, var2187=$r4, var2467=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var4=$r3, var3592=$r55, var1375=$r6, var559=$r8, var3015=$r7, var3873=$r56, var2955=$r11, var1450=$i0, var2652=$r12, var2084=$r13, var1728=com.mysql.cj.MysqlType, var3604=$r16, var453=$r15, var3173=$r17, var2412=$i1, var2817=$s5, var1177=$r57, var711=$r58, var1972=$r59, var3769=$r60, var2340=$r61, var2427=$r62, var2517=$r18, var3165=$r19, var2714=$r63, var84=$r20, var874=$r21, var3915=$r22, var899=$r64, var2055=$r23, var1937=$r65, var3926=$i2, var2600=$r26, var179=$r27, var1995=$i3, var2345=com.mysql.cj.Messages, var2889=$r49, var774=com.mysql.cj.exceptions.ExceptionInterceptor, var1453=$r48, var466=java.sql.SQLException, var1533=com.mysql.cj.jdbc.exceptions.SQLError, var1128=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1162, r1=var1217, r9=var847, r5=var348, r10=var2120, null_type=var1410, z1=var749, z2=var2962, z3=var548, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3827, r14=var3618, z0=var1609, i4=var3721, $r54=var1572, r0=var3272, $r53=var1761, com.mysql.cj.conf.RuntimeProperty=var1444, $r2=var3628, java.lang.Object=var1066, $r4=var2187, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2467, $r3=var4, $r55=var3592, $r6=var1375, $r8=var559, $r7=var3015, $r56=var3873, $r11=var2955, $i0=var1450, $r12=var2652, $r13=var2084, com.mysql.cj.MysqlType=var1728, $r16=var3604, $r15=var453, $r17=var3173, $i1=var2412, $s5=var2817, $r57=var1177, $r58=var711, $r59=var1972, $r60=var3769, $r61=var2340, $r62=var2427, $r18=var2517, $r19=var3165, $r63=var2714, $r20=var84, $r21=var874, $r22=var3915, $r64=var899, $r23=var2055, $r65=var1937, $i2=var3926, $r26=var2600, $r27=var179, $i3=var1995, com.mysql.cj.Messages=var2345, $r49=var2889, com.mysql.cj.exceptions.ExceptionInterceptor=var774, $r48=var1453, java.sql.SQLException=var466, com.mysql.cj.jdbc.exceptions.SQLError=var1533, $r50=var1128}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16