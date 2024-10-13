(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1081 0)
(declare-sort var250 0)
(declare-sort var911 0)
(declare-sort var2517 0)
(declare-sort var1197 0)
(declare-sort var3930 0)
(declare-sort var948 0)
(declare-sort var2356 0)
(declare-sort var1942 0)
(declare-sort var2170 0)
(declare-sort var224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1081) var2517)
(declare-fun var2517_getValue/1633538672 (var2517) var1197)
(declare-fun cast-from-var3930-to-var1197 (var3930) var1197)
(declare-fun s2b/-450202684 (var1081 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1081 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var911) var948)
(declare-fun getJdbcType/389098195 (var948) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var948) String)
(declare-fun datetimePrecision/-289055874 (var911) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var911) Int)
(declare-fun decimalDigits/-289055874 (var911) Int)
(declare-fun numPrecRadix/-289055874 (var911) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var911) Int)
(declare-fun var2356_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1081) var1942)
(declare-fun var224_createSQLException/-1268047242 (String String var1942) var2170)
(declare-const null-var1081 var1081)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var911 var911)
(declare-const null-Int Int)
(declare-const var3930-SCHEMA var3930)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var948-YEAR var948)
(declare-const var779 var1081) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var779 null-var1081)))
(declare-const var764 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var764 null-__Array__Int__Int__)))
(declare-const var3931 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3931 null-__Array__Int__Int__)))
(declare-const var3652 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3652 null-String)))
(declare-const var3570 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3570 null-Bool)))
(declare-const var1808 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1808 null-Bool)))
(declare-const var2709 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2709 null-Bool)))
(declare-const var1612 var911) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1612 null-var911)))
(declare-const var517 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var517 null-Bool)))
(declare-const var2519 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2519 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var517 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1337 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3802 (Array Int (Array Int Int)) var1337) ; Statement: r0 = $r54 
(define-const var1746 (Array Int (Array Int Int)) var1337) ; Statement: $r53 = $r54 
(define-const var2939 var2517 (databaseTerm/1074764847 var779)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3404 var1197 (var2517_getValue/1633538672 var2939)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2224 var3930 var3930-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3404 (cast-from-var3930-to-var1197 var2224)))) ; Cond: $r4 != $r3 
(define-const var2584 (Array Int Int) var3931) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1746!1 (Array Int (Array Int Int)))
(assert (not (= var1746!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1746!1 0) var2584)) ; Statement: $r53[0] = $r55 
(define-const var1850 var2517 (databaseTerm/1074764847 var779)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1105 var1197 (var2517_getValue/1633538672 var1850)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1834 var3930 var3930-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1105 (cast-from-var3930-to-var1197 var1834))))) ; Negate: Cond: $r8 != $r7  
(define-const var807 (Array Int Int) var3931) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3802!1 (Array Int (Array Int Int)))
(assert (not (= var3802!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!1 1) var807)) ; Statement: r0[1] = $r56 
(declare-const var3802!2 (Array Int (Array Int Int)))
(assert (not (= var3802!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!2 2) var764)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1391 (Array Int Int) (s2b/-450202684 var779 var3652)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3802!3 (Array Int (Array Int Int)))
(assert (not (= var3802!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!3 3) var1391)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1839 Int (getColumnType/800489773 var779 var3570 var1808 var2709 var517)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3695 String (String_valueOf/1240665136 var1839)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var29 (Array Int Int) (s2b/-450202684 var779 var3695)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3802!4 (Array Int (Array Int Int)))
(assert (not (= var3802!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!4 4) var29)) ; Statement: r0[4] = $r13 
(define-const var3011 var948 (mysqlType/-289055874 var1612)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var166 var948 var948-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3011 var166))) ; Cond: $r16 != $r15 
(define-const var2596 var948 (mysqlType/-289055874 var1612)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1101 Int (getJdbcType/389098195 var2596)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2831 Int (cast-from-Int-to-Int var1101)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var167 String (Int_toString/-1770815874 var2831)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1587 (Array Int Int) (getBytes/1068683673 var167)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3802!5 (Array Int (Array Int Int)))
(assert (not (= var3802!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!5 5) var1587)) ; Statement: r0[5] = $r58 
(define-const var311 var948 (mysqlType/-289055874 var1612)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2110 String (getName/1307715079 var311)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2878 (Array Int Int) (s2b/-450202684 var779 var2110)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3802!6 (Array Int (Array Int Int)))
(assert (not (= var3802!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!6 6) var2878)) ; Statement: r0[6] = $r61 
(define-const var962 Int (datetimePrecision/-289055874 var1612)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var962 null-Int))) ; Cond: $r62 != null 
(define-const var316 Int (datetimePrecision/-289055874 var1612)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1382 String (toString/483301002 var316)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1973 (Array Int Int) (s2b/-450202684 var779 var1382)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var3802!7 (Array Int (Array Int Int)))
(assert (not (= var3802!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!7 7) var1973)) ; Statement: r0[7] = $r63 
(define-const var2955 Int (columnSize/-289055874 var1612)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2955 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1036 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3802!8 (Array Int (Array Int Int)))
(assert (not (= var3802!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!8 8) var1036)) ; Statement: r0[8] = $r64 
(define-const var973 Int (decimalDigits/-289055874 var1612)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var973 null-Int))) ; Cond: $r23 != null 
(define-const var1895 Int (decimalDigits/-289055874 var1612)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var790 String (toString/483301002 var1895)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var755 (Array Int Int) (s2b/-450202684 var779 var790)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3802!9 (Array Int (Array Int Int)))
(assert (not (= var3802!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!9 9) var755)) ; Statement: r0[9] = $r65 
(define-const var3188 Int (numPrecRadix/-289055874 var1612)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2389 String (Int_toString/1350422511 var3188)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1406 (Array Int Int) (s2b/-450202684 var779 var2389)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3802!10 (Array Int (Array Int Int)))
(assert (not (= var3802!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3802!10 10) var1406)) ; Statement: r0[10] = $r27 
(define-const var521 Int (nullability/-289055874 var1612)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var521 2)) (and (not (= var521 1)) (and (not (= var521 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3699 String (var2356_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3109 var1942 (getExceptionInterceptor/-1244810802 var779)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var915 var2170 (var224_createSQLException/-1268047242 var3699 "S1000" var3109)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2517_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3930-to-var1197=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2356_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var224_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1081=com.mysql.cj.jdbc.DatabaseMetaData, var779=r1, var764=r9, var3931=r5, var3652=r10, var250=null_type, var3570=z1, var1808=z2, var2709=z3, var911=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1612=r14, var517=z0, var2519=i4, var1337=$r54, var3802=r0, var1746=$r53, var2517=com.mysql.cj.conf.RuntimeProperty, var2939=$r2, var1197=java.lang.Object, var3404=$r4, var3930=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2224=$r3, var2584=$r55, var1850=$r6, var1105=$r8, var1834=$r7, var807=$r56, var1391=$r11, var1839=$i0, var3695=$r12, var29=$r13, var948=com.mysql.cj.MysqlType, var3011=$r16, var166=$r15, var2596=$r17, var1101=$i1, var2831=$s5, var167=$r57, var1587=$r58, var311=$r59, var2110=$r60, var2878=$r61, var962=$r62, var316=$r18, var1382=$r19, var1973=$r63, var2955=$r20, var1036=$r64, var973=$r23, var1895=$r24, var790=$r25, var755=$r65, var3188=$i2, var2389=$r26, var1406=$r27, var521=$i3, var2356=com.mysql.cj.Messages, var3699=$r49, var1942=com.mysql.cj.exceptions.ExceptionInterceptor, var3109=$r48, var2170=java.sql.SQLException, var224=com.mysql.cj.jdbc.exceptions.SQLError, var915=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1081, r1=var779, r9=var764, r5=var3931, r10=var3652, null_type=var250, z1=var3570, z2=var1808, z3=var2709, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var911, r14=var1612, z0=var517, i4=var2519, $r54=var1337, r0=var3802, $r53=var1746, com.mysql.cj.conf.RuntimeProperty=var2517, $r2=var2939, java.lang.Object=var1197, $r4=var3404, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3930, $r3=var2224, $r55=var2584, $r6=var1850, $r8=var1105, $r7=var1834, $r56=var807, $r11=var1391, $i0=var1839, $r12=var3695, $r13=var29, com.mysql.cj.MysqlType=var948, $r16=var3011, $r15=var166, $r17=var2596, $i1=var1101, $s5=var2831, $r57=var167, $r58=var1587, $r59=var311, $r60=var2110, $r61=var2878, $r62=var962, $r18=var316, $r19=var1382, $r63=var1973, $r20=var2955, $r64=var1036, $r23=var973, $r24=var1895, $r25=var790, $r65=var755, $i2=var3188, $r26=var2389, $r27=var1406, $i3=var521, com.mysql.cj.Messages=var2356, $r49=var3699, com.mysql.cj.exceptions.ExceptionInterceptor=var1942, $r48=var3109, java.sql.SQLException=var2170, com.mysql.cj.jdbc.exceptions.SQLError=var224, $r50=var915}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16