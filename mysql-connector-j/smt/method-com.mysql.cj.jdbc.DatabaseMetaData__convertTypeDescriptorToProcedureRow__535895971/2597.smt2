(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3144 0)
(declare-sort var1612 0)
(declare-sort var660 0)
(declare-sort var3554 0)
(declare-sort var2377 0)
(declare-sort var2290 0)
(declare-sort var2007 0)
(declare-sort var1102 0)
(declare-sort var2943 0)
(declare-sort var2997 0)
(declare-sort var2541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3144) var3554)
(declare-fun var3554_getValue/1633538672 (var3554) var2377)
(declare-fun cast-from-var2290-to-var2377 (var2290) var2377)
(declare-fun s2b/-450202684 (var3144 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3144 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var660) var2007)
(declare-fun getJdbcType/389098195 (var2007) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2007) String)
(declare-fun datetimePrecision/-289055874 (var660) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var660) Int)
(declare-fun decimalDigits/-289055874 (var660) Int)
(declare-fun numPrecRadix/-289055874 (var660) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var660) Int)
(declare-fun var1102_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3144) var2943)
(declare-fun var2541_createSQLException/-1268047242 (String String var2943) var2997)
(declare-const null-var3144 var3144)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var660 var660)
(declare-const null-Int Int)
(declare-const var2290-SCHEMA var2290)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2007-YEAR var2007)
(declare-const var1496 var3144) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1496 null-var3144)))
(declare-const var2465 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2465 null-__Array__Int__Int__)))
(declare-const var41 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var41 null-__Array__Int__Int__)))
(declare-const var1185 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1185 null-String)))
(declare-const var2925 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2925 null-Bool)))
(declare-const var3439 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3439 null-Bool)))
(declare-const var2295 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2295 null-Bool)))
(declare-const var2518 var660) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2518 null-var660)))
(declare-const var651 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var651 null-Bool)))
(declare-const var2929 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2929 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var651 1 0) 0)) ; Cond: z0 == 0 
(define-const var397 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2362 (Array Int (Array Int Int)) var397) ; Statement: r0 = $r54 
(define-const var2048 (Array Int (Array Int Int)) var397) ; Statement: $r53 = $r54 
(define-const var1153 var3554 (databaseTerm/1074764847 var1496)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var454 var2377 (var3554_getValue/1633538672 var1153)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1145 var2290 var2290-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var454 (cast-from-var2290-to-var2377 var1145)))) ; Cond: $r4 != $r3 
(define-const var3995 (Array Int Int) var41) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var2048!1 (Array Int (Array Int Int)))
(assert (not (= var2048!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2048!1 0) var3995)) ; Statement: $r53[0] = $r55 
(define-const var204 var3554 (databaseTerm/1074764847 var1496)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var126 var2377 (var3554_getValue/1633538672 var204)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2467 var2290 var2290-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var126 (cast-from-var2290-to-var2377 var2467)))) ; Cond: $r8 != $r7 
(define-const var3247 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var2362!1 (Array Int (Array Int Int)))
(assert (not (= var2362!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!1 1) var3247)) ; Statement: r0[1] = $r56 
(declare-const var2362!2 (Array Int (Array Int Int)))
(assert (not (= var2362!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!2 2) var2465)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2779 (Array Int Int) (s2b/-450202684 var1496 var1185)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2362!3 (Array Int (Array Int Int)))
(assert (not (= var2362!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!3 3) var2779)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var874 Int (getColumnType/800489773 var1496 var2925 var3439 var2295 var651)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var580 String (String_valueOf/1240665136 var874)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1022 (Array Int Int) (s2b/-450202684 var1496 var580)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2362!4 (Array Int (Array Int Int)))
(assert (not (= var2362!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!4 4) var1022)) ; Statement: r0[4] = $r13 
(define-const var1562 var2007 (mysqlType/-289055874 var2518)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var994 var2007 var2007-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1562 var994))) ; Cond: $r16 != $r15 
(define-const var865 var2007 (mysqlType/-289055874 var2518)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2280 Int (getJdbcType/389098195 var865)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var561 Int (cast-from-Int-to-Int var2280)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1878 String (Int_toString/-1770815874 var561)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1352 (Array Int Int) (getBytes/1068683673 var1878)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2362!5 (Array Int (Array Int Int)))
(assert (not (= var2362!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!5 5) var1352)) ; Statement: r0[5] = $r58 
(define-const var3852 var2007 (mysqlType/-289055874 var2518)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1536 String (getName/1307715079 var3852)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var514 (Array Int Int) (s2b/-450202684 var1496 var1536)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2362!6 (Array Int (Array Int Int)))
(assert (not (= var2362!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!6 6) var514)) ; Statement: r0[6] = $r61 
(define-const var3920 Int (datetimePrecision/-289055874 var2518)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3920 null-Int))) ; Cond: $r62 != null 
(define-const var3981 Int (datetimePrecision/-289055874 var2518)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1150 String (toString/483301002 var3981)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var762 (Array Int Int) (s2b/-450202684 var1496 var1150)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var2362!7 (Array Int (Array Int Int)))
(assert (not (= var2362!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!7 7) var762)) ; Statement: r0[7] = $r63 
(define-const var3949 Int (columnSize/-289055874 var2518)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3949 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1565 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var2362!8 (Array Int (Array Int Int)))
(assert (not (= var2362!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!8 8) var1565)) ; Statement: r0[8] = $r64 
(define-const var1476 Int (decimalDigits/-289055874 var2518)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var1476 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var2150 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2362!9 (Array Int (Array Int Int)))
(assert (not (= var2362!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!9 9) var2150)) ; Statement: r0[9] = $r65 
(define-const var974 Int (numPrecRadix/-289055874 var2518)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1832 String (Int_toString/1350422511 var974)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var200 (Array Int Int) (s2b/-450202684 var1496 var1832)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2362!10 (Array Int (Array Int Int)))
(assert (not (= var2362!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2362!10 10) var200)) ; Statement: r0[10] = $r27 
(define-const var2702 Int (nullability/-289055874 var2518)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2702 2)) (and (not (= var2702 1)) (and (not (= var2702 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var822 String (var1102_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3316 var2943 (getExceptionInterceptor/-1244810802 var1496)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var419 var2997 (var2541_createSQLException/-1268047242 var822 "S1000" var3316)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3554_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2290-to-var2377=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1102_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2541_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3144=com.mysql.cj.jdbc.DatabaseMetaData, var1496=r1, var2465=r9, var41=r5, var1185=r10, var1612=null_type, var2925=z1, var3439=z2, var2295=z3, var660=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2518=r14, var651=z0, var2929=i4, var397=$r54, var2362=r0, var2048=$r53, var3554=com.mysql.cj.conf.RuntimeProperty, var1153=$r2, var2377=java.lang.Object, var454=$r4, var2290=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1145=$r3, var3995=$r55, var204=$r6, var126=$r8, var2467=$r7, var3247=$r56, var2779=$r11, var874=$i0, var580=$r12, var1022=$r13, var2007=com.mysql.cj.MysqlType, var1562=$r16, var994=$r15, var865=$r17, var2280=$i1, var561=$s5, var1878=$r57, var1352=$r58, var3852=$r59, var1536=$r60, var514=$r61, var3920=$r62, var3981=$r18, var1150=$r19, var762=$r63, var3949=$r20, var1565=$r64, var1476=$r23, var2150=$r65, var974=$i2, var1832=$r26, var200=$r27, var2702=$i3, var1102=com.mysql.cj.Messages, var822=$r49, var2943=com.mysql.cj.exceptions.ExceptionInterceptor, var3316=$r48, var2997=java.sql.SQLException, var2541=com.mysql.cj.jdbc.exceptions.SQLError, var419=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3144, r1=var1496, r9=var2465, r5=var41, r10=var1185, null_type=var1612, z1=var2925, z2=var3439, z3=var2295, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var660, r14=var2518, z0=var651, i4=var2929, $r54=var397, r0=var2362, $r53=var2048, com.mysql.cj.conf.RuntimeProperty=var3554, $r2=var1153, java.lang.Object=var2377, $r4=var454, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2290, $r3=var1145, $r55=var3995, $r6=var204, $r8=var126, $r7=var2467, $r56=var3247, $r11=var2779, $i0=var874, $r12=var580, $r13=var1022, com.mysql.cj.MysqlType=var2007, $r16=var1562, $r15=var994, $r17=var865, $i1=var2280, $s5=var561, $r57=var1878, $r58=var1352, $r59=var3852, $r60=var1536, $r61=var514, $r62=var3920, $r18=var3981, $r19=var1150, $r63=var762, $r20=var3949, $r64=var1565, $r23=var1476, $r65=var2150, $i2=var974, $r26=var1832, $r27=var200, $i3=var2702, com.mysql.cj.Messages=var1102, $r49=var822, com.mysql.cj.exceptions.ExceptionInterceptor=var2943, $r48=var3316, java.sql.SQLException=var2997, com.mysql.cj.jdbc.exceptions.SQLError=var2541, $r50=var419}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16