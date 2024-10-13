(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2399 0)
(declare-sort var2832 0)
(declare-sort var1981 0)
(declare-sort var2753 0)
(declare-sort var1472 0)
(declare-sort var1188 0)
(declare-sort var546 0)
(declare-sort var2756 0)
(declare-sort var3025 0)
(declare-sort var607 0)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2399) var2753)
(declare-fun var2753_getValue/1633538672 (var2753) var1472)
(declare-fun cast-from-var1188-to-var1472 (var1188) var1472)
(declare-fun s2b/-450202684 (var2399 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2399 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1981) var546)
(declare-fun getJdbcType/389098195 (var546) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var546) String)
(declare-fun datetimePrecision/-289055874 (var1981) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var1981) Int)
(declare-fun decimalDigits/-289055874 (var1981) Int)
(declare-fun numPrecRadix/-289055874 (var1981) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1981) Int)
(declare-fun var2756_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2399) var3025)
(declare-fun var2521_createSQLException/-1268047242 (String String var3025) var607)
(declare-const null-var2399 var2399)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1981 var1981)
(declare-const null-Int Int)
(declare-const var1188-SCHEMA var1188)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var546-YEAR var546)
(declare-const var951 var2399) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var951 null-var2399)))
(declare-const var857 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var857 null-__Array__Int__Int__)))
(declare-const var2886 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2886 null-__Array__Int__Int__)))
(declare-const var1213 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1213 null-String)))
(declare-const var1778 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1778 null-Bool)))
(declare-const var2954 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2954 null-Bool)))
(declare-const var1204 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1204 null-Bool)))
(declare-const var1876 var1981) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1876 null-var1981)))
(declare-const var307 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var307 null-Bool)))
(declare-const var2914 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2914 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var307 1 0) 0)) ; Cond: z0 == 0 
(define-const var2988 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var1146 (Array Int (Array Int Int)) var2988) ; Statement: r0 = $r54 
(define-const var3500 (Array Int (Array Int Int)) var2988) ; Statement: $r53 = $r54 
(define-const var3605 var2753 (databaseTerm/1074764847 var951)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1132 var1472 (var2753_getValue/1633538672 var3605)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2620 var1188 var1188-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var1132 (cast-from-var1188-to-var1472 var2620)))) ; Cond: $r4 != $r3 
(define-const var898 (Array Int Int) var2886) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3500!1 (Array Int (Array Int Int)))
(assert (not (= var3500!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3500!1 0) var898)) ; Statement: $r53[0] = $r55 
(define-const var90 var2753 (databaseTerm/1074764847 var951)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2468 var1472 (var2753_getValue/1633538672 var90)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var492 var1188 var1188-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2468 (cast-from-var1188-to-var1472 var492))))) ; Negate: Cond: $r8 != $r7  
(define-const var1866 (Array Int Int) var2886) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var1146!1 (Array Int (Array Int Int)))
(assert (not (= var1146!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!1 1) var1866)) ; Statement: r0[1] = $r56 
(declare-const var1146!2 (Array Int (Array Int Int)))
(assert (not (= var1146!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!2 2) var857)) ; Statement: r0[2] = r9 
(assert true)
(define-const var301 (Array Int Int) (s2b/-450202684 var951 var1213)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1146!3 (Array Int (Array Int Int)))
(assert (not (= var1146!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!3 3) var301)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2867 Int (getColumnType/800489773 var951 var1778 var2954 var1204 var307)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3194 String (String_valueOf/1240665136 var2867)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2265 (Array Int Int) (s2b/-450202684 var951 var3194)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1146!4 (Array Int (Array Int Int)))
(assert (not (= var1146!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!4 4) var2265)) ; Statement: r0[4] = $r13 
(define-const var1675 var546 (mysqlType/-289055874 var1876)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var626 var546 var546-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1675 var626))) ; Cond: $r16 != $r15 
(define-const var2973 var546 (mysqlType/-289055874 var1876)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var817 Int (getJdbcType/389098195 var2973)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2611 Int (cast-from-Int-to-Int var817)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1035 String (Int_toString/-1770815874 var2611)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var556 (Array Int Int) (getBytes/1068683673 var1035)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1146!5 (Array Int (Array Int Int)))
(assert (not (= var1146!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!5 5) var556)) ; Statement: r0[5] = $r58 
(define-const var873 var546 (mysqlType/-289055874 var1876)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2839 String (getName/1307715079 var873)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2068 (Array Int Int) (s2b/-450202684 var951 var2839)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1146!6 (Array Int (Array Int Int)))
(assert (not (= var1146!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!6 6) var2068)) ; Statement: r0[6] = $r61 
(define-const var2880 Int (datetimePrecision/-289055874 var1876)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2880 null-Int))) ; Cond: $r62 != null 
(define-const var3892 Int (datetimePrecision/-289055874 var1876)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var451 String (toString/483301002 var3892)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3414 (Array Int Int) (s2b/-450202684 var951 var451)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1146!7 (Array Int (Array Int Int)))
(assert (not (= var1146!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!7 7) var3414)) ; Statement: r0[7] = $r63 
(define-const var619 Int (columnSize/-289055874 var1876)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var619 null-Int))) ; Cond: $r20 != null 
(define-const var2484 Int (columnSize/-289055874 var1876)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1048 String (toString/483301002 var2484)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3404 (Array Int Int) (s2b/-450202684 var951 var1048)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var1146!8 (Array Int (Array Int Int)))
(assert (not (= var1146!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!8 8) var3404)) ; Statement: r0[8] = $r64 
(define-const var980 Int (decimalDigits/-289055874 var1876)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var980 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3854 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var1146!9 (Array Int (Array Int Int)))
(assert (not (= var1146!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!9 9) var3854)) ; Statement: r0[9] = $r65 
(define-const var1967 Int (numPrecRadix/-289055874 var1876)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var531 String (Int_toString/1350422511 var1967)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1462 (Array Int Int) (s2b/-450202684 var951 var531)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1146!10 (Array Int (Array Int Int)))
(assert (not (= var1146!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1146!10 10) var1462)) ; Statement: r0[10] = $r27 
(define-const var1512 Int (nullability/-289055874 var1876)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1512 2)) (and (not (= var1512 1)) (and (not (= var1512 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var538 String (var2756_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2705 var3025 (getExceptionInterceptor/-1244810802 var951)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1812 var607 (var2521_createSQLException/-1268047242 var538 "S1000" var2705)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2753_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1188-to-var1472=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2756_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2521_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2399=com.mysql.cj.jdbc.DatabaseMetaData, var951=r1, var857=r9, var2886=r5, var1213=r10, var2832=null_type, var1778=z1, var2954=z2, var1204=z3, var1981=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1876=r14, var307=z0, var2914=i4, var2988=$r54, var1146=r0, var3500=$r53, var2753=com.mysql.cj.conf.RuntimeProperty, var3605=$r2, var1472=java.lang.Object, var1132=$r4, var1188=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2620=$r3, var898=$r55, var90=$r6, var2468=$r8, var492=$r7, var1866=$r56, var301=$r11, var2867=$i0, var3194=$r12, var2265=$r13, var546=com.mysql.cj.MysqlType, var1675=$r16, var626=$r15, var2973=$r17, var817=$i1, var2611=$s5, var1035=$r57, var556=$r58, var873=$r59, var2839=$r60, var2068=$r61, var2880=$r62, var3892=$r18, var451=$r19, var3414=$r63, var619=$r20, var2484=$r21, var1048=$r22, var3404=$r64, var980=$r23, var3854=$r65, var1967=$i2, var531=$r26, var1462=$r27, var1512=$i3, var2756=com.mysql.cj.Messages, var538=$r49, var3025=com.mysql.cj.exceptions.ExceptionInterceptor, var2705=$r48, var607=java.sql.SQLException, var2521=com.mysql.cj.jdbc.exceptions.SQLError, var1812=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2399, r1=var951, r9=var857, r5=var2886, r10=var1213, null_type=var2832, z1=var1778, z2=var2954, z3=var1204, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1981, r14=var1876, z0=var307, i4=var2914, $r54=var2988, r0=var1146, $r53=var3500, com.mysql.cj.conf.RuntimeProperty=var2753, $r2=var3605, java.lang.Object=var1472, $r4=var1132, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1188, $r3=var2620, $r55=var898, $r6=var90, $r8=var2468, $r7=var492, $r56=var1866, $r11=var301, $i0=var2867, $r12=var3194, $r13=var2265, com.mysql.cj.MysqlType=var546, $r16=var1675, $r15=var626, $r17=var2973, $i1=var817, $s5=var2611, $r57=var1035, $r58=var556, $r59=var873, $r60=var2839, $r61=var2068, $r62=var2880, $r18=var3892, $r19=var451, $r63=var3414, $r20=var619, $r21=var2484, $r22=var1048, $r64=var3404, $r23=var980, $r65=var3854, $i2=var1967, $r26=var531, $r27=var1462, $i3=var1512, com.mysql.cj.Messages=var2756, $r49=var538, com.mysql.cj.exceptions.ExceptionInterceptor=var3025, $r48=var2705, java.sql.SQLException=var607, com.mysql.cj.jdbc.exceptions.SQLError=var2521, $r50=var1812}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16