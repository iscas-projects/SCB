(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var288 0)
(declare-sort var607 0)
(declare-sort var479 0)
(declare-sort var2399 0)
(declare-sort var3023 0)
(declare-sort var593 0)
(declare-sort var1656 0)
(declare-sort var1316 0)
(declare-sort var1110 0)
(declare-sort var920 0)
(declare-sort var1731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var288) var2399)
(declare-fun var2399_getValue/1633538672 (var2399) var3023)
(declare-fun cast-from-var593-to-var3023 (var593) var3023)
(declare-fun s2b/-450202684 (var288 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var288 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var479) var1656)
(declare-fun getJdbcType/389098195 (var1656) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1656) String)
(declare-fun datetimePrecision/-289055874 (var479) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var479) Int)
(declare-fun decimalDigits/-289055874 (var479) Int)
(declare-fun numPrecRadix/-289055874 (var479) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var479) Int)
(declare-fun var1316_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var288) var1110)
(declare-fun var1731_createSQLException/-1268047242 (String String var1110) var920)
(declare-const null-var288 var288)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var479 var479)
(declare-const null-Int Int)
(declare-const var593-SCHEMA var593)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1656-YEAR var1656)
(declare-const var1998 var288) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1998 null-var288)))
(declare-const var716 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var716 null-__Array__Int__Int__)))
(declare-const var218 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var218 null-__Array__Int__Int__)))
(declare-const var1633 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1633 null-String)))
(declare-const var2076 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2076 null-Bool)))
(declare-const var2225 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2225 null-Bool)))
(declare-const var1961 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1961 null-Bool)))
(declare-const var1256 var479) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1256 null-var479)))
(declare-const var1958 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1958 null-Bool)))
(declare-const var2776 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2776 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1958 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1192 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1814 (Array Int (Array Int Int)) var1192) ; Statement: r0 = $r54 
(define-const var2992 (Array Int (Array Int Int)) var1192) ; Statement: $r53 = $r54 
(define-const var3966 var2399 (databaseTerm/1074764847 var1998)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1329 var3023 (var2399_getValue/1633538672 var3966)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2730 var593 var593-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1329 (cast-from-var593-to-var3023 var2730))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var227 (Array Int Int) (s2b/-450202684 var1998 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2992!1 (Array Int (Array Int Int)))
(assert (not (= var2992!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2992!1 0) var227)) ; Statement: $r53[0] = $r55 
(define-const var2441 var2399 (databaseTerm/1074764847 var1998)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var827 var3023 (var2399_getValue/1633538672 var2441)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3043 var593 var593-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var827 (cast-from-var593-to-var3023 var3043))))) ; Negate: Cond: $r8 != $r7  
(define-const var2577 (Array Int Int) var218) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var1814!1 (Array Int (Array Int Int)))
(assert (not (= var1814!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!1 1) var2577)) ; Statement: r0[1] = $r56 
(declare-const var1814!2 (Array Int (Array Int Int)))
(assert (not (= var1814!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!2 2) var716)) ; Statement: r0[2] = r9 
(assert true)
(define-const var108 (Array Int Int) (s2b/-450202684 var1998 var1633)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1814!3 (Array Int (Array Int Int)))
(assert (not (= var1814!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!3 3) var108)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2968 Int (getColumnType/800489773 var1998 var2076 var2225 var1961 var1958)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var683 String (String_valueOf/1240665136 var2968)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3257 (Array Int Int) (s2b/-450202684 var1998 var683)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1814!4 (Array Int (Array Int Int)))
(assert (not (= var1814!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!4 4) var3257)) ; Statement: r0[4] = $r13 
(define-const var3802 var1656 (mysqlType/-289055874 var1256)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var740 var1656 var1656-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3802 var740))) ; Cond: $r16 != $r15 
(define-const var3665 var1656 (mysqlType/-289055874 var1256)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1668 Int (getJdbcType/389098195 var3665)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var138 Int (cast-from-Int-to-Int var1668)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3348 String (Int_toString/-1770815874 var138)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2882 (Array Int Int) (getBytes/1068683673 var3348)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1814!5 (Array Int (Array Int Int)))
(assert (not (= var1814!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!5 5) var2882)) ; Statement: r0[5] = $r58 
(define-const var3566 var1656 (mysqlType/-289055874 var1256)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3573 String (getName/1307715079 var3566)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2590 (Array Int Int) (s2b/-450202684 var1998 var3573)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1814!6 (Array Int (Array Int Int)))
(assert (not (= var1814!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!6 6) var2590)) ; Statement: r0[6] = $r61 
(define-const var1420 Int (datetimePrecision/-289055874 var1256)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var1420 null-Int))) ; Cond: $r62 != null 
(define-const var2160 Int (datetimePrecision/-289055874 var1256)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var2257 String (toString/483301002 var2160)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2116 (Array Int Int) (s2b/-450202684 var1998 var2257)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1814!7 (Array Int (Array Int Int)))
(assert (not (= var1814!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!7 7) var2116)) ; Statement: r0[7] = $r63 
(define-const var2939 Int (columnSize/-289055874 var1256)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var2939 null-Int))) ; Cond: $r20 != null 
(define-const var3306 Int (columnSize/-289055874 var1256)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3158 String (toString/483301002 var3306)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3704 (Array Int Int) (s2b/-450202684 var1998 var3158)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var1814!8 (Array Int (Array Int Int)))
(assert (not (= var1814!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!8 8) var3704)) ; Statement: r0[8] = $r64 
(define-const var577 Int (decimalDigits/-289055874 var1256)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var577 null-Int))) ; Cond: $r23 != null 
(define-const var1404 Int (decimalDigits/-289055874 var1256)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var3302 String (toString/483301002 var1404)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3766 (Array Int Int) (s2b/-450202684 var1998 var3302)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var1814!9 (Array Int (Array Int Int)))
(assert (not (= var1814!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!9 9) var3766)) ; Statement: r0[9] = $r65 
(define-const var1312 Int (numPrecRadix/-289055874 var1256)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3234 String (Int_toString/1350422511 var1312)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1609 (Array Int Int) (s2b/-450202684 var1998 var3234)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1814!10 (Array Int (Array Int Int)))
(assert (not (= var1814!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1814!10 10) var1609)) ; Statement: r0[10] = $r27 
(define-const var2740 Int (nullability/-289055874 var1256)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2740 2)) (and (not (= var2740 1)) (and (not (= var2740 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2459 String (var1316_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var509 var1110 (getExceptionInterceptor/-1244810802 var1998)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1906 var920 (var1731_createSQLException/-1268047242 var2459 "S1000" var509)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2399_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var593-to-var3023=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1316_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1731_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var288=com.mysql.cj.jdbc.DatabaseMetaData, var1998=r1, var716=r9, var218=r5, var1633=r10, var607=null_type, var2076=z1, var2225=z2, var1961=z3, var479=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1256=r14, var1958=z0, var2776=i4, var1192=$r54, var1814=r0, var2992=$r53, var2399=com.mysql.cj.conf.RuntimeProperty, var3966=$r2, var3023=java.lang.Object, var1329=$r4, var593=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2730=$r3, var227=$r55, var2441=$r6, var827=$r8, var3043=$r7, var2577=$r56, var108=$r11, var2968=$i0, var683=$r12, var3257=$r13, var1656=com.mysql.cj.MysqlType, var3802=$r16, var740=$r15, var3665=$r17, var1668=$i1, var138=$s5, var3348=$r57, var2882=$r58, var3566=$r59, var3573=$r60, var2590=$r61, var1420=$r62, var2160=$r18, var2257=$r19, var2116=$r63, var2939=$r20, var3306=$r21, var3158=$r22, var3704=$r64, var577=$r23, var1404=$r24, var3302=$r25, var3766=$r65, var1312=$i2, var3234=$r26, var1609=$r27, var2740=$i3, var1316=com.mysql.cj.Messages, var2459=$r49, var1110=com.mysql.cj.exceptions.ExceptionInterceptor, var509=$r48, var920=java.sql.SQLException, var1731=com.mysql.cj.jdbc.exceptions.SQLError, var1906=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var288, r1=var1998, r9=var716, r5=var218, r10=var1633, null_type=var607, z1=var2076, z2=var2225, z3=var1961, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var479, r14=var1256, z0=var1958, i4=var2776, $r54=var1192, r0=var1814, $r53=var2992, com.mysql.cj.conf.RuntimeProperty=var2399, $r2=var3966, java.lang.Object=var3023, $r4=var1329, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var593, $r3=var2730, $r55=var227, $r6=var2441, $r8=var827, $r7=var3043, $r56=var2577, $r11=var108, $i0=var2968, $r12=var683, $r13=var3257, com.mysql.cj.MysqlType=var1656, $r16=var3802, $r15=var740, $r17=var3665, $i1=var1668, $s5=var138, $r57=var3348, $r58=var2882, $r59=var3566, $r60=var3573, $r61=var2590, $r62=var1420, $r18=var2160, $r19=var2257, $r63=var2116, $r20=var2939, $r21=var3306, $r22=var3158, $r64=var3704, $r23=var577, $r24=var1404, $r25=var3302, $r65=var3766, $i2=var1312, $r26=var3234, $r27=var1609, $i3=var2740, com.mysql.cj.Messages=var1316, $r49=var2459, com.mysql.cj.exceptions.ExceptionInterceptor=var1110, $r48=var509, java.sql.SQLException=var920, com.mysql.cj.jdbc.exceptions.SQLError=var1731, $r50=var1906}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16