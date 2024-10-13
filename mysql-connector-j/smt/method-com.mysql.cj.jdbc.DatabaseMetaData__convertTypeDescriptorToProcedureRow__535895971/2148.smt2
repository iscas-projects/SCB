(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1761 0)
(declare-sort var2466 0)
(declare-sort var2049 0)
(declare-sort var3443 0)
(declare-sort var377 0)
(declare-sort var3617 0)
(declare-sort var711 0)
(declare-sort var2870 0)
(declare-sort var1555 0)
(declare-sort var655 0)
(declare-sort var673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1761) var3443)
(declare-fun var3443_getValue/1633538672 (var3443) var377)
(declare-fun cast-from-var3617-to-var377 (var3617) var377)
(declare-fun s2b/-450202684 (var1761 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1761 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2049) var711)
(declare-fun getJdbcType/389098195 (var711) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var711) String)
(declare-fun datetimePrecision/-289055874 (var2049) Int)
(declare-fun columnSize/-289055874 (var2049) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var2049) Int)
(declare-fun numPrecRadix/-289055874 (var2049) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2049) Int)
(declare-fun var2870_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1761) var1555)
(declare-fun var673_createSQLException/-1268047242 (String String var1555) var655)
(declare-const null-var1761 var1761)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2049 var2049)
(declare-const null-Int Int)
(declare-const var3617-SCHEMA var3617)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var711-YEAR var711)
(declare-const var787 var1761) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var787 null-var1761)))
(declare-const var1297 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1297 null-__Array__Int__Int__)))
(declare-const var396 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var396 null-__Array__Int__Int__)))
(declare-const var2057 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2057 null-String)))
(declare-const var2851 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2851 null-Bool)))
(declare-const var3827 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3827 null-Bool)))
(declare-const var3615 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3615 null-Bool)))
(declare-const var3652 var2049) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3652 null-var2049)))
(declare-const var919 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var919 null-Bool)))
(declare-const var3993 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3993 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var919 1 0) 0)) ; Cond: z0 == 0 
(define-const var3395 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2257 (Array Int (Array Int Int)) var3395) ; Statement: r0 = $r54 
(define-const var1504 (Array Int (Array Int Int)) var3395) ; Statement: $r53 = $r54 
(define-const var1827 var3443 (databaseTerm/1074764847 var787)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3854 var377 (var3443_getValue/1633538672 var1827)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2885 var3617 var3617-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3854 (cast-from-var3617-to-var377 var2885))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var2582 (Array Int Int) (s2b/-450202684 var787 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1504!1 (Array Int (Array Int Int)))
(assert (not (= var1504!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1504!1 0) var2582)) ; Statement: $r53[0] = $r55 
(define-const var3504 var3443 (databaseTerm/1074764847 var787)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2194 var377 (var3443_getValue/1633538672 var3504)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3230 var3617 var3617-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2194 (cast-from-var3617-to-var377 var3230))))) ; Negate: Cond: $r8 != $r7  
(define-const var623 (Array Int Int) var396) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2257!1 (Array Int (Array Int Int)))
(assert (not (= var2257!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!1 1) var623)) ; Statement: r0[1] = $r56 
(declare-const var2257!2 (Array Int (Array Int Int)))
(assert (not (= var2257!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!2 2) var1297)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2265 (Array Int Int) (s2b/-450202684 var787 var2057)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2257!3 (Array Int (Array Int Int)))
(assert (not (= var2257!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!3 3) var2265)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2554 Int (getColumnType/800489773 var787 var2851 var3827 var3615 var919)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2599 String (String_valueOf/1240665136 var2554)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3166 (Array Int Int) (s2b/-450202684 var787 var2599)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2257!4 (Array Int (Array Int Int)))
(assert (not (= var2257!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!4 4) var3166)) ; Statement: r0[4] = $r13 
(define-const var3562 var711 (mysqlType/-289055874 var3652)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2256 var711 var711-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3562 var2256))) ; Cond: $r16 != $r15 
(define-const var3263 var711 (mysqlType/-289055874 var3652)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var47 Int (getJdbcType/389098195 var3263)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var535 Int (cast-from-Int-to-Int var47)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1082 String (Int_toString/-1770815874 var535)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1438 (Array Int Int) (getBytes/1068683673 var1082)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2257!5 (Array Int (Array Int Int)))
(assert (not (= var2257!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!5 5) var1438)) ; Statement: r0[5] = $r58 
(define-const var1021 var711 (mysqlType/-289055874 var3652)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2638 String (getName/1307715079 var1021)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1263 (Array Int Int) (s2b/-450202684 var787 var2638)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2257!6 (Array Int (Array Int Int)))
(assert (not (= var2257!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!6 6) var1263)) ; Statement: r0[6] = $r61 
(define-const var2028 Int (datetimePrecision/-289055874 var3652)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2028 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var411 Int (columnSize/-289055874 var3652)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2251 String (toString/483301002 var411)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1486 (Array Int Int) (s2b/-450202684 var787 var2251)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var2257!7 (Array Int (Array Int Int)))
(assert (not (= var2257!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!7 7) var1486)) ; Statement: r0[7] = $r63 
(define-const var2238 Int (columnSize/-289055874 var3652)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2238 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1649 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var2257!8 (Array Int (Array Int Int)))
(assert (not (= var2257!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!8 8) var1649)) ; Statement: r0[8] = $r64 
(define-const var2221 Int (decimalDigits/-289055874 var3652)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var2221 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var1342 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2257!9 (Array Int (Array Int Int)))
(assert (not (= var2257!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!9 9) var1342)) ; Statement: r0[9] = $r65 
(define-const var3232 Int (numPrecRadix/-289055874 var3652)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1505 String (Int_toString/1350422511 var3232)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2905 (Array Int Int) (s2b/-450202684 var787 var1505)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2257!10 (Array Int (Array Int Int)))
(assert (not (= var2257!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2257!10 10) var2905)) ; Statement: r0[10] = $r27 
(define-const var3601 Int (nullability/-289055874 var3652)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3601 2)) (and (not (= var3601 1)) (and (not (= var3601 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2311 String (var2870_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var614 var1555 (getExceptionInterceptor/-1244810802 var787)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2971 var655 (var673_createSQLException/-1268047242 var2311 "S1000" var614)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3443_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3617-to-var377=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2870_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var673_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1761=com.mysql.cj.jdbc.DatabaseMetaData, var787=r1, var1297=r9, var396=r5, var2057=r10, var2466=null_type, var2851=z1, var3827=z2, var3615=z3, var2049=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3652=r14, var919=z0, var3993=i4, var3395=$r54, var2257=r0, var1504=$r53, var3443=com.mysql.cj.conf.RuntimeProperty, var1827=$r2, var377=java.lang.Object, var3854=$r4, var3617=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2885=$r3, var2582=$r55, var3504=$r6, var2194=$r8, var3230=$r7, var623=$r56, var2265=$r11, var2554=$i0, var2599=$r12, var3166=$r13, var711=com.mysql.cj.MysqlType, var3562=$r16, var2256=$r15, var3263=$r17, var47=$i1, var535=$s5, var1082=$r57, var1438=$r58, var1021=$r59, var2638=$r60, var1263=$r61, var2028=$r62, var411=$r51, var2251=$r52, var1486=$r63, var2238=$r20, var1649=$r64, var2221=$r23, var1342=$r65, var3232=$i2, var1505=$r26, var2905=$r27, var3601=$i3, var2870=com.mysql.cj.Messages, var2311=$r49, var1555=com.mysql.cj.exceptions.ExceptionInterceptor, var614=$r48, var655=java.sql.SQLException, var673=com.mysql.cj.jdbc.exceptions.SQLError, var2971=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1761, r1=var787, r9=var1297, r5=var396, r10=var2057, null_type=var2466, z1=var2851, z2=var3827, z3=var3615, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2049, r14=var3652, z0=var919, i4=var3993, $r54=var3395, r0=var2257, $r53=var1504, com.mysql.cj.conf.RuntimeProperty=var3443, $r2=var1827, java.lang.Object=var377, $r4=var3854, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3617, $r3=var2885, $r55=var2582, $r6=var3504, $r8=var2194, $r7=var3230, $r56=var623, $r11=var2265, $i0=var2554, $r12=var2599, $r13=var3166, com.mysql.cj.MysqlType=var711, $r16=var3562, $r15=var2256, $r17=var3263, $i1=var47, $s5=var535, $r57=var1082, $r58=var1438, $r59=var1021, $r60=var2638, $r61=var1263, $r62=var2028, $r51=var411, $r52=var2251, $r63=var1486, $r20=var2238, $r64=var1649, $r23=var2221, $r65=var1342, $i2=var3232, $r26=var1505, $r27=var2905, $i3=var3601, com.mysql.cj.Messages=var2870, $r49=var2311, com.mysql.cj.exceptions.ExceptionInterceptor=var1555, $r48=var614, java.sql.SQLException=var655, com.mysql.cj.jdbc.exceptions.SQLError=var673, $r50=var2971}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16