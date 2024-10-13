(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1298 0)
(declare-sort var1811 0)
(declare-sort var3389 0)
(declare-sort var1761 0)
(declare-sort var1649 0)
(declare-sort var3997 0)
(declare-sort var798 0)
(declare-sort var2054 0)
(declare-sort var640 0)
(declare-sort var2215 0)
(declare-sort var2517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1298) var1761)
(declare-fun var1761_getValue/1633538672 (var1761) var1649)
(declare-fun cast-from-var3997-to-var1649 (var3997) var1649)
(declare-fun s2b/-450202684 (var1298 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1298 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3389) var798)
(declare-fun getJdbcType/389098195 (var798) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var798) String)
(declare-fun datetimePrecision/-289055874 (var3389) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3389) Int)
(declare-fun decimalDigits/-289055874 (var3389) Int)
(declare-fun numPrecRadix/-289055874 (var3389) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3389) Int)
(declare-fun var2054_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1298) var640)
(declare-fun var2517_createSQLException/-1268047242 (String String var640) var2215)
(declare-const null-var1298 var1298)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3389 var3389)
(declare-const null-Int Int)
(declare-const var3997-SCHEMA var3997)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var798-YEAR var798)
(declare-const var2347 var1298) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2347 null-var1298)))
(declare-const var2553 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2553 null-__Array__Int__Int__)))
(declare-const var204 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var204 null-__Array__Int__Int__)))
(declare-const var1020 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1020 null-String)))
(declare-const var2471 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2471 null-Bool)))
(declare-const var1514 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1514 null-Bool)))
(declare-const var2321 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2321 null-Bool)))
(declare-const var748 var3389) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var748 null-var3389)))
(declare-const var1065 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1065 null-Bool)))
(declare-const var3260 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3260 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1065 1 0) 0)) ; Cond: z0 == 0 
(define-const var6 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var1331 (Array Int (Array Int Int)) var6) ; Statement: r0 = $r54 
(define-const var1629 (Array Int (Array Int Int)) var6) ; Statement: $r53 = $r54 
(define-const var3868 var1761 (databaseTerm/1074764847 var2347)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3173 var1649 (var1761_getValue/1633538672 var3868)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var543 var3997 var3997-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3173 (cast-from-var3997-to-var1649 var543)))) ; Cond: $r4 != $r3 
(define-const var3870 (Array Int Int) var204) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1629!1 (Array Int (Array Int Int)))
(assert (not (= var1629!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1629!1 0) var3870)) ; Statement: $r53[0] = $r55 
(define-const var812 var1761 (databaseTerm/1074764847 var2347)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1558 var1649 (var1761_getValue/1633538672 var812)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2320 var3997 var3997-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var1558 (cast-from-var3997-to-var1649 var2320)))) ; Cond: $r8 != $r7 
(define-const var1270 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1331!1 (Array Int (Array Int Int)))
(assert (not (= var1331!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!1 1) var1270)) ; Statement: r0[1] = $r56 
(declare-const var1331!2 (Array Int (Array Int Int)))
(assert (not (= var1331!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!2 2) var2553)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3076 (Array Int Int) (s2b/-450202684 var2347 var1020)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1331!3 (Array Int (Array Int Int)))
(assert (not (= var1331!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!3 3) var3076)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1533 Int (getColumnType/800489773 var2347 var2471 var1514 var2321 var1065)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var121 String (String_valueOf/1240665136 var1533)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1800 (Array Int Int) (s2b/-450202684 var2347 var121)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1331!4 (Array Int (Array Int Int)))
(assert (not (= var1331!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!4 4) var1800)) ; Statement: r0[4] = $r13 
(define-const var3780 var798 (mysqlType/-289055874 var748)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2795 var798 var798-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3780 var2795))) ; Cond: $r16 != $r15 
(define-const var2077 var798 (mysqlType/-289055874 var748)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1996 Int (getJdbcType/389098195 var2077)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var898 Int (cast-from-Int-to-Int var1996)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2272 String (Int_toString/-1770815874 var898)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1390 (Array Int Int) (getBytes/1068683673 var2272)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1331!5 (Array Int (Array Int Int)))
(assert (not (= var1331!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!5 5) var1390)) ; Statement: r0[5] = $r58 
(define-const var3354 var798 (mysqlType/-289055874 var748)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var807 String (getName/1307715079 var3354)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var826 (Array Int Int) (s2b/-450202684 var2347 var807)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1331!6 (Array Int (Array Int Int)))
(assert (not (= var1331!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!6 6) var826)) ; Statement: r0[6] = $r61 
(define-const var2717 Int (datetimePrecision/-289055874 var748)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2717 null-Int))) ; Cond: $r62 != null 
(define-const var2262 Int (datetimePrecision/-289055874 var748)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3336 String (toString/483301002 var2262)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2649 (Array Int Int) (s2b/-450202684 var2347 var3336)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1331!7 (Array Int (Array Int Int)))
(assert (not (= var1331!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!7 7) var2649)) ; Statement: r0[7] = $r63 
(define-const var2341 Int (columnSize/-289055874 var748)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var2341 null-Int))) ; Cond: $r20 != null 
(define-const var831 Int (columnSize/-289055874 var748)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var849 String (toString/483301002 var831)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1912 (Array Int Int) (s2b/-450202684 var2347 var849)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var1331!8 (Array Int (Array Int Int)))
(assert (not (= var1331!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!8 8) var1912)) ; Statement: r0[8] = $r64 
(define-const var1324 Int (decimalDigits/-289055874 var748)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1324 null-Int))) ; Cond: $r23 != null 
(define-const var2918 Int (decimalDigits/-289055874 var748)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var2701 String (toString/483301002 var2918)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1712 (Array Int Int) (s2b/-450202684 var2347 var2701)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var1331!9 (Array Int (Array Int Int)))
(assert (not (= var1331!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!9 9) var1712)) ; Statement: r0[9] = $r65 
(define-const var936 Int (numPrecRadix/-289055874 var748)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var897 String (Int_toString/1350422511 var936)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var185 (Array Int Int) (s2b/-450202684 var2347 var897)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1331!10 (Array Int (Array Int Int)))
(assert (not (= var1331!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1331!10 10) var185)) ; Statement: r0[10] = $r27 
(define-const var536 Int (nullability/-289055874 var748)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var536 2)) (and (not (= var536 1)) (and (not (= var536 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2773 String (var2054_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3626 var640 (getExceptionInterceptor/-1244810802 var2347)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var721 var2215 (var2517_createSQLException/-1268047242 var2773 "S1000" var3626)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1761_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3997-to-var1649=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2054_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2517_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1298=com.mysql.cj.jdbc.DatabaseMetaData, var2347=r1, var2553=r9, var204=r5, var1020=r10, var1811=null_type, var2471=z1, var1514=z2, var2321=z3, var3389=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var748=r14, var1065=z0, var3260=i4, var6=$r54, var1331=r0, var1629=$r53, var1761=com.mysql.cj.conf.RuntimeProperty, var3868=$r2, var1649=java.lang.Object, var3173=$r4, var3997=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var543=$r3, var3870=$r55, var812=$r6, var1558=$r8, var2320=$r7, var1270=$r56, var3076=$r11, var1533=$i0, var121=$r12, var1800=$r13, var798=com.mysql.cj.MysqlType, var3780=$r16, var2795=$r15, var2077=$r17, var1996=$i1, var898=$s5, var2272=$r57, var1390=$r58, var3354=$r59, var807=$r60, var826=$r61, var2717=$r62, var2262=$r18, var3336=$r19, var2649=$r63, var2341=$r20, var831=$r21, var849=$r22, var1912=$r64, var1324=$r23, var2918=$r24, var2701=$r25, var1712=$r65, var936=$i2, var897=$r26, var185=$r27, var536=$i3, var2054=com.mysql.cj.Messages, var2773=$r49, var640=com.mysql.cj.exceptions.ExceptionInterceptor, var3626=$r48, var2215=java.sql.SQLException, var2517=com.mysql.cj.jdbc.exceptions.SQLError, var721=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1298, r1=var2347, r9=var2553, r5=var204, r10=var1020, null_type=var1811, z1=var2471, z2=var1514, z3=var2321, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3389, r14=var748, z0=var1065, i4=var3260, $r54=var6, r0=var1331, $r53=var1629, com.mysql.cj.conf.RuntimeProperty=var1761, $r2=var3868, java.lang.Object=var1649, $r4=var3173, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3997, $r3=var543, $r55=var3870, $r6=var812, $r8=var1558, $r7=var2320, $r56=var1270, $r11=var3076, $i0=var1533, $r12=var121, $r13=var1800, com.mysql.cj.MysqlType=var798, $r16=var3780, $r15=var2795, $r17=var2077, $i1=var1996, $s5=var898, $r57=var2272, $r58=var1390, $r59=var3354, $r60=var807, $r61=var826, $r62=var2717, $r18=var2262, $r19=var3336, $r63=var2649, $r20=var2341, $r21=var831, $r22=var849, $r64=var1912, $r23=var1324, $r24=var2918, $r25=var2701, $r65=var1712, $i2=var936, $r26=var897, $r27=var185, $i3=var536, com.mysql.cj.Messages=var2054, $r49=var2773, com.mysql.cj.exceptions.ExceptionInterceptor=var640, $r48=var3626, java.sql.SQLException=var2215, com.mysql.cj.jdbc.exceptions.SQLError=var2517, $r50=var721}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16