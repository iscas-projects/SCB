(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2069 0)
(declare-sort var3680 0)
(declare-sort var3193 0)
(declare-sort var70 0)
(declare-sort var3760 0)
(declare-sort var959 0)
(declare-sort var1685 0)
(declare-sort var2678 0)
(declare-sort var940 0)
(declare-sort var3422 0)
(declare-sort var3579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2069) var70)
(declare-fun var70_getValue/1633538672 (var70) var3760)
(declare-fun cast-from-var959-to-var3760 (var959) var3760)
(declare-fun s2b/-450202684 (var2069 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2069 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3193) var1685)
(declare-fun getJdbcType/389098195 (var1685) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1685) String)
(declare-fun datetimePrecision/-289055874 (var3193) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3193) Int)
(declare-fun decimalDigits/-289055874 (var3193) Int)
(declare-fun numPrecRadix/-289055874 (var3193) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3193) Int)
(declare-fun var2678_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2069) var940)
(declare-fun var3579_createSQLException/-1268047242 (String String var940) var3422)
(declare-const null-var2069 var2069)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3193 var3193)
(declare-const null-Int Int)
(declare-const var959-SCHEMA var959)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1685-YEAR var1685)
(declare-const var397 var2069) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var397 null-var2069)))
(declare-const var954 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var954 null-__Array__Int__Int__)))
(declare-const var375 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var375 null-__Array__Int__Int__)))
(declare-const var3020 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3020 null-String)))
(declare-const var1517 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1517 null-Bool)))
(declare-const var723 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var723 null-Bool)))
(declare-const var2683 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2683 null-Bool)))
(declare-const var3757 var3193) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3757 null-var3193)))
(declare-const var1405 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1405 null-Bool)))
(declare-const var3369 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3369 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1405 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var113 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var521 (Array Int (Array Int Int)) var113) ; Statement: r0 = $r54 
(define-const var938 (Array Int (Array Int Int)) var113) ; Statement: $r53 = $r54 
(define-const var3897 var70 (databaseTerm/1074764847 var397)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3723 var3760 (var70_getValue/1633538672 var3897)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1948 var959 var959-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3723 (cast-from-var959-to-var3760 var1948)))) ; Cond: $r4 != $r3 
(define-const var2173 (Array Int Int) var375) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var938!1 (Array Int (Array Int Int)))
(assert (not (= var938!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var938!1 0) var2173)) ; Statement: $r53[0] = $r55 
(define-const var2101 var70 (databaseTerm/1074764847 var397)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3805 var3760 (var70_getValue/1633538672 var2101)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3116 var959 var959-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var3805 (cast-from-var959-to-var3760 var3116))))) ; Negate: Cond: $r8 != $r7  
(define-const var498 (Array Int Int) var375) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var521!1 (Array Int (Array Int Int)))
(assert (not (= var521!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!1 1) var498)) ; Statement: r0[1] = $r56 
(declare-const var521!2 (Array Int (Array Int Int)))
(assert (not (= var521!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!2 2) var954)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1343 (Array Int Int) (s2b/-450202684 var397 var3020)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var521!3 (Array Int (Array Int Int)))
(assert (not (= var521!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!3 3) var1343)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2471 Int (getColumnType/800489773 var397 var1517 var723 var2683 var1405)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3787 String (String_valueOf/1240665136 var2471)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1700 (Array Int Int) (s2b/-450202684 var397 var3787)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var521!4 (Array Int (Array Int Int)))
(assert (not (= var521!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!4 4) var1700)) ; Statement: r0[4] = $r13 
(define-const var1440 var1685 (mysqlType/-289055874 var3757)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var765 var1685 var1685-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1440 var765))) ; Cond: $r16 != $r15 
(define-const var741 var1685 (mysqlType/-289055874 var3757)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var975 Int (getJdbcType/389098195 var741)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var242 Int (cast-from-Int-to-Int var975)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3700 String (Int_toString/-1770815874 var242)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var6 (Array Int Int) (getBytes/1068683673 var3700)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var521!5 (Array Int (Array Int Int)))
(assert (not (= var521!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!5 5) var6)) ; Statement: r0[5] = $r58 
(define-const var2174 var1685 (mysqlType/-289055874 var3757)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1665 String (getName/1307715079 var2174)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1536 (Array Int Int) (s2b/-450202684 var397 var1665)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var521!6 (Array Int (Array Int Int)))
(assert (not (= var521!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!6 6) var1536)) ; Statement: r0[6] = $r61 
(define-const var126 Int (datetimePrecision/-289055874 var3757)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var126 null-Int))) ; Cond: $r62 != null 
(define-const var1667 Int (datetimePrecision/-289055874 var3757)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1818 String (toString/483301002 var1667)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var229 (Array Int Int) (s2b/-450202684 var397 var1818)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var521!7 (Array Int (Array Int Int)))
(assert (not (= var521!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!7 7) var229)) ; Statement: r0[7] = $r63 
(define-const var1613 Int (columnSize/-289055874 var3757)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1613 null-Int))) ; Cond: $r20 != null 
(define-const var1249 Int (columnSize/-289055874 var3757)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var380 String (toString/483301002 var1249)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var973 (Array Int Int) (s2b/-450202684 var397 var380)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var521!8 (Array Int (Array Int Int)))
(assert (not (= var521!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!8 8) var973)) ; Statement: r0[8] = $r64 
(define-const var598 Int (decimalDigits/-289055874 var3757)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var598 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var629 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var521!9 (Array Int (Array Int Int)))
(assert (not (= var521!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!9 9) var629)) ; Statement: r0[9] = $r65 
(define-const var1792 Int (numPrecRadix/-289055874 var3757)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1192 String (Int_toString/1350422511 var1792)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3924 (Array Int Int) (s2b/-450202684 var397 var1192)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var521!10 (Array Int (Array Int Int)))
(assert (not (= var521!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var521!10 10) var3924)) ; Statement: r0[10] = $r27 
(define-const var459 Int (nullability/-289055874 var3757)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var459 2)) (and (not (= var459 1)) (and (not (= var459 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2788 String (var2678_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1441 var940 (getExceptionInterceptor/-1244810802 var397)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1773 var3422 (var3579_createSQLException/-1268047242 var2788 "S1000" var1441)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var70_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var959-to-var3760=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2678_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3579_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2069=com.mysql.cj.jdbc.DatabaseMetaData, var397=r1, var954=r9, var375=r5, var3020=r10, var3680=null_type, var1517=z1, var723=z2, var2683=z3, var3193=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3757=r14, var1405=z0, var3369=i4, var113=$r54, var521=r0, var938=$r53, var70=com.mysql.cj.conf.RuntimeProperty, var3897=$r2, var3760=java.lang.Object, var3723=$r4, var959=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1948=$r3, var2173=$r55, var2101=$r6, var3805=$r8, var3116=$r7, var498=$r56, var1343=$r11, var2471=$i0, var3787=$r12, var1700=$r13, var1685=com.mysql.cj.MysqlType, var1440=$r16, var765=$r15, var741=$r17, var975=$i1, var242=$s5, var3700=$r57, var6=$r58, var2174=$r59, var1665=$r60, var1536=$r61, var126=$r62, var1667=$r18, var1818=$r19, var229=$r63, var1613=$r20, var1249=$r21, var380=$r22, var973=$r64, var598=$r23, var629=$r65, var1792=$i2, var1192=$r26, var3924=$r27, var459=$i3, var2678=com.mysql.cj.Messages, var2788=$r49, var940=com.mysql.cj.exceptions.ExceptionInterceptor, var1441=$r48, var3422=java.sql.SQLException, var3579=com.mysql.cj.jdbc.exceptions.SQLError, var1773=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2069, r1=var397, r9=var954, r5=var375, r10=var3020, null_type=var3680, z1=var1517, z2=var723, z3=var2683, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3193, r14=var3757, z0=var1405, i4=var3369, $r54=var113, r0=var521, $r53=var938, com.mysql.cj.conf.RuntimeProperty=var70, $r2=var3897, java.lang.Object=var3760, $r4=var3723, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var959, $r3=var1948, $r55=var2173, $r6=var2101, $r8=var3805, $r7=var3116, $r56=var498, $r11=var1343, $i0=var2471, $r12=var3787, $r13=var1700, com.mysql.cj.MysqlType=var1685, $r16=var1440, $r15=var765, $r17=var741, $i1=var975, $s5=var242, $r57=var3700, $r58=var6, $r59=var2174, $r60=var1665, $r61=var1536, $r62=var126, $r18=var1667, $r19=var1818, $r63=var229, $r20=var1613, $r21=var1249, $r22=var380, $r64=var973, $r23=var598, $r65=var629, $i2=var1792, $r26=var1192, $r27=var3924, $i3=var459, com.mysql.cj.Messages=var2678, $r49=var2788, com.mysql.cj.exceptions.ExceptionInterceptor=var940, $r48=var1441, java.sql.SQLException=var3422, com.mysql.cj.jdbc.exceptions.SQLError=var3579, $r50=var1773}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16