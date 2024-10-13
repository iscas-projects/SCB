(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3135 0)
(declare-sort var72 0)
(declare-sort var1266 0)
(declare-sort var1692 0)
(declare-sort var705 0)
(declare-sort var2164 0)
(declare-sort var203 0)
(declare-sort var3387 0)
(declare-sort var2654 0)
(declare-sort var500 0)
(declare-sort var1099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3135) var1692)
(declare-fun var1692_getValue/1633538672 (var1692) var705)
(declare-fun cast-from-var2164-to-var705 (var2164) var705)
(declare-fun s2b/-450202684 (var3135 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3135 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1266) var203)
(declare-fun getJdbcType/389098195 (var203) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var203) String)
(declare-fun datetimePrecision/-289055874 (var1266) Int)
(declare-fun columnSize/-289055874 (var1266) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var1266) Int)
(declare-fun numPrecRadix/-289055874 (var1266) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1266) Int)
(declare-fun var3387_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3135) var2654)
(declare-fun var1099_createSQLException/-1268047242 (String String var2654) var500)
(declare-const null-var3135 var3135)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1266 var1266)
(declare-const null-Int Int)
(declare-const var2164-SCHEMA var2164)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var203-YEAR var203)
(declare-const var3933 var3135) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3933 null-var3135)))
(declare-const var1224 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1224 null-__Array__Int__Int__)))
(declare-const var1076 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1076 null-__Array__Int__Int__)))
(declare-const var3068 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3068 null-String)))
(declare-const var3454 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3454 null-Bool)))
(declare-const var1141 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1141 null-Bool)))
(declare-const var1983 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1983 null-Bool)))
(declare-const var3971 var1266) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3971 null-var1266)))
(declare-const var2816 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2816 null-Bool)))
(declare-const var3376 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3376 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var2816 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1823 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3455 (Array Int (Array Int Int)) var1823) ; Statement: r0 = $r54 
(define-const var3348 (Array Int (Array Int Int)) var1823) ; Statement: $r53 = $r54 
(define-const var275 var1692 (databaseTerm/1074764847 var3933)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3653 var705 (var1692_getValue/1633538672 var275)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var233 var2164 var2164-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3653 (cast-from-var2164-to-var705 var233))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var2464 (Array Int Int) (s2b/-450202684 var3933 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var3348!1 (Array Int (Array Int Int)))
(assert (not (= var3348!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3348!1 0) var2464)) ; Statement: $r53[0] = $r55 
(define-const var2054 var1692 (databaseTerm/1074764847 var3933)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2873 var705 (var1692_getValue/1633538672 var2054)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3884 var2164 var2164-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2873 (cast-from-var2164-to-var705 var3884))))) ; Negate: Cond: $r8 != $r7  
(define-const var3456 (Array Int Int) var1076) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3455!1 (Array Int (Array Int Int)))
(assert (not (= var3455!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!1 1) var3456)) ; Statement: r0[1] = $r56 
(declare-const var3455!2 (Array Int (Array Int Int)))
(assert (not (= var3455!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!2 2) var1224)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3943 (Array Int Int) (s2b/-450202684 var3933 var3068)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3455!3 (Array Int (Array Int Int)))
(assert (not (= var3455!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!3 3) var3943)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1379 Int (getColumnType/800489773 var3933 var3454 var1141 var1983 var2816)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2956 String (String_valueOf/1240665136 var1379)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2559 (Array Int Int) (s2b/-450202684 var3933 var2956)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3455!4 (Array Int (Array Int Int)))
(assert (not (= var3455!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!4 4) var2559)) ; Statement: r0[4] = $r13 
(define-const var3364 var203 (mysqlType/-289055874 var3971)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3227 var203 var203-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3364 var3227))) ; Cond: $r16 != $r15 
(define-const var616 var203 (mysqlType/-289055874 var3971)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1508 Int (getJdbcType/389098195 var616)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3952 Int (cast-from-Int-to-Int var1508)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1059 String (Int_toString/-1770815874 var3952)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1239 (Array Int Int) (getBytes/1068683673 var1059)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3455!5 (Array Int (Array Int Int)))
(assert (not (= var3455!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!5 5) var1239)) ; Statement: r0[5] = $r58 
(define-const var3084 var203 (mysqlType/-289055874 var3971)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3735 String (getName/1307715079 var3084)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3901 (Array Int Int) (s2b/-450202684 var3933 var3735)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3455!6 (Array Int (Array Int Int)))
(assert (not (= var3455!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!6 6) var3901)) ; Statement: r0[6] = $r61 
(define-const var3824 Int (datetimePrecision/-289055874 var3971)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var3824 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3060 Int (columnSize/-289055874 var3971)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2973 String (toString/483301002 var3060)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3368 (Array Int Int) (s2b/-450202684 var3933 var2973)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3455!7 (Array Int (Array Int Int)))
(assert (not (= var3455!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!7 7) var3368)) ; Statement: r0[7] = $r63 
(define-const var2064 Int (columnSize/-289055874 var3971)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2064 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var3256 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3455!8 (Array Int (Array Int Int)))
(assert (not (= var3455!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!8 8) var3256)) ; Statement: r0[8] = $r64 
(define-const var1081 Int (decimalDigits/-289055874 var3971)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1081 null-Int))) ; Cond: $r23 != null 
(define-const var1250 Int (decimalDigits/-289055874 var3971)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1373 String (toString/483301002 var1250)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var32 (Array Int Int) (s2b/-450202684 var3933 var1373)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3455!9 (Array Int (Array Int Int)))
(assert (not (= var3455!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!9 9) var32)) ; Statement: r0[9] = $r65 
(define-const var2177 Int (numPrecRadix/-289055874 var3971)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3660 String (Int_toString/1350422511 var2177)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var959 (Array Int Int) (s2b/-450202684 var3933 var3660)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3455!10 (Array Int (Array Int Int)))
(assert (not (= var3455!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3455!10 10) var959)) ; Statement: r0[10] = $r27 
(define-const var819 Int (nullability/-289055874 var3971)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var819 2)) (and (not (= var819 1)) (and (not (= var819 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var572 String (var3387_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2951 var2654 (getExceptionInterceptor/-1244810802 var3933)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1177 var500 (var1099_createSQLException/-1268047242 var572 "S1000" var2951)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1692_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2164-to-var705=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3387_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1099_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3135=com.mysql.cj.jdbc.DatabaseMetaData, var3933=r1, var1224=r9, var1076=r5, var3068=r10, var72=null_type, var3454=z1, var1141=z2, var1983=z3, var1266=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3971=r14, var2816=z0, var3376=i4, var1823=$r54, var3455=r0, var3348=$r53, var1692=com.mysql.cj.conf.RuntimeProperty, var275=$r2, var705=java.lang.Object, var3653=$r4, var2164=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var233=$r3, var2464=$r55, var2054=$r6, var2873=$r8, var3884=$r7, var3456=$r56, var3943=$r11, var1379=$i0, var2956=$r12, var2559=$r13, var203=com.mysql.cj.MysqlType, var3364=$r16, var3227=$r15, var616=$r17, var1508=$i1, var3952=$s5, var1059=$r57, var1239=$r58, var3084=$r59, var3735=$r60, var3901=$r61, var3824=$r62, var3060=$r51, var2973=$r52, var3368=$r63, var2064=$r20, var3256=$r64, var1081=$r23, var1250=$r24, var1373=$r25, var32=$r65, var2177=$i2, var3660=$r26, var959=$r27, var819=$i3, var3387=com.mysql.cj.Messages, var572=$r49, var2654=com.mysql.cj.exceptions.ExceptionInterceptor, var2951=$r48, var500=java.sql.SQLException, var1099=com.mysql.cj.jdbc.exceptions.SQLError, var1177=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3135, r1=var3933, r9=var1224, r5=var1076, r10=var3068, null_type=var72, z1=var3454, z2=var1141, z3=var1983, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1266, r14=var3971, z0=var2816, i4=var3376, $r54=var1823, r0=var3455, $r53=var3348, com.mysql.cj.conf.RuntimeProperty=var1692, $r2=var275, java.lang.Object=var705, $r4=var3653, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2164, $r3=var233, $r55=var2464, $r6=var2054, $r8=var2873, $r7=var3884, $r56=var3456, $r11=var3943, $i0=var1379, $r12=var2956, $r13=var2559, com.mysql.cj.MysqlType=var203, $r16=var3364, $r15=var3227, $r17=var616, $i1=var1508, $s5=var3952, $r57=var1059, $r58=var1239, $r59=var3084, $r60=var3735, $r61=var3901, $r62=var3824, $r51=var3060, $r52=var2973, $r63=var3368, $r20=var2064, $r64=var3256, $r23=var1081, $r24=var1250, $r25=var1373, $r65=var32, $i2=var2177, $r26=var3660, $r27=var959, $i3=var819, com.mysql.cj.Messages=var3387, $r49=var572, com.mysql.cj.exceptions.ExceptionInterceptor=var2654, $r48=var2951, java.sql.SQLException=var500, com.mysql.cj.jdbc.exceptions.SQLError=var1099, $r50=var1177}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16