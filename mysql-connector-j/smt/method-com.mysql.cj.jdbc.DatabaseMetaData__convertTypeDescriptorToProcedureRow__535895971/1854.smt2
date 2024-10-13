(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var452 0)
(declare-sort var582 0)
(declare-sort var3918 0)
(declare-sort var3476 0)
(declare-sort var536 0)
(declare-sort var2184 0)
(declare-sort var874 0)
(declare-sort var172 0)
(declare-sort var3432 0)
(declare-sort var222 0)
(declare-sort var3381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var452) var3476)
(declare-fun var3476_getValue/1633538672 (var3476) var536)
(declare-fun cast-from-var2184-to-var536 (var2184) var536)
(declare-fun s2b/-450202684 (var452 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var452 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3918) var874)
(declare-fun getJdbcType/389098195 (var874) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var874) String)
(declare-fun datetimePrecision/-289055874 (var3918) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3918) Int)
(declare-fun decimalDigits/-289055874 (var3918) Int)
(declare-fun numPrecRadix/-289055874 (var3918) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3918) Int)
(declare-fun var172_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var452) var3432)
(declare-fun var3381_createSQLException/-1268047242 (String String var3432) var222)
(declare-const null-var452 var452)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3918 var3918)
(declare-const null-Int Int)
(declare-const var2184-SCHEMA var2184)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var874-YEAR var874)
(declare-const var3369 var452) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3369 null-var452)))
(declare-const var387 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var387 null-__Array__Int__Int__)))
(declare-const var910 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var910 null-__Array__Int__Int__)))
(declare-const var3133 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3133 null-String)))
(declare-const var2072 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2072 null-Bool)))
(declare-const var2291 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2291 null-Bool)))
(declare-const var722 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var722 null-Bool)))
(declare-const var1386 var3918) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1386 null-var3918)))
(declare-const var3355 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3355 null-Bool)))
(declare-const var597 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var597 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3355 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3253 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var2037 (Array Int (Array Int Int)) var3253) ; Statement: r0 = $r54 
(define-const var1056 (Array Int (Array Int Int)) var3253) ; Statement: $r53 = $r54 
(define-const var3096 var3476 (databaseTerm/1074764847 var3369)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3496 var536 (var3476_getValue/1633538672 var3096)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3191 var2184 var2184-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3496 (cast-from-var2184-to-var536 var3191))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3385 (Array Int Int) (s2b/-450202684 var3369 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1056!1 (Array Int (Array Int Int)))
(assert (not (= var1056!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1056!1 0) var3385)) ; Statement: $r53[0] = $r55 
(define-const var3554 var3476 (databaseTerm/1074764847 var3369)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var886 var536 (var3476_getValue/1633538672 var3554)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2799 var2184 var2184-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var886 (cast-from-var2184-to-var536 var2799)))) ; Cond: $r8 != $r7 
(define-const var1207 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var2037!1 (Array Int (Array Int Int)))
(assert (not (= var2037!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!1 1) var1207)) ; Statement: r0[1] = $r56 
(declare-const var2037!2 (Array Int (Array Int Int)))
(assert (not (= var2037!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!2 2) var387)) ; Statement: r0[2] = r9 
(assert true)
(define-const var720 (Array Int Int) (s2b/-450202684 var3369 var3133)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2037!3 (Array Int (Array Int Int)))
(assert (not (= var2037!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!3 3) var720)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1577 Int (getColumnType/800489773 var3369 var2072 var2291 var722 var3355)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3435 String (String_valueOf/1240665136 var1577)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1153 (Array Int Int) (s2b/-450202684 var3369 var3435)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2037!4 (Array Int (Array Int Int)))
(assert (not (= var2037!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!4 4) var1153)) ; Statement: r0[4] = $r13 
(define-const var1707 var874 (mysqlType/-289055874 var1386)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2070 var874 var874-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1707 var2070))) ; Cond: $r16 != $r15 
(define-const var549 var874 (mysqlType/-289055874 var1386)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var90 Int (getJdbcType/389098195 var549)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2043 Int (cast-from-Int-to-Int var90)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3208 String (Int_toString/-1770815874 var2043)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2562 (Array Int Int) (getBytes/1068683673 var3208)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2037!5 (Array Int (Array Int Int)))
(assert (not (= var2037!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!5 5) var2562)) ; Statement: r0[5] = $r58 
(define-const var3971 var874 (mysqlType/-289055874 var1386)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1234 String (getName/1307715079 var3971)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1733 (Array Int Int) (s2b/-450202684 var3369 var1234)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2037!6 (Array Int (Array Int Int)))
(assert (not (= var2037!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!6 6) var1733)) ; Statement: r0[6] = $r61 
(define-const var545 Int (datetimePrecision/-289055874 var1386)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var545 null-Int))) ; Cond: $r62 != null 
(define-const var598 Int (datetimePrecision/-289055874 var1386)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var991 String (toString/483301002 var598)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3068 (Array Int Int) (s2b/-450202684 var3369 var991)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var2037!7 (Array Int (Array Int Int)))
(assert (not (= var2037!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!7 7) var3068)) ; Statement: r0[7] = $r63 
(define-const var3775 Int (columnSize/-289055874 var1386)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3775 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var857 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var2037!8 (Array Int (Array Int Int)))
(assert (not (= var2037!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!8 8) var857)) ; Statement: r0[8] = $r64 
(define-const var3418 Int (decimalDigits/-289055874 var1386)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3418 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var922 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2037!9 (Array Int (Array Int Int)))
(assert (not (= var2037!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!9 9) var922)) ; Statement: r0[9] = $r65 
(define-const var3463 Int (numPrecRadix/-289055874 var1386)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var721 String (Int_toString/1350422511 var3463)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1724 (Array Int Int) (s2b/-450202684 var3369 var721)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2037!10 (Array Int (Array Int Int)))
(assert (not (= var2037!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2037!10 10) var1724)) ; Statement: r0[10] = $r27 
(define-const var1793 Int (nullability/-289055874 var1386)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1793 2)) (and (not (= var1793 1)) (and (not (= var1793 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2036 String (var172_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1408 var3432 (getExceptionInterceptor/-1244810802 var3369)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1131 var222 (var3381_createSQLException/-1268047242 var2036 "S1000" var1408)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3476_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2184-to-var536=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var172_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3381_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var452=com.mysql.cj.jdbc.DatabaseMetaData, var3369=r1, var387=r9, var910=r5, var3133=r10, var582=null_type, var2072=z1, var2291=z2, var722=z3, var3918=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1386=r14, var3355=z0, var597=i4, var3253=$r54, var2037=r0, var1056=$r53, var3476=com.mysql.cj.conf.RuntimeProperty, var3096=$r2, var536=java.lang.Object, var3496=$r4, var2184=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var3191=$r3, var3385=$r55, var3554=$r6, var886=$r8, var2799=$r7, var1207=$r56, var720=$r11, var1577=$i0, var3435=$r12, var1153=$r13, var874=com.mysql.cj.MysqlType, var1707=$r16, var2070=$r15, var549=$r17, var90=$i1, var2043=$s5, var3208=$r57, var2562=$r58, var3971=$r59, var1234=$r60, var1733=$r61, var545=$r62, var598=$r18, var991=$r19, var3068=$r63, var3775=$r20, var857=$r64, var3418=$r23, var922=$r65, var3463=$i2, var721=$r26, var1724=$r27, var1793=$i3, var172=com.mysql.cj.Messages, var2036=$r49, var3432=com.mysql.cj.exceptions.ExceptionInterceptor, var1408=$r48, var222=java.sql.SQLException, var3381=com.mysql.cj.jdbc.exceptions.SQLError, var1131=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var452, r1=var3369, r9=var387, r5=var910, r10=var3133, null_type=var582, z1=var2072, z2=var2291, z3=var722, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3918, r14=var1386, z0=var3355, i4=var597, $r54=var3253, r0=var2037, $r53=var1056, com.mysql.cj.conf.RuntimeProperty=var3476, $r2=var3096, java.lang.Object=var536, $r4=var3496, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2184, $r3=var3191, $r55=var3385, $r6=var3554, $r8=var886, $r7=var2799, $r56=var1207, $r11=var720, $i0=var1577, $r12=var3435, $r13=var1153, com.mysql.cj.MysqlType=var874, $r16=var1707, $r15=var2070, $r17=var549, $i1=var90, $s5=var2043, $r57=var3208, $r58=var2562, $r59=var3971, $r60=var1234, $r61=var1733, $r62=var545, $r18=var598, $r19=var991, $r63=var3068, $r20=var3775, $r64=var857, $r23=var3418, $r65=var922, $i2=var3463, $r26=var721, $r27=var1724, $i3=var1793, com.mysql.cj.Messages=var172, $r49=var2036, com.mysql.cj.exceptions.ExceptionInterceptor=var3432, $r48=var1408, java.sql.SQLException=var222, com.mysql.cj.jdbc.exceptions.SQLError=var3381, $r50=var1131}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16