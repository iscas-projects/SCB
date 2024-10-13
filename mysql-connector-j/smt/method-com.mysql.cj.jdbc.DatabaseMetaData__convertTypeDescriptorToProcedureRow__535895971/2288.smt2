(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var2145 0)
(declare-sort var2279 0)
(declare-sort var3444 0)
(declare-sort var3216 0)
(declare-sort var2042 0)
(declare-sort var23 0)
(declare-sort var2513 0)
(declare-sort var1594 0)
(declare-sort var3439 0)
(declare-sort var2483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1707) var3444)
(declare-fun var3444_getValue/1633538672 (var3444) var3216)
(declare-fun cast-from-var2042-to-var3216 (var2042) var3216)
(declare-fun s2b/-450202684 (var1707 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1707 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2279) var23)
(declare-fun getJdbcType/389098195 (var23) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var23) String)
(declare-fun datetimePrecision/-289055874 (var2279) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var2279) Int)
(declare-fun decimalDigits/-289055874 (var2279) Int)
(declare-fun numPrecRadix/-289055874 (var2279) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2279) Int)
(declare-fun var2513_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1707) var1594)
(declare-fun var2483_createSQLException/-1268047242 (String String var1594) var3439)
(declare-const null-var1707 var1707)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2279 var2279)
(declare-const null-Int Int)
(declare-const var2042-SCHEMA var2042)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var23-YEAR var23)
(declare-const var13 var1707) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var13 null-var1707)))
(declare-const var1390 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1390 null-__Array__Int__Int__)))
(declare-const var1358 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1358 null-__Array__Int__Int__)))
(declare-const var2416 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2416 null-String)))
(declare-const var3858 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3858 null-Bool)))
(declare-const var3229 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3229 null-Bool)))
(declare-const var3014 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3014 null-Bool)))
(declare-const var3607 var2279) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3607 null-var2279)))
(declare-const var2304 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2304 null-Bool)))
(declare-const var2002 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2002 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var2304 1 0) 0)) ; Cond: z0 == 0 
(define-const var2720 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var1015 (Array Int (Array Int Int)) var2720) ; Statement: r0 = $r54 
(define-const var3804 (Array Int (Array Int Int)) var2720) ; Statement: $r53 = $r54 
(define-const var3064 var3444 (databaseTerm/1074764847 var13)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1540 var3216 (var3444_getValue/1633538672 var3064)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1494 var2042 var2042-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1540 (cast-from-var2042-to-var3216 var1494))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1158 (Array Int Int) (s2b/-450202684 var13 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var3804!1 (Array Int (Array Int Int)))
(assert (not (= var3804!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3804!1 0) var1158)) ; Statement: $r53[0] = $r55 
(define-const var1550 var3444 (databaseTerm/1074764847 var13)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2257 var3216 (var3444_getValue/1633538672 var1550)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var330 var2042 var2042-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2257 (cast-from-var2042-to-var3216 var330))))) ; Negate: Cond: $r8 != $r7  
(define-const var2750 (Array Int Int) var1358) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var1015!1 (Array Int (Array Int Int)))
(assert (not (= var1015!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!1 1) var2750)) ; Statement: r0[1] = $r56 
(declare-const var1015!2 (Array Int (Array Int Int)))
(assert (not (= var1015!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!2 2) var1390)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3329 (Array Int Int) (s2b/-450202684 var13 var2416)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1015!3 (Array Int (Array Int Int)))
(assert (not (= var1015!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!3 3) var3329)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1192 Int (getColumnType/800489773 var13 var3858 var3229 var3014 var2304)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var584 String (String_valueOf/1240665136 var1192)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2953 (Array Int Int) (s2b/-450202684 var13 var584)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1015!4 (Array Int (Array Int Int)))
(assert (not (= var1015!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!4 4) var2953)) ; Statement: r0[4] = $r13 
(define-const var1264 var23 (mysqlType/-289055874 var3607)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var748 var23 var23-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1264 var748))) ; Cond: $r16 != $r15 
(define-const var573 var23 (mysqlType/-289055874 var3607)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var495 Int (getJdbcType/389098195 var573)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1205 Int (cast-from-Int-to-Int var495)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var718 String (Int_toString/-1770815874 var1205)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var586 (Array Int Int) (getBytes/1068683673 var718)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1015!5 (Array Int (Array Int Int)))
(assert (not (= var1015!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!5 5) var586)) ; Statement: r0[5] = $r58 
(define-const var2893 var23 (mysqlType/-289055874 var3607)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2495 String (getName/1307715079 var2893)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var459 (Array Int Int) (s2b/-450202684 var13 var2495)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1015!6 (Array Int (Array Int Int)))
(assert (not (= var1015!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!6 6) var459)) ; Statement: r0[6] = $r61 
(define-const var1922 Int (datetimePrecision/-289055874 var3607)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var1922 null-Int))) ; Cond: $r62 != null 
(define-const var1121 Int (datetimePrecision/-289055874 var3607)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3073 String (toString/483301002 var1121)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2937 (Array Int Int) (s2b/-450202684 var13 var3073)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1015!7 (Array Int (Array Int Int)))
(assert (not (= var1015!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!7 7) var2937)) ; Statement: r0[7] = $r63 
(define-const var3984 Int (columnSize/-289055874 var3607)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3984 null-Int))) ; Cond: $r20 != null 
(define-const var2620 Int (columnSize/-289055874 var3607)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3008 String (toString/483301002 var2620)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1820 (Array Int Int) (s2b/-450202684 var13 var3008)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var1015!8 (Array Int (Array Int Int)))
(assert (not (= var1015!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!8 8) var1820)) ; Statement: r0[8] = $r64 
(define-const var2553 Int (decimalDigits/-289055874 var3607)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var2553 null-Int))) ; Cond: $r23 != null 
(define-const var1856 Int (decimalDigits/-289055874 var3607)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1802 String (toString/483301002 var1856)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var600 (Array Int Int) (s2b/-450202684 var13 var1802)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var1015!9 (Array Int (Array Int Int)))
(assert (not (= var1015!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!9 9) var600)) ; Statement: r0[9] = $r65 
(define-const var3264 Int (numPrecRadix/-289055874 var3607)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1179 String (Int_toString/1350422511 var3264)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var73 (Array Int Int) (s2b/-450202684 var13 var1179)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1015!10 (Array Int (Array Int Int)))
(assert (not (= var1015!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1015!10 10) var73)) ; Statement: r0[10] = $r27 
(define-const var3018 Int (nullability/-289055874 var3607)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3018 2)) (and (not (= var3018 1)) (and (not (= var3018 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2971 String (var2513_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3082 var1594 (getExceptionInterceptor/-1244810802 var13)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1033 var3439 (var2483_createSQLException/-1268047242 var2971 "S1000" var3082)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3444_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2042-to-var3216=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2513_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2483_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1707=com.mysql.cj.jdbc.DatabaseMetaData, var13=r1, var1390=r9, var1358=r5, var2416=r10, var2145=null_type, var3858=z1, var3229=z2, var3014=z3, var2279=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3607=r14, var2304=z0, var2002=i4, var2720=$r54, var1015=r0, var3804=$r53, var3444=com.mysql.cj.conf.RuntimeProperty, var3064=$r2, var3216=java.lang.Object, var1540=$r4, var2042=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1494=$r3, var1158=$r55, var1550=$r6, var2257=$r8, var330=$r7, var2750=$r56, var3329=$r11, var1192=$i0, var584=$r12, var2953=$r13, var23=com.mysql.cj.MysqlType, var1264=$r16, var748=$r15, var573=$r17, var495=$i1, var1205=$s5, var718=$r57, var586=$r58, var2893=$r59, var2495=$r60, var459=$r61, var1922=$r62, var1121=$r18, var3073=$r19, var2937=$r63, var3984=$r20, var2620=$r21, var3008=$r22, var1820=$r64, var2553=$r23, var1856=$r24, var1802=$r25, var600=$r65, var3264=$i2, var1179=$r26, var73=$r27, var3018=$i3, var2513=com.mysql.cj.Messages, var2971=$r49, var1594=com.mysql.cj.exceptions.ExceptionInterceptor, var3082=$r48, var3439=java.sql.SQLException, var2483=com.mysql.cj.jdbc.exceptions.SQLError, var1033=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1707, r1=var13, r9=var1390, r5=var1358, r10=var2416, null_type=var2145, z1=var3858, z2=var3229, z3=var3014, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2279, r14=var3607, z0=var2304, i4=var2002, $r54=var2720, r0=var1015, $r53=var3804, com.mysql.cj.conf.RuntimeProperty=var3444, $r2=var3064, java.lang.Object=var3216, $r4=var1540, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2042, $r3=var1494, $r55=var1158, $r6=var1550, $r8=var2257, $r7=var330, $r56=var2750, $r11=var3329, $i0=var1192, $r12=var584, $r13=var2953, com.mysql.cj.MysqlType=var23, $r16=var1264, $r15=var748, $r17=var573, $i1=var495, $s5=var1205, $r57=var718, $r58=var586, $r59=var2893, $r60=var2495, $r61=var459, $r62=var1922, $r18=var1121, $r19=var3073, $r63=var2937, $r20=var3984, $r21=var2620, $r22=var3008, $r64=var1820, $r23=var2553, $r24=var1856, $r25=var1802, $r65=var600, $i2=var3264, $r26=var1179, $r27=var73, $i3=var3018, com.mysql.cj.Messages=var2513, $r49=var2971, com.mysql.cj.exceptions.ExceptionInterceptor=var1594, $r48=var3082, java.sql.SQLException=var3439, com.mysql.cj.jdbc.exceptions.SQLError=var2483, $r50=var1033}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16