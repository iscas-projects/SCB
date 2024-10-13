(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3934 0)
(declare-sort var1510 0)
(declare-sort var3132 0)
(declare-sort var231 0)
(declare-sort var1218 0)
(declare-sort var3116 0)
(declare-sort var1492 0)
(declare-sort var2714 0)
(declare-sort var2649 0)
(declare-sort var2212 0)
(declare-sort var3921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3934) var231)
(declare-fun var231_getValue/1633538672 (var231) var1218)
(declare-fun cast-from-var3116-to-var1218 (var3116) var1218)
(declare-fun s2b/-450202684 (var3934 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3934 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3132) var1492)
(declare-fun getJdbcType/389098195 (var1492) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1492) String)
(declare-fun datetimePrecision/-289055874 (var3132) Int)
(declare-fun columnSize/-289055874 (var3132) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3132) Int)
(declare-fun numPrecRadix/-289055874 (var3132) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3132) Int)
(declare-fun var2714_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3934) var2649)
(declare-fun var3921_createSQLException/-1268047242 (String String var2649) var2212)
(declare-const null-var3934 var3934)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3132 var3132)
(declare-const null-Int Int)
(declare-const var3116-SCHEMA var3116)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1492-YEAR var1492)
(declare-const var3734 var3934) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3734 null-var3934)))
(declare-const var1514 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1514 null-__Array__Int__Int__)))
(declare-const var321 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var321 null-__Array__Int__Int__)))
(declare-const var2464 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2464 null-String)))
(declare-const var974 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var974 null-Bool)))
(declare-const var1352 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1352 null-Bool)))
(declare-const var3682 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3682 null-Bool)))
(declare-const var2929 var3132) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2929 null-var3132)))
(declare-const var1783 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1783 null-Bool)))
(declare-const var3910 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3910 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1783 1 0) 0)) ; Cond: z0 == 0 
(define-const var1176 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2067 (Array Int (Array Int Int)) var1176) ; Statement: r0 = $r54 
(define-const var3143 (Array Int (Array Int Int)) var1176) ; Statement: $r53 = $r54 
(define-const var2150 var231 (databaseTerm/1074764847 var3734)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var585 var1218 (var231_getValue/1633538672 var2150)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3392 var3116 var3116-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var585 (cast-from-var3116-to-var1218 var3392)))) ; Cond: $r4 != $r3 
(define-const var2962 (Array Int Int) var321) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3143!1 (Array Int (Array Int Int)))
(assert (not (= var3143!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3143!1 0) var2962)) ; Statement: $r53[0] = $r55 
(define-const var166 var231 (databaseTerm/1074764847 var3734)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var306 var1218 (var231_getValue/1633538672 var166)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1799 var3116 var3116-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var306 (cast-from-var3116-to-var1218 var1799))))) ; Negate: Cond: $r8 != $r7  
(define-const var1030 (Array Int Int) var321) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2067!1 (Array Int (Array Int Int)))
(assert (not (= var2067!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!1 1) var1030)) ; Statement: r0[1] = $r56 
(declare-const var2067!2 (Array Int (Array Int Int)))
(assert (not (= var2067!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!2 2) var1514)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1282 (Array Int Int) (s2b/-450202684 var3734 var2464)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2067!3 (Array Int (Array Int Int)))
(assert (not (= var2067!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!3 3) var1282)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2217 Int (getColumnType/800489773 var3734 var974 var1352 var3682 var1783)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3467 String (String_valueOf/1240665136 var2217)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var799 (Array Int Int) (s2b/-450202684 var3734 var3467)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2067!4 (Array Int (Array Int Int)))
(assert (not (= var2067!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!4 4) var799)) ; Statement: r0[4] = $r13 
(define-const var695 var1492 (mysqlType/-289055874 var2929)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2485 var1492 var1492-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var695 var2485))) ; Cond: $r16 != $r15 
(define-const var3233 var1492 (mysqlType/-289055874 var2929)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2275 Int (getJdbcType/389098195 var3233)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2593 Int (cast-from-Int-to-Int var2275)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1445 String (Int_toString/-1770815874 var2593)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1911 (Array Int Int) (getBytes/1068683673 var1445)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2067!5 (Array Int (Array Int Int)))
(assert (not (= var2067!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!5 5) var1911)) ; Statement: r0[5] = $r58 
(define-const var2609 var1492 (mysqlType/-289055874 var2929)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1442 String (getName/1307715079 var2609)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3703 (Array Int Int) (s2b/-450202684 var3734 var1442)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2067!6 (Array Int (Array Int Int)))
(assert (not (= var2067!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!6 6) var3703)) ; Statement: r0[6] = $r61 
(define-const var67 Int (datetimePrecision/-289055874 var2929)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var67 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var2773 Int (columnSize/-289055874 var2929)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2087 String (toString/483301002 var2773)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2647 (Array Int Int) (s2b/-450202684 var3734 var2087)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var2067!7 (Array Int (Array Int Int)))
(assert (not (= var2067!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!7 7) var2647)) ; Statement: r0[7] = $r63 
(define-const var270 Int (columnSize/-289055874 var2929)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var270 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var2901 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var2067!8 (Array Int (Array Int Int)))
(assert (not (= var2067!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!8 8) var2901)) ; Statement: r0[8] = $r64 
(define-const var2051 Int (decimalDigits/-289055874 var2929)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var2051 null-Int))) ; Cond: $r23 != null 
(define-const var3091 Int (decimalDigits/-289055874 var2929)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1814 String (toString/483301002 var3091)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var992 (Array Int Int) (s2b/-450202684 var3734 var1814)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var2067!9 (Array Int (Array Int Int)))
(assert (not (= var2067!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!9 9) var992)) ; Statement: r0[9] = $r65 
(define-const var3612 Int (numPrecRadix/-289055874 var2929)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3887 String (Int_toString/1350422511 var3612)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1558 (Array Int Int) (s2b/-450202684 var3734 var3887)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2067!10 (Array Int (Array Int Int)))
(assert (not (= var2067!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2067!10 10) var1558)) ; Statement: r0[10] = $r27 
(define-const var958 Int (nullability/-289055874 var2929)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var958 2)) (and (not (= var958 1)) (and (not (= var958 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var20 String (var2714_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2955 var2649 (getExceptionInterceptor/-1244810802 var3734)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2311 var2212 (var3921_createSQLException/-1268047242 var20 "S1000" var2955)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var231_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3116-to-var1218=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2714_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3921_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3934=com.mysql.cj.jdbc.DatabaseMetaData, var3734=r1, var1514=r9, var321=r5, var2464=r10, var1510=null_type, var974=z1, var1352=z2, var3682=z3, var3132=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2929=r14, var1783=z0, var3910=i4, var1176=$r54, var2067=r0, var3143=$r53, var231=com.mysql.cj.conf.RuntimeProperty, var2150=$r2, var1218=java.lang.Object, var585=$r4, var3116=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var3392=$r3, var2962=$r55, var166=$r6, var306=$r8, var1799=$r7, var1030=$r56, var1282=$r11, var2217=$i0, var3467=$r12, var799=$r13, var1492=com.mysql.cj.MysqlType, var695=$r16, var2485=$r15, var3233=$r17, var2275=$i1, var2593=$s5, var1445=$r57, var1911=$r58, var2609=$r59, var1442=$r60, var3703=$r61, var67=$r62, var2773=$r51, var2087=$r52, var2647=$r63, var270=$r20, var2901=$r64, var2051=$r23, var3091=$r24, var1814=$r25, var992=$r65, var3612=$i2, var3887=$r26, var1558=$r27, var958=$i3, var2714=com.mysql.cj.Messages, var20=$r49, var2649=com.mysql.cj.exceptions.ExceptionInterceptor, var2955=$r48, var2212=java.sql.SQLException, var3921=com.mysql.cj.jdbc.exceptions.SQLError, var2311=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3934, r1=var3734, r9=var1514, r5=var321, r10=var2464, null_type=var1510, z1=var974, z2=var1352, z3=var3682, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3132, r14=var2929, z0=var1783, i4=var3910, $r54=var1176, r0=var2067, $r53=var3143, com.mysql.cj.conf.RuntimeProperty=var231, $r2=var2150, java.lang.Object=var1218, $r4=var585, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3116, $r3=var3392, $r55=var2962, $r6=var166, $r8=var306, $r7=var1799, $r56=var1030, $r11=var1282, $i0=var2217, $r12=var3467, $r13=var799, com.mysql.cj.MysqlType=var1492, $r16=var695, $r15=var2485, $r17=var3233, $i1=var2275, $s5=var2593, $r57=var1445, $r58=var1911, $r59=var2609, $r60=var1442, $r61=var3703, $r62=var67, $r51=var2773, $r52=var2087, $r63=var2647, $r20=var270, $r64=var2901, $r23=var2051, $r24=var3091, $r25=var1814, $r65=var992, $i2=var3612, $r26=var3887, $r27=var1558, $i3=var958, com.mysql.cj.Messages=var2714, $r49=var20, com.mysql.cj.exceptions.ExceptionInterceptor=var2649, $r48=var2955, java.sql.SQLException=var2212, com.mysql.cj.jdbc.exceptions.SQLError=var3921, $r50=var2311}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16