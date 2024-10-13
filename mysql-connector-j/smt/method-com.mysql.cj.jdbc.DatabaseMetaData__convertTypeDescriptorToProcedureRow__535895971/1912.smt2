(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3640 0)
(declare-sort var1151 0)
(declare-sort var1798 0)
(declare-sort var1229 0)
(declare-sort var2287 0)
(declare-sort var2627 0)
(declare-sort var2628 0)
(declare-sort var1499 0)
(declare-sort var2209 0)
(declare-sort var1944 0)
(declare-sort var2464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3640) var1229)
(declare-fun var1229_getValue/1633538672 (var1229) var2287)
(declare-fun cast-from-var2627-to-var2287 (var2627) var2287)
(declare-fun s2b/-450202684 (var3640 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3640 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1798) var2628)
(declare-fun getJdbcType/389098195 (var2628) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2628) String)
(declare-fun datetimePrecision/-289055874 (var1798) Int)
(declare-fun columnSize/-289055874 (var1798) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var1798) Int)
(declare-fun numPrecRadix/-289055874 (var1798) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1798) Int)
(declare-fun var1499_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3640) var2209)
(declare-fun var2464_createSQLException/-1268047242 (String String var2209) var1944)
(declare-const null-var3640 var3640)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1798 var1798)
(declare-const null-Int Int)
(declare-const var2627-SCHEMA var2627)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2628-YEAR var2628)
(declare-const var2036 var3640) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2036 null-var3640)))
(declare-const var1714 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1714 null-__Array__Int__Int__)))
(declare-const var2240 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2240 null-__Array__Int__Int__)))
(declare-const var1155 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1155 null-String)))
(declare-const var3825 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3825 null-Bool)))
(declare-const var3604 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3604 null-Bool)))
(declare-const var2020 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2020 null-Bool)))
(declare-const var2 var1798) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2 null-var1798)))
(declare-const var2024 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2024 null-Bool)))
(declare-const var2437 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2437 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var2024 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var872 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3146 (Array Int (Array Int Int)) var872) ; Statement: r0 = $r54 
(define-const var1233 (Array Int (Array Int Int)) var872) ; Statement: $r53 = $r54 
(define-const var1564 var1229 (databaseTerm/1074764847 var2036)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var311 var2287 (var1229_getValue/1633538672 var1564)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1194 var2627 var2627-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var311 (cast-from-var2627-to-var2287 var1194)))) ; Cond: $r4 != $r3 
(define-const var190 (Array Int Int) var2240) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1233!1 (Array Int (Array Int Int)))
(assert (not (= var1233!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1233!1 0) var190)) ; Statement: $r53[0] = $r55 
(define-const var697 var1229 (databaseTerm/1074764847 var2036)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var65 var2287 (var1229_getValue/1633538672 var697)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1640 var2627 var2627-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var65 (cast-from-var2627-to-var2287 var1640))))) ; Negate: Cond: $r8 != $r7  
(define-const var3085 (Array Int Int) var2240) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3146!1 (Array Int (Array Int Int)))
(assert (not (= var3146!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!1 1) var3085)) ; Statement: r0[1] = $r56 
(declare-const var3146!2 (Array Int (Array Int Int)))
(assert (not (= var3146!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!2 2) var1714)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1765 (Array Int Int) (s2b/-450202684 var2036 var1155)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3146!3 (Array Int (Array Int Int)))
(assert (not (= var3146!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!3 3) var1765)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3992 Int (getColumnType/800489773 var2036 var3825 var3604 var2020 var2024)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2109 String (String_valueOf/1240665136 var3992)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1115 (Array Int Int) (s2b/-450202684 var2036 var2109)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3146!4 (Array Int (Array Int Int)))
(assert (not (= var3146!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!4 4) var1115)) ; Statement: r0[4] = $r13 
(define-const var604 var2628 (mysqlType/-289055874 var2)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2465 var2628 var2628-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var604 var2465))) ; Cond: $r16 != $r15 
(define-const var2372 var2628 (mysqlType/-289055874 var2)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2619 Int (getJdbcType/389098195 var2372)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2076 Int (cast-from-Int-to-Int var2619)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2569 String (Int_toString/-1770815874 var2076)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3021 (Array Int Int) (getBytes/1068683673 var2569)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3146!5 (Array Int (Array Int Int)))
(assert (not (= var3146!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!5 5) var3021)) ; Statement: r0[5] = $r58 
(define-const var2716 var2628 (mysqlType/-289055874 var2)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var115 String (getName/1307715079 var2716)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3862 (Array Int Int) (s2b/-450202684 var2036 var115)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3146!6 (Array Int (Array Int Int)))
(assert (not (= var3146!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!6 6) var3862)) ; Statement: r0[6] = $r61 
(define-const var3697 Int (datetimePrecision/-289055874 var2)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var3697 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3881 Int (columnSize/-289055874 var2)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var957 String (toString/483301002 var3881)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3441 (Array Int Int) (s2b/-450202684 var2036 var957)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3146!7 (Array Int (Array Int Int)))
(assert (not (= var3146!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!7 7) var3441)) ; Statement: r0[7] = $r63 
(define-const var336 Int (columnSize/-289055874 var2)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var336 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1631 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3146!8 (Array Int (Array Int Int)))
(assert (not (= var3146!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!8 8) var1631)) ; Statement: r0[8] = $r64 
(define-const var1633 Int (decimalDigits/-289055874 var2)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var1633 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var350 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var3146!9 (Array Int (Array Int Int)))
(assert (not (= var3146!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!9 9) var350)) ; Statement: r0[9] = $r65 
(define-const var3766 Int (numPrecRadix/-289055874 var2)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var969 String (Int_toString/1350422511 var3766)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2318 (Array Int Int) (s2b/-450202684 var2036 var969)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3146!10 (Array Int (Array Int Int)))
(assert (not (= var3146!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3146!10 10) var2318)) ; Statement: r0[10] = $r27 
(define-const var1088 Int (nullability/-289055874 var2)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1088 2)) (and (not (= var1088 1)) (and (not (= var1088 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var921 String (var1499_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3116 var2209 (getExceptionInterceptor/-1244810802 var2036)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2740 var1944 (var2464_createSQLException/-1268047242 var921 "S1000" var3116)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1229_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2627-to-var2287=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1499_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2464_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3640=com.mysql.cj.jdbc.DatabaseMetaData, var2036=r1, var1714=r9, var2240=r5, var1155=r10, var1151=null_type, var3825=z1, var3604=z2, var2020=z3, var1798=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2=r14, var2024=z0, var2437=i4, var872=$r54, var3146=r0, var1233=$r53, var1229=com.mysql.cj.conf.RuntimeProperty, var1564=$r2, var2287=java.lang.Object, var311=$r4, var2627=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1194=$r3, var190=$r55, var697=$r6, var65=$r8, var1640=$r7, var3085=$r56, var1765=$r11, var3992=$i0, var2109=$r12, var1115=$r13, var2628=com.mysql.cj.MysqlType, var604=$r16, var2465=$r15, var2372=$r17, var2619=$i1, var2076=$s5, var2569=$r57, var3021=$r58, var2716=$r59, var115=$r60, var3862=$r61, var3697=$r62, var3881=$r51, var957=$r52, var3441=$r63, var336=$r20, var1631=$r64, var1633=$r23, var350=$r65, var3766=$i2, var969=$r26, var2318=$r27, var1088=$i3, var1499=com.mysql.cj.Messages, var921=$r49, var2209=com.mysql.cj.exceptions.ExceptionInterceptor, var3116=$r48, var1944=java.sql.SQLException, var2464=com.mysql.cj.jdbc.exceptions.SQLError, var2740=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3640, r1=var2036, r9=var1714, r5=var2240, r10=var1155, null_type=var1151, z1=var3825, z2=var3604, z3=var2020, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1798, r14=var2, z0=var2024, i4=var2437, $r54=var872, r0=var3146, $r53=var1233, com.mysql.cj.conf.RuntimeProperty=var1229, $r2=var1564, java.lang.Object=var2287, $r4=var311, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2627, $r3=var1194, $r55=var190, $r6=var697, $r8=var65, $r7=var1640, $r56=var3085, $r11=var1765, $i0=var3992, $r12=var2109, $r13=var1115, com.mysql.cj.MysqlType=var2628, $r16=var604, $r15=var2465, $r17=var2372, $i1=var2619, $s5=var2076, $r57=var2569, $r58=var3021, $r59=var2716, $r60=var115, $r61=var3862, $r62=var3697, $r51=var3881, $r52=var957, $r63=var3441, $r20=var336, $r64=var1631, $r23=var1633, $r65=var350, $i2=var3766, $r26=var969, $r27=var2318, $i3=var1088, com.mysql.cj.Messages=var1499, $r49=var921, com.mysql.cj.exceptions.ExceptionInterceptor=var2209, $r48=var3116, java.sql.SQLException=var1944, com.mysql.cj.jdbc.exceptions.SQLError=var2464, $r50=var2740}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16