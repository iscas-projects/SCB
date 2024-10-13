(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1610 0)
(declare-sort var1987 0)
(declare-sort var1054 0)
(declare-sort var1340 0)
(declare-sort var3044 0)
(declare-sort var3264 0)
(declare-sort var1642 0)
(declare-sort var1572 0)
(declare-sort var729 0)
(declare-sort var3443 0)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1610) var1340)
(declare-fun var1340_getValue/1633538672 (var1340) var3044)
(declare-fun cast-from-var3264-to-var3044 (var3264) var3044)
(declare-fun s2b/-450202684 (var1610 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1610 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1054) var1642)
(declare-fun getJdbcType/389098195 (var1642) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1642) String)
(declare-fun datetimePrecision/-289055874 (var1054) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var1054) Int)
(declare-fun decimalDigits/-289055874 (var1054) Int)
(declare-fun numPrecRadix/-289055874 (var1054) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1054) Int)
(declare-fun var1572_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1610) var729)
(declare-fun var1916_createSQLException/-1268047242 (String String var729) var3443)
(declare-const null-var1610 var1610)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1054 var1054)
(declare-const null-Int Int)
(declare-const var3264-SCHEMA var3264)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1642-YEAR var1642)
(declare-const var3604 var1610) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3604 null-var1610)))
(declare-const var3984 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3984 null-__Array__Int__Int__)))
(declare-const var2952 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2952 null-__Array__Int__Int__)))
(declare-const var3466 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3466 null-String)))
(declare-const var1169 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1169 null-Bool)))
(declare-const var2611 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2611 null-Bool)))
(declare-const var1302 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1302 null-Bool)))
(declare-const var3167 var1054) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3167 null-var1054)))
(declare-const var1014 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1014 null-Bool)))
(declare-const var3540 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3540 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1014 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1811 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1455 (Array Int (Array Int Int)) var1811) ; Statement: r0 = $r54 
(define-const var2215 (Array Int (Array Int Int)) var1811) ; Statement: $r53 = $r54 
(define-const var1735 var1340 (databaseTerm/1074764847 var3604)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1648 var3044 (var1340_getValue/1633538672 var1735)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1907 var3264 var3264-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1648 (cast-from-var3264-to-var3044 var1907))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3925 (Array Int Int) (s2b/-450202684 var3604 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2215!1 (Array Int (Array Int Int)))
(assert (not (= var2215!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2215!1 0) var3925)) ; Statement: $r53[0] = $r55 
(define-const var2928 var1340 (databaseTerm/1074764847 var3604)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2860 var3044 (var1340_getValue/1633538672 var2928)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3233 var3264 var3264-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2860 (cast-from-var3264-to-var3044 var3233))))) ; Negate: Cond: $r8 != $r7  
(define-const var3627 (Array Int Int) var2952) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var1455!1 (Array Int (Array Int Int)))
(assert (not (= var1455!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!1 1) var3627)) ; Statement: r0[1] = $r56 
(declare-const var1455!2 (Array Int (Array Int Int)))
(assert (not (= var1455!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!2 2) var3984)) ; Statement: r0[2] = r9 
(assert true)
(define-const var61 (Array Int Int) (s2b/-450202684 var3604 var3466)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1455!3 (Array Int (Array Int Int)))
(assert (not (= var1455!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!3 3) var61)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2921 Int (getColumnType/800489773 var3604 var1169 var2611 var1302 var1014)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1162 String (String_valueOf/1240665136 var2921)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1264 (Array Int Int) (s2b/-450202684 var3604 var1162)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1455!4 (Array Int (Array Int Int)))
(assert (not (= var1455!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!4 4) var1264)) ; Statement: r0[4] = $r13 
(define-const var11 var1642 (mysqlType/-289055874 var3167)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1890 var1642 var1642-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var11 var1890))) ; Cond: $r16 != $r15 
(define-const var1167 var1642 (mysqlType/-289055874 var3167)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3755 Int (getJdbcType/389098195 var1167)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3429 Int (cast-from-Int-to-Int var3755)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3255 String (Int_toString/-1770815874 var3429)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var12 (Array Int Int) (getBytes/1068683673 var3255)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1455!5 (Array Int (Array Int Int)))
(assert (not (= var1455!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!5 5) var12)) ; Statement: r0[5] = $r58 
(define-const var2898 var1642 (mysqlType/-289055874 var3167)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1044 String (getName/1307715079 var2898)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2664 (Array Int Int) (s2b/-450202684 var3604 var1044)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1455!6 (Array Int (Array Int Int)))
(assert (not (= var1455!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!6 6) var2664)) ; Statement: r0[6] = $r61 
(define-const var1351 Int (datetimePrecision/-289055874 var3167)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var1351 null-Int))) ; Cond: $r62 != null 
(define-const var3823 Int (datetimePrecision/-289055874 var3167)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3779 String (toString/483301002 var3823)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1120 (Array Int Int) (s2b/-450202684 var3604 var3779)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1455!7 (Array Int (Array Int Int)))
(assert (not (= var1455!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!7 7) var1120)) ; Statement: r0[7] = $r63 
(define-const var2490 Int (columnSize/-289055874 var3167)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2490 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var2647 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var1455!8 (Array Int (Array Int Int)))
(assert (not (= var1455!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!8 8) var2647)) ; Statement: r0[8] = $r64 
(define-const var3502 Int (decimalDigits/-289055874 var3167)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var3502 null-Int))) ; Cond: $r23 != null 
(define-const var1600 Int (decimalDigits/-289055874 var3167)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var2000 String (toString/483301002 var1600)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1175 (Array Int Int) (s2b/-450202684 var3604 var2000)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var1455!9 (Array Int (Array Int Int)))
(assert (not (= var1455!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!9 9) var1175)) ; Statement: r0[9] = $r65 
(define-const var1375 Int (numPrecRadix/-289055874 var3167)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3830 String (Int_toString/1350422511 var1375)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1414 (Array Int Int) (s2b/-450202684 var3604 var3830)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1455!10 (Array Int (Array Int Int)))
(assert (not (= var1455!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1455!10 10) var1414)) ; Statement: r0[10] = $r27 
(define-const var2362 Int (nullability/-289055874 var3167)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2362 2)) (and (not (= var2362 1)) (and (not (= var2362 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3499 String (var1572_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2432 var729 (getExceptionInterceptor/-1244810802 var3604)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var443 var3443 (var1916_createSQLException/-1268047242 var3499 "S1000" var2432)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1340_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3264-to-var3044=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1572_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1916_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1610=com.mysql.cj.jdbc.DatabaseMetaData, var3604=r1, var3984=r9, var2952=r5, var3466=r10, var1987=null_type, var1169=z1, var2611=z2, var1302=z3, var1054=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3167=r14, var1014=z0, var3540=i4, var1811=$r54, var1455=r0, var2215=$r53, var1340=com.mysql.cj.conf.RuntimeProperty, var1735=$r2, var3044=java.lang.Object, var1648=$r4, var3264=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1907=$r3, var3925=$r55, var2928=$r6, var2860=$r8, var3233=$r7, var3627=$r56, var61=$r11, var2921=$i0, var1162=$r12, var1264=$r13, var1642=com.mysql.cj.MysqlType, var11=$r16, var1890=$r15, var1167=$r17, var3755=$i1, var3429=$s5, var3255=$r57, var12=$r58, var2898=$r59, var1044=$r60, var2664=$r61, var1351=$r62, var3823=$r18, var3779=$r19, var1120=$r63, var2490=$r20, var2647=$r64, var3502=$r23, var1600=$r24, var2000=$r25, var1175=$r65, var1375=$i2, var3830=$r26, var1414=$r27, var2362=$i3, var1572=com.mysql.cj.Messages, var3499=$r49, var729=com.mysql.cj.exceptions.ExceptionInterceptor, var2432=$r48, var3443=java.sql.SQLException, var1916=com.mysql.cj.jdbc.exceptions.SQLError, var443=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1610, r1=var3604, r9=var3984, r5=var2952, r10=var3466, null_type=var1987, z1=var1169, z2=var2611, z3=var1302, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1054, r14=var3167, z0=var1014, i4=var3540, $r54=var1811, r0=var1455, $r53=var2215, com.mysql.cj.conf.RuntimeProperty=var1340, $r2=var1735, java.lang.Object=var3044, $r4=var1648, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3264, $r3=var1907, $r55=var3925, $r6=var2928, $r8=var2860, $r7=var3233, $r56=var3627, $r11=var61, $i0=var2921, $r12=var1162, $r13=var1264, com.mysql.cj.MysqlType=var1642, $r16=var11, $r15=var1890, $r17=var1167, $i1=var3755, $s5=var3429, $r57=var3255, $r58=var12, $r59=var2898, $r60=var1044, $r61=var2664, $r62=var1351, $r18=var3823, $r19=var3779, $r63=var1120, $r20=var2490, $r64=var2647, $r23=var3502, $r24=var1600, $r25=var2000, $r65=var1175, $i2=var1375, $r26=var3830, $r27=var1414, $i3=var2362, com.mysql.cj.Messages=var1572, $r49=var3499, com.mysql.cj.exceptions.ExceptionInterceptor=var729, $r48=var2432, java.sql.SQLException=var3443, com.mysql.cj.jdbc.exceptions.SQLError=var1916, $r50=var443}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16