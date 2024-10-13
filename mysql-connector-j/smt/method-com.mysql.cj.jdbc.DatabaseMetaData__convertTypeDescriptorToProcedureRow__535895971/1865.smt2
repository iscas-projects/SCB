(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1372 0)
(declare-sort var1180 0)
(declare-sort var1652 0)
(declare-sort var3265 0)
(declare-sort var409 0)
(declare-sort var3475 0)
(declare-sort var420 0)
(declare-sort var2445 0)
(declare-sort var1249 0)
(declare-sort var1812 0)
(declare-sort var2327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1372) var3265)
(declare-fun var3265_getValue/1633538672 (var3265) var409)
(declare-fun cast-from-var3475-to-var409 (var3475) var409)
(declare-fun s2b/-450202684 (var1372 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1372 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1652) var420)
(declare-fun getJdbcType/389098195 (var420) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var420) String)
(declare-fun datetimePrecision/-289055874 (var1652) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var1652) Int)
(declare-fun decimalDigits/-289055874 (var1652) Int)
(declare-fun numPrecRadix/-289055874 (var1652) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1652) Int)
(declare-fun var2445_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1372) var1249)
(declare-fun var2327_createSQLException/-1268047242 (String String var1249) var1812)
(declare-const null-var1372 var1372)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1652 var1652)
(declare-const null-Int Int)
(declare-const var3475-SCHEMA var3475)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var420-YEAR var420)
(declare-const var3179 var1372) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3179 null-var1372)))
(declare-const var796 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var796 null-__Array__Int__Int__)))
(declare-const var3944 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3944 null-__Array__Int__Int__)))
(declare-const var609 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var609 null-String)))
(declare-const var3482 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3482 null-Bool)))
(declare-const var3102 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3102 null-Bool)))
(declare-const var1503 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1503 null-Bool)))
(declare-const var8 var1652) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var8 null-var1652)))
(declare-const var3353 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3353 null-Bool)))
(declare-const var3176 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3176 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3353 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3869 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1987 (Array Int (Array Int Int)) var3869) ; Statement: r0 = $r54 
(define-const var2842 (Array Int (Array Int Int)) var3869) ; Statement: $r53 = $r54 
(define-const var760 var3265 (databaseTerm/1074764847 var3179)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3699 var409 (var3265_getValue/1633538672 var760)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var810 var3475 var3475-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3699 (cast-from-var3475-to-var409 var810))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var2285 (Array Int Int) (s2b/-450202684 var3179 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2842!1 (Array Int (Array Int Int)))
(assert (not (= var2842!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2842!1 0) var2285)) ; Statement: $r53[0] = $r55 
(define-const var1713 var3265 (databaseTerm/1074764847 var3179)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2444 var409 (var3265_getValue/1633538672 var1713)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1719 var3475 var3475-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2444 (cast-from-var3475-to-var409 var1719)))) ; Cond: $r8 != $r7 
(define-const var2482 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1987!1 (Array Int (Array Int Int)))
(assert (not (= var1987!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!1 1) var2482)) ; Statement: r0[1] = $r56 
(declare-const var1987!2 (Array Int (Array Int Int)))
(assert (not (= var1987!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!2 2) var796)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2984 (Array Int Int) (s2b/-450202684 var3179 var609)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1987!3 (Array Int (Array Int Int)))
(assert (not (= var1987!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!3 3) var2984)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3491 Int (getColumnType/800489773 var3179 var3482 var3102 var1503 var3353)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1057 String (String_valueOf/1240665136 var3491)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3794 (Array Int Int) (s2b/-450202684 var3179 var1057)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1987!4 (Array Int (Array Int Int)))
(assert (not (= var1987!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!4 4) var3794)) ; Statement: r0[4] = $r13 
(define-const var2016 var420 (mysqlType/-289055874 var8)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1067 var420 var420-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2016 var1067))) ; Cond: $r16 != $r15 
(define-const var187 var420 (mysqlType/-289055874 var8)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var270 Int (getJdbcType/389098195 var187)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var135 Int (cast-from-Int-to-Int var270)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var797 String (Int_toString/-1770815874 var135)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2551 (Array Int Int) (getBytes/1068683673 var797)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1987!5 (Array Int (Array Int Int)))
(assert (not (= var1987!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!5 5) var2551)) ; Statement: r0[5] = $r58 
(define-const var3831 var420 (mysqlType/-289055874 var8)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2543 String (getName/1307715079 var3831)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1200 (Array Int Int) (s2b/-450202684 var3179 var2543)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1987!6 (Array Int (Array Int Int)))
(assert (not (= var1987!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!6 6) var1200)) ; Statement: r0[6] = $r61 
(define-const var2377 Int (datetimePrecision/-289055874 var8)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2377 null-Int))) ; Cond: $r62 != null 
(define-const var86 Int (datetimePrecision/-289055874 var8)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1287 String (toString/483301002 var86)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1435 (Array Int Int) (s2b/-450202684 var3179 var1287)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1987!7 (Array Int (Array Int Int)))
(assert (not (= var1987!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!7 7) var1435)) ; Statement: r0[7] = $r63 
(define-const var672 Int (columnSize/-289055874 var8)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var672 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1620 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var1987!8 (Array Int (Array Int Int)))
(assert (not (= var1987!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!8 8) var1620)) ; Statement: r0[8] = $r64 
(define-const var1716 Int (decimalDigits/-289055874 var8)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1716 null-Int))) ; Cond: $r23 != null 
(define-const var2954 Int (decimalDigits/-289055874 var8)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var3472 String (toString/483301002 var2954)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3433 (Array Int Int) (s2b/-450202684 var3179 var3472)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var1987!9 (Array Int (Array Int Int)))
(assert (not (= var1987!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!9 9) var3433)) ; Statement: r0[9] = $r65 
(define-const var941 Int (numPrecRadix/-289055874 var8)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1056 String (Int_toString/1350422511 var941)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3801 (Array Int Int) (s2b/-450202684 var3179 var1056)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1987!10 (Array Int (Array Int Int)))
(assert (not (= var1987!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1987!10 10) var3801)) ; Statement: r0[10] = $r27 
(define-const var371 Int (nullability/-289055874 var8)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var371 2)) (and (not (= var371 1)) (and (not (= var371 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var220 String (var2445_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1131 var1249 (getExceptionInterceptor/-1244810802 var3179)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2752 var1812 (var2327_createSQLException/-1268047242 var220 "S1000" var1131)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3265_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3475-to-var409=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2445_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2327_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1372=com.mysql.cj.jdbc.DatabaseMetaData, var3179=r1, var796=r9, var3944=r5, var609=r10, var1180=null_type, var3482=z1, var3102=z2, var1503=z3, var1652=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var8=r14, var3353=z0, var3176=i4, var3869=$r54, var1987=r0, var2842=$r53, var3265=com.mysql.cj.conf.RuntimeProperty, var760=$r2, var409=java.lang.Object, var3699=$r4, var3475=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var810=$r3, var2285=$r55, var1713=$r6, var2444=$r8, var1719=$r7, var2482=$r56, var2984=$r11, var3491=$i0, var1057=$r12, var3794=$r13, var420=com.mysql.cj.MysqlType, var2016=$r16, var1067=$r15, var187=$r17, var270=$i1, var135=$s5, var797=$r57, var2551=$r58, var3831=$r59, var2543=$r60, var1200=$r61, var2377=$r62, var86=$r18, var1287=$r19, var1435=$r63, var672=$r20, var1620=$r64, var1716=$r23, var2954=$r24, var3472=$r25, var3433=$r65, var941=$i2, var1056=$r26, var3801=$r27, var371=$i3, var2445=com.mysql.cj.Messages, var220=$r49, var1249=com.mysql.cj.exceptions.ExceptionInterceptor, var1131=$r48, var1812=java.sql.SQLException, var2327=com.mysql.cj.jdbc.exceptions.SQLError, var2752=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1372, r1=var3179, r9=var796, r5=var3944, r10=var609, null_type=var1180, z1=var3482, z2=var3102, z3=var1503, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1652, r14=var8, z0=var3353, i4=var3176, $r54=var3869, r0=var1987, $r53=var2842, com.mysql.cj.conf.RuntimeProperty=var3265, $r2=var760, java.lang.Object=var409, $r4=var3699, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3475, $r3=var810, $r55=var2285, $r6=var1713, $r8=var2444, $r7=var1719, $r56=var2482, $r11=var2984, $i0=var3491, $r12=var1057, $r13=var3794, com.mysql.cj.MysqlType=var420, $r16=var2016, $r15=var1067, $r17=var187, $i1=var270, $s5=var135, $r57=var797, $r58=var2551, $r59=var3831, $r60=var2543, $r61=var1200, $r62=var2377, $r18=var86, $r19=var1287, $r63=var1435, $r20=var672, $r64=var1620, $r23=var1716, $r24=var2954, $r25=var3472, $r65=var3433, $i2=var941, $r26=var1056, $r27=var3801, $i3=var371, com.mysql.cj.Messages=var2445, $r49=var220, com.mysql.cj.exceptions.ExceptionInterceptor=var1249, $r48=var1131, java.sql.SQLException=var1812, com.mysql.cj.jdbc.exceptions.SQLError=var2327, $r50=var2752}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16