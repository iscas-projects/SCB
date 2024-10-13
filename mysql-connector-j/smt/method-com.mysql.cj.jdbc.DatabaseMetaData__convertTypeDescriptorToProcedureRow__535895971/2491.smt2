(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1898 0)
(declare-sort var1610 0)
(declare-sort var451 0)
(declare-sort var692 0)
(declare-sort var724 0)
(declare-sort var3561 0)
(declare-sort var3685 0)
(declare-sort var1632 0)
(declare-sort var2150 0)
(declare-sort var3219 0)
(declare-sort var2138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1898) var692)
(declare-fun var692_getValue/1633538672 (var692) var724)
(declare-fun cast-from-var3561-to-var724 (var3561) var724)
(declare-fun s2b/-450202684 (var1898 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1898 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var451) var3685)
(declare-fun getJdbcType/389098195 (var3685) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var3685) String)
(declare-fun datetimePrecision/-289055874 (var451) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var451) Int)
(declare-fun decimalDigits/-289055874 (var451) Int)
(declare-fun numPrecRadix/-289055874 (var451) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var451) Int)
(declare-fun var1632_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1898) var2150)
(declare-fun var2138_createSQLException/-1268047242 (String String var2150) var3219)
(declare-const null-var1898 var1898)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var451 var451)
(declare-const null-Int Int)
(declare-const var3561-SCHEMA var3561)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3685-YEAR var3685)
(declare-const var806 var1898) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var806 null-var1898)))
(declare-const var2272 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2272 null-__Array__Int__Int__)))
(declare-const var3238 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3238 null-__Array__Int__Int__)))
(declare-const var504 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var504 null-String)))
(declare-const var1221 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1221 null-Bool)))
(declare-const var1938 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1938 null-Bool)))
(declare-const var915 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var915 null-Bool)))
(declare-const var2397 var451) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2397 null-var451)))
(declare-const var3481 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3481 null-Bool)))
(declare-const var1443 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1443 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var3481 1 0) 0)) ; Cond: z0 == 0 
(define-const var1507 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var1061 (Array Int (Array Int Int)) var1507) ; Statement: r0 = $r54 
(define-const var2170 (Array Int (Array Int Int)) var1507) ; Statement: $r53 = $r54 
(define-const var750 var692 (databaseTerm/1074764847 var806)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3904 var724 (var692_getValue/1633538672 var750)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2401 var3561 var3561-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3904 (cast-from-var3561-to-var724 var2401)))) ; Cond: $r4 != $r3 
(define-const var3086 (Array Int Int) var3238) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var2170!1 (Array Int (Array Int Int)))
(assert (not (= var2170!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2170!1 0) var3086)) ; Statement: $r53[0] = $r55 
(define-const var3985 var692 (databaseTerm/1074764847 var806)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var483 var724 (var692_getValue/1633538672 var3985)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3634 var3561 var3561-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var483 (cast-from-var3561-to-var724 var3634))))) ; Negate: Cond: $r8 != $r7  
(define-const var1046 (Array Int Int) var3238) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var1061!1 (Array Int (Array Int Int)))
(assert (not (= var1061!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!1 1) var1046)) ; Statement: r0[1] = $r56 
(declare-const var1061!2 (Array Int (Array Int Int)))
(assert (not (= var1061!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!2 2) var2272)) ; Statement: r0[2] = r9 
(assert true)
(define-const var95 (Array Int Int) (s2b/-450202684 var806 var504)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1061!3 (Array Int (Array Int Int)))
(assert (not (= var1061!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!3 3) var95)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2745 Int (getColumnType/800489773 var806 var1221 var1938 var915 var3481)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var289 String (String_valueOf/1240665136 var2745)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3040 (Array Int Int) (s2b/-450202684 var806 var289)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1061!4 (Array Int (Array Int Int)))
(assert (not (= var1061!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!4 4) var3040)) ; Statement: r0[4] = $r13 
(define-const var1889 var3685 (mysqlType/-289055874 var2397)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2870 var3685 var3685-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1889 var2870))) ; Cond: $r16 != $r15 
(define-const var3195 var3685 (mysqlType/-289055874 var2397)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1132 Int (getJdbcType/389098195 var3195)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1424 Int (cast-from-Int-to-Int var1132)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var782 String (Int_toString/-1770815874 var1424)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3081 (Array Int Int) (getBytes/1068683673 var782)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1061!5 (Array Int (Array Int Int)))
(assert (not (= var1061!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!5 5) var3081)) ; Statement: r0[5] = $r58 
(define-const var2244 var3685 (mysqlType/-289055874 var2397)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var470 String (getName/1307715079 var2244)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1548 (Array Int Int) (s2b/-450202684 var806 var470)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1061!6 (Array Int (Array Int Int)))
(assert (not (= var1061!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!6 6) var1548)) ; Statement: r0[6] = $r61 
(define-const var3295 Int (datetimePrecision/-289055874 var2397)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3295 null-Int))) ; Cond: $r62 != null 
(define-const var2019 Int (datetimePrecision/-289055874 var2397)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3457 String (toString/483301002 var2019)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var623 (Array Int Int) (s2b/-450202684 var806 var3457)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1061!7 (Array Int (Array Int Int)))
(assert (not (= var1061!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!7 7) var623)) ; Statement: r0[7] = $r63 
(define-const var662 Int (columnSize/-289055874 var2397)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var662 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var78 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var1061!8 (Array Int (Array Int Int)))
(assert (not (= var1061!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!8 8) var78)) ; Statement: r0[8] = $r64 
(define-const var3628 Int (decimalDigits/-289055874 var2397)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3628 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var2519 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var1061!9 (Array Int (Array Int Int)))
(assert (not (= var1061!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!9 9) var2519)) ; Statement: r0[9] = $r65 
(define-const var1557 Int (numPrecRadix/-289055874 var2397)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2732 String (Int_toString/1350422511 var1557)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var856 (Array Int Int) (s2b/-450202684 var806 var2732)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1061!10 (Array Int (Array Int Int)))
(assert (not (= var1061!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1061!10 10) var856)) ; Statement: r0[10] = $r27 
(define-const var3042 Int (nullability/-289055874 var2397)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3042 2)) (and (not (= var3042 1)) (and (not (= var3042 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3432 String (var1632_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3797 var2150 (getExceptionInterceptor/-1244810802 var806)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var248 var3219 (var2138_createSQLException/-1268047242 var3432 "S1000" var3797)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var692_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3561-to-var724=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1632_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2138_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1898=com.mysql.cj.jdbc.DatabaseMetaData, var806=r1, var2272=r9, var3238=r5, var504=r10, var1610=null_type, var1221=z1, var1938=z2, var915=z3, var451=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2397=r14, var3481=z0, var1443=i4, var1507=$r54, var1061=r0, var2170=$r53, var692=com.mysql.cj.conf.RuntimeProperty, var750=$r2, var724=java.lang.Object, var3904=$r4, var3561=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2401=$r3, var3086=$r55, var3985=$r6, var483=$r8, var3634=$r7, var1046=$r56, var95=$r11, var2745=$i0, var289=$r12, var3040=$r13, var3685=com.mysql.cj.MysqlType, var1889=$r16, var2870=$r15, var3195=$r17, var1132=$i1, var1424=$s5, var782=$r57, var3081=$r58, var2244=$r59, var470=$r60, var1548=$r61, var3295=$r62, var2019=$r18, var3457=$r19, var623=$r63, var662=$r20, var78=$r64, var3628=$r23, var2519=$r65, var1557=$i2, var2732=$r26, var856=$r27, var3042=$i3, var1632=com.mysql.cj.Messages, var3432=$r49, var2150=com.mysql.cj.exceptions.ExceptionInterceptor, var3797=$r48, var3219=java.sql.SQLException, var2138=com.mysql.cj.jdbc.exceptions.SQLError, var248=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1898, r1=var806, r9=var2272, r5=var3238, r10=var504, null_type=var1610, z1=var1221, z2=var1938, z3=var915, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var451, r14=var2397, z0=var3481, i4=var1443, $r54=var1507, r0=var1061, $r53=var2170, com.mysql.cj.conf.RuntimeProperty=var692, $r2=var750, java.lang.Object=var724, $r4=var3904, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3561, $r3=var2401, $r55=var3086, $r6=var3985, $r8=var483, $r7=var3634, $r56=var1046, $r11=var95, $i0=var2745, $r12=var289, $r13=var3040, com.mysql.cj.MysqlType=var3685, $r16=var1889, $r15=var2870, $r17=var3195, $i1=var1132, $s5=var1424, $r57=var782, $r58=var3081, $r59=var2244, $r60=var470, $r61=var1548, $r62=var3295, $r18=var2019, $r19=var3457, $r63=var623, $r20=var662, $r64=var78, $r23=var3628, $r65=var2519, $i2=var1557, $r26=var2732, $r27=var856, $i3=var3042, com.mysql.cj.Messages=var1632, $r49=var3432, com.mysql.cj.exceptions.ExceptionInterceptor=var2150, $r48=var3797, java.sql.SQLException=var3219, com.mysql.cj.jdbc.exceptions.SQLError=var2138, $r50=var248}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16