(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var945 0)
(declare-sort var3840 0)
(declare-sort var187 0)
(declare-sort var380 0)
(declare-sort var1840 0)
(declare-sort var2832 0)
(declare-sort var1505 0)
(declare-sort var602 0)
(declare-sort var2750 0)
(declare-sort var1316 0)
(declare-sort var3974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var945) var380)
(declare-fun var380_getValue/1633538672 (var380) var1840)
(declare-fun cast-from-var2832-to-var1840 (var2832) var1840)
(declare-fun s2b/-450202684 (var945 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var945 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var187) var1505)
(declare-fun getJdbcType/389098195 (var1505) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1505) String)
(declare-fun datetimePrecision/-289055874 (var187) Int)
(declare-fun columnSize/-289055874 (var187) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var187) Int)
(declare-fun numPrecRadix/-289055874 (var187) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var187) Int)
(declare-fun var602_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var945) var2750)
(declare-fun var3974_createSQLException/-1268047242 (String String var2750) var1316)
(declare-const null-var945 var945)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var187 var187)
(declare-const null-Int Int)
(declare-const var2832-SCHEMA var2832)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1505-YEAR var1505)
(declare-const var2150 var945) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2150 null-var945)))
(declare-const var3989 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3989 null-__Array__Int__Int__)))
(declare-const var1747 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1747 null-__Array__Int__Int__)))
(declare-const var1720 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1720 null-String)))
(declare-const var1365 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1365 null-Bool)))
(declare-const var1743 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1743 null-Bool)))
(declare-const var3373 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3373 null-Bool)))
(declare-const var2629 var187) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2629 null-var187)))
(declare-const var1074 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1074 null-Bool)))
(declare-const var3562 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3562 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1074 1 0) 0)) ; Cond: z0 == 0 
(define-const var1131 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var915 (Array Int (Array Int Int)) var1131) ; Statement: r0 = $r54 
(define-const var3368 (Array Int (Array Int Int)) var1131) ; Statement: $r53 = $r54 
(define-const var1856 var380 (databaseTerm/1074764847 var2150)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2681 var1840 (var380_getValue/1633538672 var1856)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3254 var2832 var2832-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var2681 (cast-from-var2832-to-var1840 var3254)))) ; Cond: $r4 != $r3 
(define-const var2076 (Array Int Int) var1747) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3368!1 (Array Int (Array Int Int)))
(assert (not (= var3368!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3368!1 0) var2076)) ; Statement: $r53[0] = $r55 
(define-const var1250 var380 (databaseTerm/1074764847 var2150)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2961 var1840 (var380_getValue/1633538672 var1250)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var746 var2832 var2832-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2961 (cast-from-var2832-to-var1840 var746))))) ; Negate: Cond: $r8 != $r7  
(define-const var3647 (Array Int Int) var1747) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var915!1 (Array Int (Array Int Int)))
(assert (not (= var915!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!1 1) var3647)) ; Statement: r0[1] = $r56 
(declare-const var915!2 (Array Int (Array Int Int)))
(assert (not (= var915!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!2 2) var3989)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1503 (Array Int Int) (s2b/-450202684 var2150 var1720)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var915!3 (Array Int (Array Int Int)))
(assert (not (= var915!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!3 3) var1503)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2759 Int (getColumnType/800489773 var2150 var1365 var1743 var3373 var1074)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2377 String (String_valueOf/1240665136 var2759)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var448 (Array Int Int) (s2b/-450202684 var2150 var2377)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var915!4 (Array Int (Array Int Int)))
(assert (not (= var915!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!4 4) var448)) ; Statement: r0[4] = $r13 
(define-const var732 var1505 (mysqlType/-289055874 var2629)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1959 var1505 var1505-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var732 var1959))) ; Cond: $r16 != $r15 
(define-const var3769 var1505 (mysqlType/-289055874 var2629)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1021 Int (getJdbcType/389098195 var3769)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var859 Int (cast-from-Int-to-Int var1021)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1078 String (Int_toString/-1770815874 var859)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3999 (Array Int Int) (getBytes/1068683673 var1078)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var915!5 (Array Int (Array Int Int)))
(assert (not (= var915!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!5 5) var3999)) ; Statement: r0[5] = $r58 
(define-const var390 var1505 (mysqlType/-289055874 var2629)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2607 String (getName/1307715079 var390)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var871 (Array Int Int) (s2b/-450202684 var2150 var2607)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var915!6 (Array Int (Array Int Int)))
(assert (not (= var915!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!6 6) var871)) ; Statement: r0[6] = $r61 
(define-const var252 Int (datetimePrecision/-289055874 var2629)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var252 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var2638 Int (columnSize/-289055874 var2629)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var815 String (toString/483301002 var2638)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2752 (Array Int Int) (s2b/-450202684 var2150 var815)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var915!7 (Array Int (Array Int Int)))
(assert (not (= var915!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!7 7) var2752)) ; Statement: r0[7] = $r63 
(define-const var287 Int (columnSize/-289055874 var2629)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var287 null-Int))) ; Cond: $r20 != null 
(define-const var2541 Int (columnSize/-289055874 var2629)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var449 String (toString/483301002 var2541)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2654 (Array Int Int) (s2b/-450202684 var2150 var449)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var915!8 (Array Int (Array Int Int)))
(assert (not (= var915!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!8 8) var2654)) ; Statement: r0[8] = $r64 
(define-const var3903 Int (decimalDigits/-289055874 var2629)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var3903 null-Int))) ; Cond: $r23 != null 
(define-const var1581 Int (decimalDigits/-289055874 var2629)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var3835 String (toString/483301002 var1581)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1873 (Array Int Int) (s2b/-450202684 var2150 var3835)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var915!9 (Array Int (Array Int Int)))
(assert (not (= var915!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!9 9) var1873)) ; Statement: r0[9] = $r65 
(define-const var1163 Int (numPrecRadix/-289055874 var2629)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2444 String (Int_toString/1350422511 var1163)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var936 (Array Int Int) (s2b/-450202684 var2150 var2444)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var915!10 (Array Int (Array Int Int)))
(assert (not (= var915!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var915!10 10) var936)) ; Statement: r0[10] = $r27 
(define-const var1554 Int (nullability/-289055874 var2629)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1554 2)) (and (not (= var1554 1)) (and (not (= var1554 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2969 String (var602_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1434 var2750 (getExceptionInterceptor/-1244810802 var2150)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2998 var1316 (var3974_createSQLException/-1268047242 var2969 "S1000" var1434)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var380_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2832-to-var1840=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var602_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3974_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var945=com.mysql.cj.jdbc.DatabaseMetaData, var2150=r1, var3989=r9, var1747=r5, var1720=r10, var3840=null_type, var1365=z1, var1743=z2, var3373=z3, var187=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2629=r14, var1074=z0, var3562=i4, var1131=$r54, var915=r0, var3368=$r53, var380=com.mysql.cj.conf.RuntimeProperty, var1856=$r2, var1840=java.lang.Object, var2681=$r4, var2832=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var3254=$r3, var2076=$r55, var1250=$r6, var2961=$r8, var746=$r7, var3647=$r56, var1503=$r11, var2759=$i0, var2377=$r12, var448=$r13, var1505=com.mysql.cj.MysqlType, var732=$r16, var1959=$r15, var3769=$r17, var1021=$i1, var859=$s5, var1078=$r57, var3999=$r58, var390=$r59, var2607=$r60, var871=$r61, var252=$r62, var2638=$r51, var815=$r52, var2752=$r63, var287=$r20, var2541=$r21, var449=$r22, var2654=$r64, var3903=$r23, var1581=$r24, var3835=$r25, var1873=$r65, var1163=$i2, var2444=$r26, var936=$r27, var1554=$i3, var602=com.mysql.cj.Messages, var2969=$r49, var2750=com.mysql.cj.exceptions.ExceptionInterceptor, var1434=$r48, var1316=java.sql.SQLException, var3974=com.mysql.cj.jdbc.exceptions.SQLError, var2998=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var945, r1=var2150, r9=var3989, r5=var1747, r10=var1720, null_type=var3840, z1=var1365, z2=var1743, z3=var3373, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var187, r14=var2629, z0=var1074, i4=var3562, $r54=var1131, r0=var915, $r53=var3368, com.mysql.cj.conf.RuntimeProperty=var380, $r2=var1856, java.lang.Object=var1840, $r4=var2681, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2832, $r3=var3254, $r55=var2076, $r6=var1250, $r8=var2961, $r7=var746, $r56=var3647, $r11=var1503, $i0=var2759, $r12=var2377, $r13=var448, com.mysql.cj.MysqlType=var1505, $r16=var732, $r15=var1959, $r17=var3769, $i1=var1021, $s5=var859, $r57=var1078, $r58=var3999, $r59=var390, $r60=var2607, $r61=var871, $r62=var252, $r51=var2638, $r52=var815, $r63=var2752, $r20=var287, $r21=var2541, $r22=var449, $r64=var2654, $r23=var3903, $r24=var1581, $r25=var3835, $r65=var1873, $i2=var1163, $r26=var2444, $r27=var936, $i3=var1554, com.mysql.cj.Messages=var602, $r49=var2969, com.mysql.cj.exceptions.ExceptionInterceptor=var2750, $r48=var1434, java.sql.SQLException=var1316, com.mysql.cj.jdbc.exceptions.SQLError=var3974, $r50=var2998}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16