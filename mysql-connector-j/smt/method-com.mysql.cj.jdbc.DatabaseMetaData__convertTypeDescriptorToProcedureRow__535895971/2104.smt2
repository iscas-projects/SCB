(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1427 0)
(declare-sort var3750 0)
(declare-sort var2743 0)
(declare-sort var568 0)
(declare-sort var2248 0)
(declare-sort var1540 0)
(declare-sort var1619 0)
(declare-sort var2993 0)
(declare-sort var2595 0)
(declare-sort var2626 0)
(declare-sort var1375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1427) var568)
(declare-fun var568_getValue/1633538672 (var568) var2248)
(declare-fun cast-from-var1540-to-var2248 (var1540) var2248)
(declare-fun s2b/-450202684 (var1427 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1427 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2743) var1619)
(declare-fun getJdbcType/389098195 (var1619) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1619) String)
(declare-fun datetimePrecision/-289055874 (var2743) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var2743) Int)
(declare-fun decimalDigits/-289055874 (var2743) Int)
(declare-fun numPrecRadix/-289055874 (var2743) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2743) Int)
(declare-fun var2993_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1427) var2595)
(declare-fun var1375_createSQLException/-1268047242 (String String var2595) var2626)
(declare-const null-var1427 var1427)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2743 var2743)
(declare-const null-Int Int)
(declare-const var1540-SCHEMA var1540)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1619-YEAR var1619)
(declare-const var389 var1427) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var389 null-var1427)))
(declare-const var3291 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3291 null-__Array__Int__Int__)))
(declare-const var1973 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1973 null-__Array__Int__Int__)))
(declare-const var3910 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3910 null-String)))
(declare-const var3278 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3278 null-Bool)))
(declare-const var2885 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2885 null-Bool)))
(declare-const var2227 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2227 null-Bool)))
(declare-const var1555 var2743) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1555 null-var2743)))
(declare-const var2433 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2433 null-Bool)))
(declare-const var809 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var809 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var2433 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1741 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1588 (Array Int (Array Int Int)) var1741) ; Statement: r0 = $r54 
(define-const var1123 (Array Int (Array Int Int)) var1741) ; Statement: $r53 = $r54 
(define-const var1961 var568 (databaseTerm/1074764847 var389)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var223 var2248 (var568_getValue/1633538672 var1961)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2541 var1540 var1540-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var223 (cast-from-var1540-to-var2248 var2541)))) ; Cond: $r4 != $r3 
(define-const var3933 (Array Int Int) var1973) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1123!1 (Array Int (Array Int Int)))
(assert (not (= var1123!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1123!1 0) var3933)) ; Statement: $r53[0] = $r55 
(define-const var316 var568 (databaseTerm/1074764847 var389)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var129 var2248 (var568_getValue/1633538672 var316)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var471 var1540 var1540-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var129 (cast-from-var1540-to-var2248 var471)))) ; Cond: $r8 != $r7 
(define-const var3995 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1588!1 (Array Int (Array Int Int)))
(assert (not (= var1588!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!1 1) var3995)) ; Statement: r0[1] = $r56 
(declare-const var1588!2 (Array Int (Array Int Int)))
(assert (not (= var1588!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!2 2) var3291)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3909 (Array Int Int) (s2b/-450202684 var389 var3910)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1588!3 (Array Int (Array Int Int)))
(assert (not (= var1588!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!3 3) var3909)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2634 Int (getColumnType/800489773 var389 var3278 var2885 var2227 var2433)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2288 String (String_valueOf/1240665136 var2634)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3702 (Array Int Int) (s2b/-450202684 var389 var2288)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1588!4 (Array Int (Array Int Int)))
(assert (not (= var1588!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!4 4) var3702)) ; Statement: r0[4] = $r13 
(define-const var2106 var1619 (mysqlType/-289055874 var1555)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3186 var1619 var1619-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2106 var3186))) ; Cond: $r16 != $r15 
(define-const var3405 var1619 (mysqlType/-289055874 var1555)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3790 Int (getJdbcType/389098195 var3405)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2112 Int (cast-from-Int-to-Int var3790)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var131 String (Int_toString/-1770815874 var2112)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2134 (Array Int Int) (getBytes/1068683673 var131)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1588!5 (Array Int (Array Int Int)))
(assert (not (= var1588!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!5 5) var2134)) ; Statement: r0[5] = $r58 
(define-const var3884 var1619 (mysqlType/-289055874 var1555)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2572 String (getName/1307715079 var3884)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var593 (Array Int Int) (s2b/-450202684 var389 var2572)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1588!6 (Array Int (Array Int Int)))
(assert (not (= var1588!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!6 6) var593)) ; Statement: r0[6] = $r61 
(define-const var2558 Int (datetimePrecision/-289055874 var1555)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2558 null-Int))) ; Cond: $r62 != null 
(define-const var2562 Int (datetimePrecision/-289055874 var1555)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1632 String (toString/483301002 var2562)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3675 (Array Int Int) (s2b/-450202684 var389 var1632)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1588!7 (Array Int (Array Int Int)))
(assert (not (= var1588!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!7 7) var3675)) ; Statement: r0[7] = $r63 
(define-const var51 Int (columnSize/-289055874 var1555)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var51 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var2113 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var1588!8 (Array Int (Array Int Int)))
(assert (not (= var1588!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!8 8) var2113)) ; Statement: r0[8] = $r64 
(define-const var1380 Int (decimalDigits/-289055874 var1555)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1380 null-Int))) ; Cond: $r23 != null 
(define-const var1689 Int (decimalDigits/-289055874 var1555)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1530 String (toString/483301002 var1689)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3740 (Array Int Int) (s2b/-450202684 var389 var1530)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var1588!9 (Array Int (Array Int Int)))
(assert (not (= var1588!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!9 9) var3740)) ; Statement: r0[9] = $r65 
(define-const var2241 Int (numPrecRadix/-289055874 var1555)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1661 String (Int_toString/1350422511 var2241)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3837 (Array Int Int) (s2b/-450202684 var389 var1661)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1588!10 (Array Int (Array Int Int)))
(assert (not (= var1588!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1588!10 10) var3837)) ; Statement: r0[10] = $r27 
(define-const var1159 Int (nullability/-289055874 var1555)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1159 2)) (and (not (= var1159 1)) (and (not (= var1159 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var1770 String (var2993_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3097 var2595 (getExceptionInterceptor/-1244810802 var389)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var784 var2626 (var1375_createSQLException/-1268047242 var1770 "S1000" var3097)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var568_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1540-to-var2248=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2993_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1375_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1427=com.mysql.cj.jdbc.DatabaseMetaData, var389=r1, var3291=r9, var1973=r5, var3910=r10, var3750=null_type, var3278=z1, var2885=z2, var2227=z3, var2743=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1555=r14, var2433=z0, var809=i4, var1741=$r54, var1588=r0, var1123=$r53, var568=com.mysql.cj.conf.RuntimeProperty, var1961=$r2, var2248=java.lang.Object, var223=$r4, var1540=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2541=$r3, var3933=$r55, var316=$r6, var129=$r8, var471=$r7, var3995=$r56, var3909=$r11, var2634=$i0, var2288=$r12, var3702=$r13, var1619=com.mysql.cj.MysqlType, var2106=$r16, var3186=$r15, var3405=$r17, var3790=$i1, var2112=$s5, var131=$r57, var2134=$r58, var3884=$r59, var2572=$r60, var593=$r61, var2558=$r62, var2562=$r18, var1632=$r19, var3675=$r63, var51=$r20, var2113=$r64, var1380=$r23, var1689=$r24, var1530=$r25, var3740=$r65, var2241=$i2, var1661=$r26, var3837=$r27, var1159=$i3, var2993=com.mysql.cj.Messages, var1770=$r49, var2595=com.mysql.cj.exceptions.ExceptionInterceptor, var3097=$r48, var2626=java.sql.SQLException, var1375=com.mysql.cj.jdbc.exceptions.SQLError, var784=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1427, r1=var389, r9=var3291, r5=var1973, r10=var3910, null_type=var3750, z1=var3278, z2=var2885, z3=var2227, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2743, r14=var1555, z0=var2433, i4=var809, $r54=var1741, r0=var1588, $r53=var1123, com.mysql.cj.conf.RuntimeProperty=var568, $r2=var1961, java.lang.Object=var2248, $r4=var223, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1540, $r3=var2541, $r55=var3933, $r6=var316, $r8=var129, $r7=var471, $r56=var3995, $r11=var3909, $i0=var2634, $r12=var2288, $r13=var3702, com.mysql.cj.MysqlType=var1619, $r16=var2106, $r15=var3186, $r17=var3405, $i1=var3790, $s5=var2112, $r57=var131, $r58=var2134, $r59=var3884, $r60=var2572, $r61=var593, $r62=var2558, $r18=var2562, $r19=var1632, $r63=var3675, $r20=var51, $r64=var2113, $r23=var1380, $r24=var1689, $r25=var1530, $r65=var3740, $i2=var2241, $r26=var1661, $r27=var3837, $i3=var1159, com.mysql.cj.Messages=var2993, $r49=var1770, com.mysql.cj.exceptions.ExceptionInterceptor=var2595, $r48=var3097, java.sql.SQLException=var2626, com.mysql.cj.jdbc.exceptions.SQLError=var1375, $r50=var784}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16