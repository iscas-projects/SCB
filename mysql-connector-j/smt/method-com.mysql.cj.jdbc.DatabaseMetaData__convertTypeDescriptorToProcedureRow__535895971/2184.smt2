(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var3024 0)
(declare-sort var3956 0)
(declare-sort var2002 0)
(declare-sort var375 0)
(declare-sort var2348 0)
(declare-sort var3716 0)
(declare-sort var1471 0)
(declare-sort var1741 0)
(declare-sort var171 0)
(declare-sort var2892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2654) var2002)
(declare-fun var2002_getValue/1633538672 (var2002) var375)
(declare-fun cast-from-var2348-to-var375 (var2348) var375)
(declare-fun s2b/-450202684 (var2654 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2654 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3956) var3716)
(declare-fun getJdbcType/389098195 (var3716) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var3716) String)
(declare-fun datetimePrecision/-289055874 (var3956) Int)
(declare-fun columnSize/-289055874 (var3956) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3956) Int)
(declare-fun numPrecRadix/-289055874 (var3956) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3956) Int)
(declare-fun var1471_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2654) var1741)
(declare-fun var2892_createSQLException/-1268047242 (String String var1741) var171)
(declare-const null-var2654 var2654)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3956 var3956)
(declare-const null-Int Int)
(declare-const var2348-SCHEMA var2348)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3716-YEAR var3716)
(declare-const var2448 var2654) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2448 null-var2654)))
(declare-const var1917 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1917 null-__Array__Int__Int__)))
(declare-const var3972 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3972 null-__Array__Int__Int__)))
(declare-const var2680 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2680 null-String)))
(declare-const var2941 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2941 null-Bool)))
(declare-const var2118 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2118 null-Bool)))
(declare-const var1778 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1778 null-Bool)))
(declare-const var3000 var3956) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3000 null-var3956)))
(declare-const var2026 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2026 null-Bool)))
(declare-const var3752 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3752 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var2026 1 0) 0)) ; Cond: z0 == 0 
(define-const var1708 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2021 (Array Int (Array Int Int)) var1708) ; Statement: r0 = $r54 
(define-const var1288 (Array Int (Array Int Int)) var1708) ; Statement: $r53 = $r54 
(define-const var571 var2002 (databaseTerm/1074764847 var2448)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3788 var375 (var2002_getValue/1633538672 var571)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3574 var2348 var2348-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3788 (cast-from-var2348-to-var375 var3574))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var647 (Array Int Int) (s2b/-450202684 var2448 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1288!1 (Array Int (Array Int Int)))
(assert (not (= var1288!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1288!1 0) var647)) ; Statement: $r53[0] = $r55 
(define-const var3244 var2002 (databaseTerm/1074764847 var2448)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1232 var375 (var2002_getValue/1633538672 var3244)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2086 var2348 var2348-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1232 (cast-from-var2348-to-var375 var2086))))) ; Negate: Cond: $r8 != $r7  
(define-const var332 (Array Int Int) var3972) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2021!1 (Array Int (Array Int Int)))
(assert (not (= var2021!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!1 1) var332)) ; Statement: r0[1] = $r56 
(declare-const var2021!2 (Array Int (Array Int Int)))
(assert (not (= var2021!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!2 2) var1917)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2231 (Array Int Int) (s2b/-450202684 var2448 var2680)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2021!3 (Array Int (Array Int Int)))
(assert (not (= var2021!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!3 3) var2231)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1336 Int (getColumnType/800489773 var2448 var2941 var2118 var1778 var2026)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var689 String (String_valueOf/1240665136 var1336)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2123 (Array Int Int) (s2b/-450202684 var2448 var689)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2021!4 (Array Int (Array Int Int)))
(assert (not (= var2021!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!4 4) var2123)) ; Statement: r0[4] = $r13 
(define-const var1702 var3716 (mysqlType/-289055874 var3000)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1915 var3716 var3716-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1702 var1915))) ; Cond: $r16 != $r15 
(define-const var3609 var3716 (mysqlType/-289055874 var3000)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2731 Int (getJdbcType/389098195 var3609)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3644 Int (cast-from-Int-to-Int var2731)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1480 String (Int_toString/-1770815874 var3644)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2405 (Array Int Int) (getBytes/1068683673 var1480)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2021!5 (Array Int (Array Int Int)))
(assert (not (= var2021!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!5 5) var2405)) ; Statement: r0[5] = $r58 
(define-const var439 var3716 (mysqlType/-289055874 var3000)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3049 String (getName/1307715079 var439)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var926 (Array Int Int) (s2b/-450202684 var2448 var3049)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2021!6 (Array Int (Array Int Int)))
(assert (not (= var2021!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!6 6) var926)) ; Statement: r0[6] = $r61 
(define-const var2181 Int (datetimePrecision/-289055874 var3000)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2181 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var1621 Int (columnSize/-289055874 var3000)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2109 String (toString/483301002 var1621)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2895 (Array Int Int) (s2b/-450202684 var2448 var2109)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var2021!7 (Array Int (Array Int Int)))
(assert (not (= var2021!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!7 7) var2895)) ; Statement: r0[7] = $r63 
(define-const var1484 Int (columnSize/-289055874 var3000)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1484 null-Int))) ; Cond: $r20 != null 
(define-const var3565 Int (columnSize/-289055874 var3000)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1095 String (toString/483301002 var3565)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2743 (Array Int Int) (s2b/-450202684 var2448 var1095)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var2021!8 (Array Int (Array Int Int)))
(assert (not (= var2021!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!8 8) var2743)) ; Statement: r0[8] = $r64 
(define-const var2955 Int (decimalDigits/-289055874 var3000)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var2955 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3328 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2021!9 (Array Int (Array Int Int)))
(assert (not (= var2021!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!9 9) var3328)) ; Statement: r0[9] = $r65 
(define-const var3472 Int (numPrecRadix/-289055874 var3000)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var802 String (Int_toString/1350422511 var3472)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3230 (Array Int Int) (s2b/-450202684 var2448 var802)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2021!10 (Array Int (Array Int Int)))
(assert (not (= var2021!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2021!10 10) var3230)) ; Statement: r0[10] = $r27 
(define-const var1527 Int (nullability/-289055874 var3000)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1527 2)) (and (not (= var1527 1)) (and (not (= var1527 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var310 String (var1471_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var100 var1741 (getExceptionInterceptor/-1244810802 var2448)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3599 var171 (var2892_createSQLException/-1268047242 var310 "S1000" var100)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2002_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2348-to-var375=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1471_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2892_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2654=com.mysql.cj.jdbc.DatabaseMetaData, var2448=r1, var1917=r9, var3972=r5, var2680=r10, var3024=null_type, var2941=z1, var2118=z2, var1778=z3, var3956=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3000=r14, var2026=z0, var3752=i4, var1708=$r54, var2021=r0, var1288=$r53, var2002=com.mysql.cj.conf.RuntimeProperty, var571=$r2, var375=java.lang.Object, var3788=$r4, var2348=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var3574=$r3, var647=$r55, var3244=$r6, var1232=$r8, var2086=$r7, var332=$r56, var2231=$r11, var1336=$i0, var689=$r12, var2123=$r13, var3716=com.mysql.cj.MysqlType, var1702=$r16, var1915=$r15, var3609=$r17, var2731=$i1, var3644=$s5, var1480=$r57, var2405=$r58, var439=$r59, var3049=$r60, var926=$r61, var2181=$r62, var1621=$r51, var2109=$r52, var2895=$r63, var1484=$r20, var3565=$r21, var1095=$r22, var2743=$r64, var2955=$r23, var3328=$r65, var3472=$i2, var802=$r26, var3230=$r27, var1527=$i3, var1471=com.mysql.cj.Messages, var310=$r49, var1741=com.mysql.cj.exceptions.ExceptionInterceptor, var100=$r48, var171=java.sql.SQLException, var2892=com.mysql.cj.jdbc.exceptions.SQLError, var3599=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2654, r1=var2448, r9=var1917, r5=var3972, r10=var2680, null_type=var3024, z1=var2941, z2=var2118, z3=var1778, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3956, r14=var3000, z0=var2026, i4=var3752, $r54=var1708, r0=var2021, $r53=var1288, com.mysql.cj.conf.RuntimeProperty=var2002, $r2=var571, java.lang.Object=var375, $r4=var3788, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2348, $r3=var3574, $r55=var647, $r6=var3244, $r8=var1232, $r7=var2086, $r56=var332, $r11=var2231, $i0=var1336, $r12=var689, $r13=var2123, com.mysql.cj.MysqlType=var3716, $r16=var1702, $r15=var1915, $r17=var3609, $i1=var2731, $s5=var3644, $r57=var1480, $r58=var2405, $r59=var439, $r60=var3049, $r61=var926, $r62=var2181, $r51=var1621, $r52=var2109, $r63=var2895, $r20=var1484, $r21=var3565, $r22=var1095, $r64=var2743, $r23=var2955, $r65=var3328, $i2=var3472, $r26=var802, $r27=var3230, $i3=var1527, com.mysql.cj.Messages=var1471, $r49=var310, com.mysql.cj.exceptions.ExceptionInterceptor=var1741, $r48=var100, java.sql.SQLException=var171, com.mysql.cj.jdbc.exceptions.SQLError=var2892, $r50=var3599}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16