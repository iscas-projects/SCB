(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2986 0)
(declare-sort var2276 0)
(declare-sort var1373 0)
(declare-sort var3963 0)
(declare-sort var2055 0)
(declare-sort var1553 0)
(declare-sort var1965 0)
(declare-sort var910 0)
(declare-sort var539 0)
(declare-sort var632 0)
(declare-sort var3217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2986) var3963)
(declare-fun var3963_getValue/1633538672 (var3963) var2055)
(declare-fun cast-from-var1553-to-var2055 (var1553) var2055)
(declare-fun s2b/-450202684 (var2986 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2986 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1373) var1965)
(declare-fun getJdbcType/389098195 (var1965) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1965) String)
(declare-fun datetimePrecision/-289055874 (var1373) Int)
(declare-fun columnSize/-289055874 (var1373) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var1373) Int)
(declare-fun numPrecRadix/-289055874 (var1373) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1373) Int)
(declare-fun var910_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2986) var539)
(declare-fun var3217_createSQLException/-1268047242 (String String var539) var632)
(declare-const null-var2986 var2986)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1373 var1373)
(declare-const null-Int Int)
(declare-const var1553-SCHEMA var1553)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1965-YEAR var1965)
(declare-const var2213 var2986) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2213 null-var2986)))
(declare-const var1149 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1149 null-__Array__Int__Int__)))
(declare-const var123 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var123 null-__Array__Int__Int__)))
(declare-const var897 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var897 null-String)))
(declare-const var3285 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3285 null-Bool)))
(declare-const var2739 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2739 null-Bool)))
(declare-const var944 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var944 null-Bool)))
(declare-const var322 var1373) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var322 null-var1373)))
(declare-const var1303 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1303 null-Bool)))
(declare-const var1249 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1249 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1303 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3566 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1180 (Array Int (Array Int Int)) var3566) ; Statement: r0 = $r54 
(define-const var2766 (Array Int (Array Int Int)) var3566) ; Statement: $r53 = $r54 
(define-const var3608 var3963 (databaseTerm/1074764847 var2213)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1539 var2055 (var3963_getValue/1633538672 var3608)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var824 var1553 var1553-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1539 (cast-from-var1553-to-var2055 var824))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3823 (Array Int Int) (s2b/-450202684 var2213 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2766!1 (Array Int (Array Int Int)))
(assert (not (= var2766!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2766!1 0) var3823)) ; Statement: $r53[0] = $r55 
(define-const var3928 var3963 (databaseTerm/1074764847 var2213)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var851 var2055 (var3963_getValue/1633538672 var3928)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1730 var1553 var1553-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var851 (cast-from-var1553-to-var2055 var1730)))) ; Cond: $r8 != $r7 
(define-const var2306 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1180!1 (Array Int (Array Int Int)))
(assert (not (= var1180!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!1 1) var2306)) ; Statement: r0[1] = $r56 
(declare-const var1180!2 (Array Int (Array Int Int)))
(assert (not (= var1180!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!2 2) var1149)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3606 (Array Int Int) (s2b/-450202684 var2213 var897)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1180!3 (Array Int (Array Int Int)))
(assert (not (= var1180!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!3 3) var3606)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1923 Int (getColumnType/800489773 var2213 var3285 var2739 var944 var1303)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3641 String (String_valueOf/1240665136 var1923)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1819 (Array Int Int) (s2b/-450202684 var2213 var3641)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1180!4 (Array Int (Array Int Int)))
(assert (not (= var1180!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!4 4) var1819)) ; Statement: r0[4] = $r13 
(define-const var1085 var1965 (mysqlType/-289055874 var322)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3504 var1965 var1965-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1085 var3504))) ; Cond: $r16 != $r15 
(define-const var2294 var1965 (mysqlType/-289055874 var322)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1219 Int (getJdbcType/389098195 var2294)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3842 Int (cast-from-Int-to-Int var1219)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1217 String (Int_toString/-1770815874 var3842)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var217 (Array Int Int) (getBytes/1068683673 var1217)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1180!5 (Array Int (Array Int Int)))
(assert (not (= var1180!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!5 5) var217)) ; Statement: r0[5] = $r58 
(define-const var3241 var1965 (mysqlType/-289055874 var322)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2015 String (getName/1307715079 var3241)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var926 (Array Int Int) (s2b/-450202684 var2213 var2015)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1180!6 (Array Int (Array Int Int)))
(assert (not (= var1180!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!6 6) var926)) ; Statement: r0[6] = $r61 
(define-const var3747 Int (datetimePrecision/-289055874 var322)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var3747 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3366 Int (columnSize/-289055874 var322)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2017 String (toString/483301002 var3366)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1066 (Array Int Int) (s2b/-450202684 var2213 var2017)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var1180!7 (Array Int (Array Int Int)))
(assert (not (= var1180!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!7 7) var1066)) ; Statement: r0[7] = $r63 
(define-const var580 Int (columnSize/-289055874 var322)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var580 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var3776 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var1180!8 (Array Int (Array Int Int)))
(assert (not (= var1180!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!8 8) var3776)) ; Statement: r0[8] = $r64 
(define-const var7 Int (decimalDigits/-289055874 var322)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var7 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var394 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var1180!9 (Array Int (Array Int Int)))
(assert (not (= var1180!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!9 9) var394)) ; Statement: r0[9] = $r65 
(define-const var1486 Int (numPrecRadix/-289055874 var322)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1609 String (Int_toString/1350422511 var1486)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var560 (Array Int Int) (s2b/-450202684 var2213 var1609)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1180!10 (Array Int (Array Int Int)))
(assert (not (= var1180!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1180!10 10) var560)) ; Statement: r0[10] = $r27 
(define-const var802 Int (nullability/-289055874 var322)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var802 2)) (and (not (= var802 1)) (and (not (= var802 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var522 String (var910_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2397 var539 (getExceptionInterceptor/-1244810802 var2213)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1001 var632 (var3217_createSQLException/-1268047242 var522 "S1000" var2397)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3963_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1553-to-var2055=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var910_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3217_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2986=com.mysql.cj.jdbc.DatabaseMetaData, var2213=r1, var1149=r9, var123=r5, var897=r10, var2276=null_type, var3285=z1, var2739=z2, var944=z3, var1373=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var322=r14, var1303=z0, var1249=i4, var3566=$r54, var1180=r0, var2766=$r53, var3963=com.mysql.cj.conf.RuntimeProperty, var3608=$r2, var2055=java.lang.Object, var1539=$r4, var1553=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var824=$r3, var3823=$r55, var3928=$r6, var851=$r8, var1730=$r7, var2306=$r56, var3606=$r11, var1923=$i0, var3641=$r12, var1819=$r13, var1965=com.mysql.cj.MysqlType, var1085=$r16, var3504=$r15, var2294=$r17, var1219=$i1, var3842=$s5, var1217=$r57, var217=$r58, var3241=$r59, var2015=$r60, var926=$r61, var3747=$r62, var3366=$r51, var2017=$r52, var1066=$r63, var580=$r20, var3776=$r64, var7=$r23, var394=$r65, var1486=$i2, var1609=$r26, var560=$r27, var802=$i3, var910=com.mysql.cj.Messages, var522=$r49, var539=com.mysql.cj.exceptions.ExceptionInterceptor, var2397=$r48, var632=java.sql.SQLException, var3217=com.mysql.cj.jdbc.exceptions.SQLError, var1001=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2986, r1=var2213, r9=var1149, r5=var123, r10=var897, null_type=var2276, z1=var3285, z2=var2739, z3=var944, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1373, r14=var322, z0=var1303, i4=var1249, $r54=var3566, r0=var1180, $r53=var2766, com.mysql.cj.conf.RuntimeProperty=var3963, $r2=var3608, java.lang.Object=var2055, $r4=var1539, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1553, $r3=var824, $r55=var3823, $r6=var3928, $r8=var851, $r7=var1730, $r56=var2306, $r11=var3606, $i0=var1923, $r12=var3641, $r13=var1819, com.mysql.cj.MysqlType=var1965, $r16=var1085, $r15=var3504, $r17=var2294, $i1=var1219, $s5=var3842, $r57=var1217, $r58=var217, $r59=var3241, $r60=var2015, $r61=var926, $r62=var3747, $r51=var3366, $r52=var2017, $r63=var1066, $r20=var580, $r64=var3776, $r23=var7, $r65=var394, $i2=var1486, $r26=var1609, $r27=var560, $i3=var802, com.mysql.cj.Messages=var910, $r49=var522, com.mysql.cj.exceptions.ExceptionInterceptor=var539, $r48=var2397, java.sql.SQLException=var632, com.mysql.cj.jdbc.exceptions.SQLError=var3217, $r50=var1001}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16