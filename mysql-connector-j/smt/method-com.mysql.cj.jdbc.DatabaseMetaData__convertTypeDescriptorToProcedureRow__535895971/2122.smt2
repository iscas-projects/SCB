(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2650 0)
(declare-sort var1553 0)
(declare-sort var3984 0)
(declare-sort var578 0)
(declare-sort var319 0)
(declare-sort var2163 0)
(declare-sort var1116 0)
(declare-sort var2953 0)
(declare-sort var923 0)
(declare-sort var2493 0)
(declare-sort var2056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2650) var578)
(declare-fun var578_getValue/1633538672 (var578) var319)
(declare-fun cast-from-var2163-to-var319 (var2163) var319)
(declare-fun s2b/-450202684 (var2650 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2650 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3984) var1116)
(declare-fun getJdbcType/389098195 (var1116) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1116) String)
(declare-fun datetimePrecision/-289055874 (var3984) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3984) Int)
(declare-fun decimalDigits/-289055874 (var3984) Int)
(declare-fun numPrecRadix/-289055874 (var3984) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3984) Int)
(declare-fun var2953_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2650) var923)
(declare-fun var2056_createSQLException/-1268047242 (String String var923) var2493)
(declare-const null-var2650 var2650)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3984 var3984)
(declare-const null-Int Int)
(declare-const var2163-SCHEMA var2163)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1116-YEAR var1116)
(declare-const var3699 var2650) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3699 null-var2650)))
(declare-const var3293 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3293 null-__Array__Int__Int__)))
(declare-const var730 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var730 null-__Array__Int__Int__)))
(declare-const var602 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var602 null-String)))
(declare-const var3066 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3066 null-Bool)))
(declare-const var53 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var53 null-Bool)))
(declare-const var3915 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3915 null-Bool)))
(declare-const var1920 var3984) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1920 null-var3984)))
(declare-const var3925 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3925 null-Bool)))
(declare-const var1648 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1648 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3925 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var860 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1631 (Array Int (Array Int Int)) var860) ; Statement: r0 = $r54 
(define-const var484 (Array Int (Array Int Int)) var860) ; Statement: $r53 = $r54 
(define-const var2637 var578 (databaseTerm/1074764847 var3699)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3379 var319 (var578_getValue/1633538672 var2637)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2131 var2163 var2163-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3379 (cast-from-var2163-to-var319 var2131)))) ; Cond: $r4 != $r3 
(define-const var2370 (Array Int Int) var730) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var484!1 (Array Int (Array Int Int)))
(assert (not (= var484!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var484!1 0) var2370)) ; Statement: $r53[0] = $r55 
(define-const var3685 var578 (databaseTerm/1074764847 var3699)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var459 var319 (var578_getValue/1633538672 var3685)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2511 var2163 var2163-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var459 (cast-from-var2163-to-var319 var2511)))) ; Cond: $r8 != $r7 
(define-const var2544 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1631!1 (Array Int (Array Int Int)))
(assert (not (= var1631!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!1 1) var2544)) ; Statement: r0[1] = $r56 
(declare-const var1631!2 (Array Int (Array Int Int)))
(assert (not (= var1631!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!2 2) var3293)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2025 (Array Int Int) (s2b/-450202684 var3699 var602)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1631!3 (Array Int (Array Int Int)))
(assert (not (= var1631!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!3 3) var2025)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1982 Int (getColumnType/800489773 var3699 var3066 var53 var3915 var3925)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1623 String (String_valueOf/1240665136 var1982)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3473 (Array Int Int) (s2b/-450202684 var3699 var1623)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1631!4 (Array Int (Array Int Int)))
(assert (not (= var1631!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!4 4) var3473)) ; Statement: r0[4] = $r13 
(define-const var1060 var1116 (mysqlType/-289055874 var1920)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2706 var1116 var1116-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1060 var2706))) ; Cond: $r16 != $r15 
(define-const var1710 var1116 (mysqlType/-289055874 var1920)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1845 Int (getJdbcType/389098195 var1710)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2082 Int (cast-from-Int-to-Int var1845)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2316 String (Int_toString/-1770815874 var2082)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1196 (Array Int Int) (getBytes/1068683673 var2316)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1631!5 (Array Int (Array Int Int)))
(assert (not (= var1631!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!5 5) var1196)) ; Statement: r0[5] = $r58 
(define-const var2165 var1116 (mysqlType/-289055874 var1920)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1119 String (getName/1307715079 var2165)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var131 (Array Int Int) (s2b/-450202684 var3699 var1119)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1631!6 (Array Int (Array Int Int)))
(assert (not (= var1631!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!6 6) var131)) ; Statement: r0[6] = $r61 
(define-const var2833 Int (datetimePrecision/-289055874 var1920)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2833 null-Int))) ; Cond: $r62 != null 
(define-const var3067 Int (datetimePrecision/-289055874 var1920)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1695 String (toString/483301002 var3067)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1882 (Array Int Int) (s2b/-450202684 var3699 var1695)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1631!7 (Array Int (Array Int Int)))
(assert (not (= var1631!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!7 7) var1882)) ; Statement: r0[7] = $r63 
(define-const var3596 Int (columnSize/-289055874 var1920)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3596 null-Int))) ; Cond: $r20 != null 
(define-const var3165 Int (columnSize/-289055874 var1920)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1234 String (toString/483301002 var3165)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2472 (Array Int Int) (s2b/-450202684 var3699 var1234)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var1631!8 (Array Int (Array Int Int)))
(assert (not (= var1631!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!8 8) var2472)) ; Statement: r0[8] = $r64 
(define-const var3242 Int (decimalDigits/-289055874 var1920)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3242 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var1459 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var1631!9 (Array Int (Array Int Int)))
(assert (not (= var1631!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!9 9) var1459)) ; Statement: r0[9] = $r65 
(define-const var3401 Int (numPrecRadix/-289055874 var1920)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2675 String (Int_toString/1350422511 var3401)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1159 (Array Int Int) (s2b/-450202684 var3699 var2675)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1631!10 (Array Int (Array Int Int)))
(assert (not (= var1631!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1631!10 10) var1159)) ; Statement: r0[10] = $r27 
(define-const var1725 Int (nullability/-289055874 var1920)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1725 2)) (and (not (= var1725 1)) (and (not (= var1725 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2455 String (var2953_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2498 var923 (getExceptionInterceptor/-1244810802 var3699)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3930 var2493 (var2056_createSQLException/-1268047242 var2455 "S1000" var2498)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var578_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2163-to-var319=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2953_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2056_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2650=com.mysql.cj.jdbc.DatabaseMetaData, var3699=r1, var3293=r9, var730=r5, var602=r10, var1553=null_type, var3066=z1, var53=z2, var3915=z3, var3984=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1920=r14, var3925=z0, var1648=i4, var860=$r54, var1631=r0, var484=$r53, var578=com.mysql.cj.conf.RuntimeProperty, var2637=$r2, var319=java.lang.Object, var3379=$r4, var2163=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2131=$r3, var2370=$r55, var3685=$r6, var459=$r8, var2511=$r7, var2544=$r56, var2025=$r11, var1982=$i0, var1623=$r12, var3473=$r13, var1116=com.mysql.cj.MysqlType, var1060=$r16, var2706=$r15, var1710=$r17, var1845=$i1, var2082=$s5, var2316=$r57, var1196=$r58, var2165=$r59, var1119=$r60, var131=$r61, var2833=$r62, var3067=$r18, var1695=$r19, var1882=$r63, var3596=$r20, var3165=$r21, var1234=$r22, var2472=$r64, var3242=$r23, var1459=$r65, var3401=$i2, var2675=$r26, var1159=$r27, var1725=$i3, var2953=com.mysql.cj.Messages, var2455=$r49, var923=com.mysql.cj.exceptions.ExceptionInterceptor, var2498=$r48, var2493=java.sql.SQLException, var2056=com.mysql.cj.jdbc.exceptions.SQLError, var3930=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2650, r1=var3699, r9=var3293, r5=var730, r10=var602, null_type=var1553, z1=var3066, z2=var53, z3=var3915, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3984, r14=var1920, z0=var3925, i4=var1648, $r54=var860, r0=var1631, $r53=var484, com.mysql.cj.conf.RuntimeProperty=var578, $r2=var2637, java.lang.Object=var319, $r4=var3379, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2163, $r3=var2131, $r55=var2370, $r6=var3685, $r8=var459, $r7=var2511, $r56=var2544, $r11=var2025, $i0=var1982, $r12=var1623, $r13=var3473, com.mysql.cj.MysqlType=var1116, $r16=var1060, $r15=var2706, $r17=var1710, $i1=var1845, $s5=var2082, $r57=var2316, $r58=var1196, $r59=var2165, $r60=var1119, $r61=var131, $r62=var2833, $r18=var3067, $r19=var1695, $r63=var1882, $r20=var3596, $r21=var3165, $r22=var1234, $r64=var2472, $r23=var3242, $r65=var1459, $i2=var3401, $r26=var2675, $r27=var1159, $i3=var1725, com.mysql.cj.Messages=var2953, $r49=var2455, com.mysql.cj.exceptions.ExceptionInterceptor=var923, $r48=var2498, java.sql.SQLException=var2493, com.mysql.cj.jdbc.exceptions.SQLError=var2056, $r50=var3930}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16