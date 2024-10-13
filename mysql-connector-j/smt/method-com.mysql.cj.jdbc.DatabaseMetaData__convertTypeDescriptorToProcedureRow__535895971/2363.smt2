(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3406 0)
(declare-sort var2523 0)
(declare-sort var2371 0)
(declare-sort var2398 0)
(declare-sort var3177 0)
(declare-sort var3997 0)
(declare-sort var369 0)
(declare-sort var3366 0)
(declare-sort var1370 0)
(declare-sort var1625 0)
(declare-sort var3288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3406) var2398)
(declare-fun var2398_getValue/1633538672 (var2398) var3177)
(declare-fun cast-from-var3997-to-var3177 (var3997) var3177)
(declare-fun s2b/-450202684 (var3406 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3406 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2371) var369)
(declare-fun getJdbcType/389098195 (var369) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var369) String)
(declare-fun datetimePrecision/-289055874 (var2371) Int)
(declare-fun columnSize/-289055874 (var2371) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var2371) Int)
(declare-fun numPrecRadix/-289055874 (var2371) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2371) Int)
(declare-fun var3366_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3406) var1370)
(declare-fun var3288_createSQLException/-1268047242 (String String var1370) var1625)
(declare-const null-var3406 var3406)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2371 var2371)
(declare-const null-Int Int)
(declare-const var3997-SCHEMA var3997)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var369-YEAR var369)
(declare-const var514 var3406) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var514 null-var3406)))
(declare-const var2163 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2163 null-__Array__Int__Int__)))
(declare-const var2048 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2048 null-__Array__Int__Int__)))
(declare-const var10 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var10 null-String)))
(declare-const var313 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var313 null-Bool)))
(declare-const var1999 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1999 null-Bool)))
(declare-const var622 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var622 null-Bool)))
(declare-const var1865 var2371) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1865 null-var2371)))
(declare-const var1502 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1502 null-Bool)))
(declare-const var2833 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2833 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1502 1 0) 0)) ; Cond: z0 == 0 
(define-const var118 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var3028 (Array Int (Array Int Int)) var118) ; Statement: r0 = $r54 
(define-const var1666 (Array Int (Array Int Int)) var118) ; Statement: $r53 = $r54 
(define-const var1595 var2398 (databaseTerm/1074764847 var514)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3147 var3177 (var2398_getValue/1633538672 var1595)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1016 var3997 var3997-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3147 (cast-from-var3997-to-var3177 var1016))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1708 (Array Int Int) (s2b/-450202684 var514 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1666!1 (Array Int (Array Int Int)))
(assert (not (= var1666!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1666!1 0) var1708)) ; Statement: $r53[0] = $r55 
(define-const var3263 var2398 (databaseTerm/1074764847 var514)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2077 var3177 (var2398_getValue/1633538672 var3263)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3113 var3997 var3997-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2077 (cast-from-var3997-to-var3177 var3113)))) ; Cond: $r8 != $r7 
(define-const var3908 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var3028!1 (Array Int (Array Int Int)))
(assert (not (= var3028!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!1 1) var3908)) ; Statement: r0[1] = $r56 
(declare-const var3028!2 (Array Int (Array Int Int)))
(assert (not (= var3028!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!2 2) var2163)) ; Statement: r0[2] = r9 
(assert true)
(define-const var785 (Array Int Int) (s2b/-450202684 var514 var10)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3028!3 (Array Int (Array Int Int)))
(assert (not (= var3028!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!3 3) var785)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1395 Int (getColumnType/800489773 var514 var313 var1999 var622 var1502)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3108 String (String_valueOf/1240665136 var1395)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1002 (Array Int Int) (s2b/-450202684 var514 var3108)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3028!4 (Array Int (Array Int Int)))
(assert (not (= var3028!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!4 4) var1002)) ; Statement: r0[4] = $r13 
(define-const var2260 var369 (mysqlType/-289055874 var1865)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3644 var369 var369-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2260 var3644))) ; Cond: $r16 != $r15 
(define-const var1968 var369 (mysqlType/-289055874 var1865)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var920 Int (getJdbcType/389098195 var1968)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1954 Int (cast-from-Int-to-Int var920)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var677 String (Int_toString/-1770815874 var1954)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var308 (Array Int Int) (getBytes/1068683673 var677)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3028!5 (Array Int (Array Int Int)))
(assert (not (= var3028!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!5 5) var308)) ; Statement: r0[5] = $r58 
(define-const var2658 var369 (mysqlType/-289055874 var1865)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1485 String (getName/1307715079 var2658)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3397 (Array Int Int) (s2b/-450202684 var514 var1485)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3028!6 (Array Int (Array Int Int)))
(assert (not (= var3028!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!6 6) var3397)) ; Statement: r0[6] = $r61 
(define-const var1630 Int (datetimePrecision/-289055874 var1865)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var1630 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var251 Int (columnSize/-289055874 var1865)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3525 String (toString/483301002 var251)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2382 (Array Int Int) (s2b/-450202684 var514 var3525)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3028!7 (Array Int (Array Int Int)))
(assert (not (= var3028!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!7 7) var2382)) ; Statement: r0[7] = $r63 
(define-const var1718 Int (columnSize/-289055874 var1865)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1718 null-Int))) ; Cond: $r20 != null 
(define-const var112 Int (columnSize/-289055874 var1865)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3311 String (toString/483301002 var112)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1714 (Array Int Int) (s2b/-450202684 var514 var3311)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var3028!8 (Array Int (Array Int Int)))
(assert (not (= var3028!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!8 8) var1714)) ; Statement: r0[8] = $r64 
(define-const var791 Int (decimalDigits/-289055874 var1865)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var791 null-Int))) ; Cond: $r23 != null 
(define-const var1262 Int (decimalDigits/-289055874 var1865)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var2359 String (toString/483301002 var1262)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1093 (Array Int Int) (s2b/-450202684 var514 var2359)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3028!9 (Array Int (Array Int Int)))
(assert (not (= var3028!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!9 9) var1093)) ; Statement: r0[9] = $r65 
(define-const var206 Int (numPrecRadix/-289055874 var1865)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var76 String (Int_toString/1350422511 var206)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var320 (Array Int Int) (s2b/-450202684 var514 var76)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3028!10 (Array Int (Array Int Int)))
(assert (not (= var3028!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3028!10 10) var320)) ; Statement: r0[10] = $r27 
(define-const var3886 Int (nullability/-289055874 var1865)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3886 2)) (and (not (= var3886 1)) (and (not (= var3886 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var1923 String (var3366_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2978 var1370 (getExceptionInterceptor/-1244810802 var514)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3757 var1625 (var3288_createSQLException/-1268047242 var1923 "S1000" var2978)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2398_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3997-to-var3177=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3366_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3288_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3406=com.mysql.cj.jdbc.DatabaseMetaData, var514=r1, var2163=r9, var2048=r5, var10=r10, var2523=null_type, var313=z1, var1999=z2, var622=z3, var2371=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1865=r14, var1502=z0, var2833=i4, var118=$r54, var3028=r0, var1666=$r53, var2398=com.mysql.cj.conf.RuntimeProperty, var1595=$r2, var3177=java.lang.Object, var3147=$r4, var3997=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1016=$r3, var1708=$r55, var3263=$r6, var2077=$r8, var3113=$r7, var3908=$r56, var785=$r11, var1395=$i0, var3108=$r12, var1002=$r13, var369=com.mysql.cj.MysqlType, var2260=$r16, var3644=$r15, var1968=$r17, var920=$i1, var1954=$s5, var677=$r57, var308=$r58, var2658=$r59, var1485=$r60, var3397=$r61, var1630=$r62, var251=$r51, var3525=$r52, var2382=$r63, var1718=$r20, var112=$r21, var3311=$r22, var1714=$r64, var791=$r23, var1262=$r24, var2359=$r25, var1093=$r65, var206=$i2, var76=$r26, var320=$r27, var3886=$i3, var3366=com.mysql.cj.Messages, var1923=$r49, var1370=com.mysql.cj.exceptions.ExceptionInterceptor, var2978=$r48, var1625=java.sql.SQLException, var3288=com.mysql.cj.jdbc.exceptions.SQLError, var3757=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3406, r1=var514, r9=var2163, r5=var2048, r10=var10, null_type=var2523, z1=var313, z2=var1999, z3=var622, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2371, r14=var1865, z0=var1502, i4=var2833, $r54=var118, r0=var3028, $r53=var1666, com.mysql.cj.conf.RuntimeProperty=var2398, $r2=var1595, java.lang.Object=var3177, $r4=var3147, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3997, $r3=var1016, $r55=var1708, $r6=var3263, $r8=var2077, $r7=var3113, $r56=var3908, $r11=var785, $i0=var1395, $r12=var3108, $r13=var1002, com.mysql.cj.MysqlType=var369, $r16=var2260, $r15=var3644, $r17=var1968, $i1=var920, $s5=var1954, $r57=var677, $r58=var308, $r59=var2658, $r60=var1485, $r61=var3397, $r62=var1630, $r51=var251, $r52=var3525, $r63=var2382, $r20=var1718, $r21=var112, $r22=var3311, $r64=var1714, $r23=var791, $r24=var1262, $r25=var2359, $r65=var1093, $i2=var206, $r26=var76, $r27=var320, $i3=var3886, com.mysql.cj.Messages=var3366, $r49=var1923, com.mysql.cj.exceptions.ExceptionInterceptor=var1370, $r48=var2978, java.sql.SQLException=var1625, com.mysql.cj.jdbc.exceptions.SQLError=var3288, $r50=var3757}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16