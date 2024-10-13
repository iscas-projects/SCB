(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2305 0)
(declare-sort var162 0)
(declare-sort var3658 0)
(declare-sort var3237 0)
(declare-sort var2095 0)
(declare-sort var531 0)
(declare-sort var3651 0)
(declare-sort var1689 0)
(declare-sort var2825 0)
(declare-sort var706 0)
(declare-sort var3816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2305) var3237)
(declare-fun var3237_getValue/1633538672 (var3237) var2095)
(declare-fun cast-from-var531-to-var2095 (var531) var2095)
(declare-fun s2b/-450202684 (var2305 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2305 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3658) var3651)
(declare-fun getJdbcType/389098195 (var3651) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var3651) String)
(declare-fun datetimePrecision/-289055874 (var3658) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3658) Int)
(declare-fun decimalDigits/-289055874 (var3658) Int)
(declare-fun numPrecRadix/-289055874 (var3658) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3658) Int)
(declare-fun var1689_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2305) var2825)
(declare-fun var3816_createSQLException/-1268047242 (String String var2825) var706)
(declare-const null-var2305 var2305)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3658 var3658)
(declare-const null-Int Int)
(declare-const var531-SCHEMA var531)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3651-YEAR var3651)
(declare-const var15 var2305) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var15 null-var2305)))
(declare-const var2404 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2404 null-__Array__Int__Int__)))
(declare-const var3474 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3474 null-__Array__Int__Int__)))
(declare-const var3539 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3539 null-String)))
(declare-const var3482 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3482 null-Bool)))
(declare-const var936 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var936 null-Bool)))
(declare-const var1377 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1377 null-Bool)))
(declare-const var2177 var3658) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2177 null-var3658)))
(declare-const var2870 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2870 null-Bool)))
(declare-const var3800 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3800 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var2870 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var434 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3855 (Array Int (Array Int Int)) var434) ; Statement: r0 = $r54 
(define-const var931 (Array Int (Array Int Int)) var434) ; Statement: $r53 = $r54 
(define-const var3404 var3237 (databaseTerm/1074764847 var15)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3176 var2095 (var3237_getValue/1633538672 var3404)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2126 var531 var531-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3176 (cast-from-var531-to-var2095 var2126)))) ; Cond: $r4 != $r3 
(define-const var3534 (Array Int Int) var3474) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var931!1 (Array Int (Array Int Int)))
(assert (not (= var931!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var931!1 0) var3534)) ; Statement: $r53[0] = $r55 
(define-const var1976 var3237 (databaseTerm/1074764847 var15)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2047 var2095 (var3237_getValue/1633538672 var1976)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2372 var531 var531-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2047 (cast-from-var531-to-var2095 var2372)))) ; Cond: $r8 != $r7 
(define-const var3518 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var3855!1 (Array Int (Array Int Int)))
(assert (not (= var3855!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!1 1) var3518)) ; Statement: r0[1] = $r56 
(declare-const var3855!2 (Array Int (Array Int Int)))
(assert (not (= var3855!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!2 2) var2404)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1827 (Array Int Int) (s2b/-450202684 var15 var3539)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3855!3 (Array Int (Array Int Int)))
(assert (not (= var3855!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!3 3) var1827)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var898 Int (getColumnType/800489773 var15 var3482 var936 var1377 var2870)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3616 String (String_valueOf/1240665136 var898)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2681 (Array Int Int) (s2b/-450202684 var15 var3616)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3855!4 (Array Int (Array Int Int)))
(assert (not (= var3855!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!4 4) var2681)) ; Statement: r0[4] = $r13 
(define-const var1559 var3651 (mysqlType/-289055874 var2177)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var929 var3651 var3651-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1559 var929))) ; Cond: $r16 != $r15 
(define-const var3452 var3651 (mysqlType/-289055874 var2177)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3769 Int (getJdbcType/389098195 var3452)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1663 Int (cast-from-Int-to-Int var3769)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3414 String (Int_toString/-1770815874 var1663)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2565 (Array Int Int) (getBytes/1068683673 var3414)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3855!5 (Array Int (Array Int Int)))
(assert (not (= var3855!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!5 5) var2565)) ; Statement: r0[5] = $r58 
(define-const var403 var3651 (mysqlType/-289055874 var2177)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1329 String (getName/1307715079 var403)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2050 (Array Int Int) (s2b/-450202684 var15 var1329)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3855!6 (Array Int (Array Int Int)))
(assert (not (= var3855!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!6 6) var2050)) ; Statement: r0[6] = $r61 
(define-const var759 Int (datetimePrecision/-289055874 var2177)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var759 null-Int))) ; Cond: $r62 != null 
(define-const var385 Int (datetimePrecision/-289055874 var2177)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1118 String (toString/483301002 var385)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3720 (Array Int Int) (s2b/-450202684 var15 var1118)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var3855!7 (Array Int (Array Int Int)))
(assert (not (= var3855!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!7 7) var3720)) ; Statement: r0[7] = $r63 
(define-const var195 Int (columnSize/-289055874 var2177)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var195 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var3699 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3855!8 (Array Int (Array Int Int)))
(assert (not (= var3855!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!8 8) var3699)) ; Statement: r0[8] = $r64 
(define-const var2559 Int (decimalDigits/-289055874 var2177)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var2559 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3164 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var3855!9 (Array Int (Array Int Int)))
(assert (not (= var3855!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!9 9) var3164)) ; Statement: r0[9] = $r65 
(define-const var1468 Int (numPrecRadix/-289055874 var2177)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1531 String (Int_toString/1350422511 var1468)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var146 (Array Int Int) (s2b/-450202684 var15 var1531)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3855!10 (Array Int (Array Int Int)))
(assert (not (= var3855!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3855!10 10) var146)) ; Statement: r0[10] = $r27 
(define-const var2778 Int (nullability/-289055874 var2177)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2778 2)) (and (not (= var2778 1)) (and (not (= var2778 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2726 String (var1689_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3369 var2825 (getExceptionInterceptor/-1244810802 var15)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2190 var706 (var3816_createSQLException/-1268047242 var2726 "S1000" var3369)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3237_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var531-to-var2095=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1689_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3816_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2305=com.mysql.cj.jdbc.DatabaseMetaData, var15=r1, var2404=r9, var3474=r5, var3539=r10, var162=null_type, var3482=z1, var936=z2, var1377=z3, var3658=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2177=r14, var2870=z0, var3800=i4, var434=$r54, var3855=r0, var931=$r53, var3237=com.mysql.cj.conf.RuntimeProperty, var3404=$r2, var2095=java.lang.Object, var3176=$r4, var531=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2126=$r3, var3534=$r55, var1976=$r6, var2047=$r8, var2372=$r7, var3518=$r56, var1827=$r11, var898=$i0, var3616=$r12, var2681=$r13, var3651=com.mysql.cj.MysqlType, var1559=$r16, var929=$r15, var3452=$r17, var3769=$i1, var1663=$s5, var3414=$r57, var2565=$r58, var403=$r59, var1329=$r60, var2050=$r61, var759=$r62, var385=$r18, var1118=$r19, var3720=$r63, var195=$r20, var3699=$r64, var2559=$r23, var3164=$r65, var1468=$i2, var1531=$r26, var146=$r27, var2778=$i3, var1689=com.mysql.cj.Messages, var2726=$r49, var2825=com.mysql.cj.exceptions.ExceptionInterceptor, var3369=$r48, var706=java.sql.SQLException, var3816=com.mysql.cj.jdbc.exceptions.SQLError, var2190=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2305, r1=var15, r9=var2404, r5=var3474, r10=var3539, null_type=var162, z1=var3482, z2=var936, z3=var1377, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3658, r14=var2177, z0=var2870, i4=var3800, $r54=var434, r0=var3855, $r53=var931, com.mysql.cj.conf.RuntimeProperty=var3237, $r2=var3404, java.lang.Object=var2095, $r4=var3176, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var531, $r3=var2126, $r55=var3534, $r6=var1976, $r8=var2047, $r7=var2372, $r56=var3518, $r11=var1827, $i0=var898, $r12=var3616, $r13=var2681, com.mysql.cj.MysqlType=var3651, $r16=var1559, $r15=var929, $r17=var3452, $i1=var3769, $s5=var1663, $r57=var3414, $r58=var2565, $r59=var403, $r60=var1329, $r61=var2050, $r62=var759, $r18=var385, $r19=var1118, $r63=var3720, $r20=var195, $r64=var3699, $r23=var2559, $r65=var3164, $i2=var1468, $r26=var1531, $r27=var146, $i3=var2778, com.mysql.cj.Messages=var1689, $r49=var2726, com.mysql.cj.exceptions.ExceptionInterceptor=var2825, $r48=var3369, java.sql.SQLException=var706, com.mysql.cj.jdbc.exceptions.SQLError=var3816, $r50=var2190}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16