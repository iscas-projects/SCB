(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2023 0)
(declare-sort var3030 0)
(declare-sort var817 0)
(declare-sort var838 0)
(declare-sort var1044 0)
(declare-sort var310 0)
(declare-sort var1906 0)
(declare-sort var2246 0)
(declare-sort var3258 0)
(declare-sort var2135 0)
(declare-sort var1714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2023) var838)
(declare-fun var838_getValue/1633538672 (var838) var1044)
(declare-fun cast-from-var310-to-var1044 (var310) var1044)
(declare-fun s2b/-450202684 (var2023 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2023 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var817) var1906)
(declare-fun getJdbcType/389098195 (var1906) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1906) String)
(declare-fun datetimePrecision/-289055874 (var817) Int)
(declare-fun columnSize/-289055874 (var817) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var817) Int)
(declare-fun numPrecRadix/-289055874 (var817) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var817) Int)
(declare-fun var2246_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2023) var3258)
(declare-fun var1714_createSQLException/-1268047242 (String String var3258) var2135)
(declare-const null-var2023 var2023)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var817 var817)
(declare-const null-Int Int)
(declare-const var310-SCHEMA var310)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1906-YEAR var1906)
(declare-const var2647 var2023) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2647 null-var2023)))
(declare-const var1309 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1309 null-__Array__Int__Int__)))
(declare-const var3335 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3335 null-__Array__Int__Int__)))
(declare-const var913 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var913 null-String)))
(declare-const var1369 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1369 null-Bool)))
(declare-const var1723 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1723 null-Bool)))
(declare-const var3916 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3916 null-Bool)))
(declare-const var2812 var817) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2812 null-var817)))
(declare-const var3220 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3220 null-Bool)))
(declare-const var3352 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3352 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3220 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var969 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var144 (Array Int (Array Int Int)) var969) ; Statement: r0 = $r54 
(define-const var1080 (Array Int (Array Int Int)) var969) ; Statement: $r53 = $r54 
(define-const var1443 var838 (databaseTerm/1074764847 var2647)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1732 var1044 (var838_getValue/1633538672 var1443)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var508 var310 var310-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1732 (cast-from-var310-to-var1044 var508))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3366 (Array Int Int) (s2b/-450202684 var2647 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1080!1 (Array Int (Array Int Int)))
(assert (not (= var1080!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1080!1 0) var3366)) ; Statement: $r53[0] = $r55 
(define-const var1600 var838 (databaseTerm/1074764847 var2647)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var179 var1044 (var838_getValue/1633538672 var1600)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3582 var310 var310-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var179 (cast-from-var310-to-var1044 var3582)))) ; Cond: $r8 != $r7 
(define-const var2519 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var144!1 (Array Int (Array Int Int)))
(assert (not (= var144!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!1 1) var2519)) ; Statement: r0[1] = $r56 
(declare-const var144!2 (Array Int (Array Int Int)))
(assert (not (= var144!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!2 2) var1309)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2417 (Array Int Int) (s2b/-450202684 var2647 var913)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var144!3 (Array Int (Array Int Int)))
(assert (not (= var144!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!3 3) var2417)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1560 Int (getColumnType/800489773 var2647 var1369 var1723 var3916 var3220)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var472 String (String_valueOf/1240665136 var1560)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1527 (Array Int Int) (s2b/-450202684 var2647 var472)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var144!4 (Array Int (Array Int Int)))
(assert (not (= var144!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!4 4) var1527)) ; Statement: r0[4] = $r13 
(define-const var1475 var1906 (mysqlType/-289055874 var2812)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2333 var1906 var1906-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1475 var2333))) ; Cond: $r16 != $r15 
(define-const var3097 var1906 (mysqlType/-289055874 var2812)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var614 Int (getJdbcType/389098195 var3097)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3089 Int (cast-from-Int-to-Int var614)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2215 String (Int_toString/-1770815874 var3089)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3233 (Array Int Int) (getBytes/1068683673 var2215)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var144!5 (Array Int (Array Int Int)))
(assert (not (= var144!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!5 5) var3233)) ; Statement: r0[5] = $r58 
(define-const var3843 var1906 (mysqlType/-289055874 var2812)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1281 String (getName/1307715079 var3843)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1681 (Array Int Int) (s2b/-450202684 var2647 var1281)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var144!6 (Array Int (Array Int Int)))
(assert (not (= var144!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!6 6) var1681)) ; Statement: r0[6] = $r61 
(define-const var3254 Int (datetimePrecision/-289055874 var2812)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var3254 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var1791 Int (columnSize/-289055874 var2812)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3216 String (toString/483301002 var1791)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var811 (Array Int Int) (s2b/-450202684 var2647 var3216)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var144!7 (Array Int (Array Int Int)))
(assert (not (= var144!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!7 7) var811)) ; Statement: r0[7] = $r63 
(define-const var3495 Int (columnSize/-289055874 var2812)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3495 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1399 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var144!8 (Array Int (Array Int Int)))
(assert (not (= var144!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!8 8) var1399)) ; Statement: r0[8] = $r64 
(define-const var126 Int (decimalDigits/-289055874 var2812)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var126 null-Int))) ; Cond: $r23 != null 
(define-const var3789 Int (decimalDigits/-289055874 var2812)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var3864 String (toString/483301002 var3789)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2096 (Array Int Int) (s2b/-450202684 var2647 var3864)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var144!9 (Array Int (Array Int Int)))
(assert (not (= var144!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!9 9) var2096)) ; Statement: r0[9] = $r65 
(define-const var3316 Int (numPrecRadix/-289055874 var2812)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2674 String (Int_toString/1350422511 var3316)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var360 (Array Int Int) (s2b/-450202684 var2647 var2674)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var144!10 (Array Int (Array Int Int)))
(assert (not (= var144!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var144!10 10) var360)) ; Statement: r0[10] = $r27 
(define-const var2426 Int (nullability/-289055874 var2812)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2426 2)) (and (not (= var2426 1)) (and (not (= var2426 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3497 String (var2246_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var22 var3258 (getExceptionInterceptor/-1244810802 var2647)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var967 var2135 (var1714_createSQLException/-1268047242 var3497 "S1000" var22)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var838_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var310-to-var1044=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2246_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1714_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2023=com.mysql.cj.jdbc.DatabaseMetaData, var2647=r1, var1309=r9, var3335=r5, var913=r10, var3030=null_type, var1369=z1, var1723=z2, var3916=z3, var817=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2812=r14, var3220=z0, var3352=i4, var969=$r54, var144=r0, var1080=$r53, var838=com.mysql.cj.conf.RuntimeProperty, var1443=$r2, var1044=java.lang.Object, var1732=$r4, var310=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var508=$r3, var3366=$r55, var1600=$r6, var179=$r8, var3582=$r7, var2519=$r56, var2417=$r11, var1560=$i0, var472=$r12, var1527=$r13, var1906=com.mysql.cj.MysqlType, var1475=$r16, var2333=$r15, var3097=$r17, var614=$i1, var3089=$s5, var2215=$r57, var3233=$r58, var3843=$r59, var1281=$r60, var1681=$r61, var3254=$r62, var1791=$r51, var3216=$r52, var811=$r63, var3495=$r20, var1399=$r64, var126=$r23, var3789=$r24, var3864=$r25, var2096=$r65, var3316=$i2, var2674=$r26, var360=$r27, var2426=$i3, var2246=com.mysql.cj.Messages, var3497=$r49, var3258=com.mysql.cj.exceptions.ExceptionInterceptor, var22=$r48, var2135=java.sql.SQLException, var1714=com.mysql.cj.jdbc.exceptions.SQLError, var967=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2023, r1=var2647, r9=var1309, r5=var3335, r10=var913, null_type=var3030, z1=var1369, z2=var1723, z3=var3916, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var817, r14=var2812, z0=var3220, i4=var3352, $r54=var969, r0=var144, $r53=var1080, com.mysql.cj.conf.RuntimeProperty=var838, $r2=var1443, java.lang.Object=var1044, $r4=var1732, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var310, $r3=var508, $r55=var3366, $r6=var1600, $r8=var179, $r7=var3582, $r56=var2519, $r11=var2417, $i0=var1560, $r12=var472, $r13=var1527, com.mysql.cj.MysqlType=var1906, $r16=var1475, $r15=var2333, $r17=var3097, $i1=var614, $s5=var3089, $r57=var2215, $r58=var3233, $r59=var3843, $r60=var1281, $r61=var1681, $r62=var3254, $r51=var1791, $r52=var3216, $r63=var811, $r20=var3495, $r64=var1399, $r23=var126, $r24=var3789, $r25=var3864, $r65=var2096, $i2=var3316, $r26=var2674, $r27=var360, $i3=var2426, com.mysql.cj.Messages=var2246, $r49=var3497, com.mysql.cj.exceptions.ExceptionInterceptor=var3258, $r48=var22, java.sql.SQLException=var2135, com.mysql.cj.jdbc.exceptions.SQLError=var1714, $r50=var967}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16