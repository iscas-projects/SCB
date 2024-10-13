(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2532 0)
(declare-sort var2577 0)
(declare-sort var1372 0)
(declare-sort var3483 0)
(declare-sort var1999 0)
(declare-sort var2346 0)
(declare-sort var505 0)
(declare-sort var2946 0)
(declare-sort var3185 0)
(declare-sort var999 0)
(declare-sort var654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2532) var3483)
(declare-fun var3483_getValue/1633538672 (var3483) var1999)
(declare-fun cast-from-var2346-to-var1999 (var2346) var1999)
(declare-fun s2b/-450202684 (var2532 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2532 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1372) var505)
(declare-fun getJdbcType/389098195 (var505) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var505) String)
(declare-fun datetimePrecision/-289055874 (var1372) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var1372) Int)
(declare-fun decimalDigits/-289055874 (var1372) Int)
(declare-fun numPrecRadix/-289055874 (var1372) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1372) Int)
(declare-fun var2946_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2532) var3185)
(declare-fun var654_createSQLException/-1268047242 (String String var3185) var999)
(declare-const null-var2532 var2532)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1372 var1372)
(declare-const null-Int Int)
(declare-const var2346-SCHEMA var2346)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var505-YEAR var505)
(declare-const var2391 var2532) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2391 null-var2532)))
(declare-const var370 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var370 null-__Array__Int__Int__)))
(declare-const var258 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var258 null-__Array__Int__Int__)))
(declare-const var1558 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1558 null-String)))
(declare-const var1476 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1476 null-Bool)))
(declare-const var3947 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3947 null-Bool)))
(declare-const var3110 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3110 null-Bool)))
(declare-const var2528 var1372) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2528 null-var1372)))
(declare-const var1366 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1366 null-Bool)))
(declare-const var826 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var826 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1366 1 0) 0)) ; Cond: z0 == 0 
(define-const var372 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var102 (Array Int (Array Int Int)) var372) ; Statement: r0 = $r54 
(define-const var2234 (Array Int (Array Int Int)) var372) ; Statement: $r53 = $r54 
(define-const var1086 var3483 (databaseTerm/1074764847 var2391)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3948 var1999 (var3483_getValue/1633538672 var1086)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1854 var2346 var2346-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3948 (cast-from-var2346-to-var1999 var1854))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1953 (Array Int Int) (s2b/-450202684 var2391 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2234!1 (Array Int (Array Int Int)))
(assert (not (= var2234!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2234!1 0) var1953)) ; Statement: $r53[0] = $r55 
(define-const var3219 var3483 (databaseTerm/1074764847 var2391)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var415 var1999 (var3483_getValue/1633538672 var3219)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3809 var2346 var2346-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var415 (cast-from-var2346-to-var1999 var3809)))) ; Cond: $r8 != $r7 
(define-const var983 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var102!1 (Array Int (Array Int Int)))
(assert (not (= var102!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!1 1) var983)) ; Statement: r0[1] = $r56 
(declare-const var102!2 (Array Int (Array Int Int)))
(assert (not (= var102!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!2 2) var370)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1863 (Array Int Int) (s2b/-450202684 var2391 var1558)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var102!3 (Array Int (Array Int Int)))
(assert (not (= var102!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!3 3) var1863)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var922 Int (getColumnType/800489773 var2391 var1476 var3947 var3110 var1366)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2317 String (String_valueOf/1240665136 var922)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1715 (Array Int Int) (s2b/-450202684 var2391 var2317)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var102!4 (Array Int (Array Int Int)))
(assert (not (= var102!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!4 4) var1715)) ; Statement: r0[4] = $r13 
(define-const var1132 var505 (mysqlType/-289055874 var2528)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2969 var505 var505-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1132 var2969))) ; Cond: $r16 != $r15 
(define-const var733 var505 (mysqlType/-289055874 var2528)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1079 Int (getJdbcType/389098195 var733)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3304 Int (cast-from-Int-to-Int var1079)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1893 String (Int_toString/-1770815874 var3304)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1910 (Array Int Int) (getBytes/1068683673 var1893)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var102!5 (Array Int (Array Int Int)))
(assert (not (= var102!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!5 5) var1910)) ; Statement: r0[5] = $r58 
(define-const var2322 var505 (mysqlType/-289055874 var2528)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1639 String (getName/1307715079 var2322)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1006 (Array Int Int) (s2b/-450202684 var2391 var1639)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var102!6 (Array Int (Array Int Int)))
(assert (not (= var102!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!6 6) var1006)) ; Statement: r0[6] = $r61 
(define-const var2660 Int (datetimePrecision/-289055874 var2528)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2660 null-Int))) ; Cond: $r62 != null 
(define-const var3851 Int (datetimePrecision/-289055874 var2528)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var68 String (toString/483301002 var3851)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1826 (Array Int Int) (s2b/-450202684 var2391 var68)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var102!7 (Array Int (Array Int Int)))
(assert (not (= var102!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!7 7) var1826)) ; Statement: r0[7] = $r63 
(define-const var1206 Int (columnSize/-289055874 var2528)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1206 null-Int))) ; Cond: $r20 != null 
(define-const var1954 Int (columnSize/-289055874 var2528)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var960 String (toString/483301002 var1954)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var502 (Array Int Int) (s2b/-450202684 var2391 var960)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var102!8 (Array Int (Array Int Int)))
(assert (not (= var102!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!8 8) var502)) ; Statement: r0[8] = $r64 
(define-const var178 Int (decimalDigits/-289055874 var2528)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var178 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3892 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var102!9 (Array Int (Array Int Int)))
(assert (not (= var102!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!9 9) var3892)) ; Statement: r0[9] = $r65 
(define-const var3126 Int (numPrecRadix/-289055874 var2528)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var25 String (Int_toString/1350422511 var3126)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var275 (Array Int Int) (s2b/-450202684 var2391 var25)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var102!10 (Array Int (Array Int Int)))
(assert (not (= var102!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var102!10 10) var275)) ; Statement: r0[10] = $r27 
(define-const var3281 Int (nullability/-289055874 var2528)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3281 2)) (and (not (= var3281 1)) (and (not (= var3281 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2844 String (var2946_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3044 var3185 (getExceptionInterceptor/-1244810802 var2391)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3622 var999 (var654_createSQLException/-1268047242 var2844 "S1000" var3044)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3483_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2346-to-var1999=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2946_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var654_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2532=com.mysql.cj.jdbc.DatabaseMetaData, var2391=r1, var370=r9, var258=r5, var1558=r10, var2577=null_type, var1476=z1, var3947=z2, var3110=z3, var1372=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2528=r14, var1366=z0, var826=i4, var372=$r54, var102=r0, var2234=$r53, var3483=com.mysql.cj.conf.RuntimeProperty, var1086=$r2, var1999=java.lang.Object, var3948=$r4, var2346=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1854=$r3, var1953=$r55, var3219=$r6, var415=$r8, var3809=$r7, var983=$r56, var1863=$r11, var922=$i0, var2317=$r12, var1715=$r13, var505=com.mysql.cj.MysqlType, var1132=$r16, var2969=$r15, var733=$r17, var1079=$i1, var3304=$s5, var1893=$r57, var1910=$r58, var2322=$r59, var1639=$r60, var1006=$r61, var2660=$r62, var3851=$r18, var68=$r19, var1826=$r63, var1206=$r20, var1954=$r21, var960=$r22, var502=$r64, var178=$r23, var3892=$r65, var3126=$i2, var25=$r26, var275=$r27, var3281=$i3, var2946=com.mysql.cj.Messages, var2844=$r49, var3185=com.mysql.cj.exceptions.ExceptionInterceptor, var3044=$r48, var999=java.sql.SQLException, var654=com.mysql.cj.jdbc.exceptions.SQLError, var3622=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2532, r1=var2391, r9=var370, r5=var258, r10=var1558, null_type=var2577, z1=var1476, z2=var3947, z3=var3110, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1372, r14=var2528, z0=var1366, i4=var826, $r54=var372, r0=var102, $r53=var2234, com.mysql.cj.conf.RuntimeProperty=var3483, $r2=var1086, java.lang.Object=var1999, $r4=var3948, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2346, $r3=var1854, $r55=var1953, $r6=var3219, $r8=var415, $r7=var3809, $r56=var983, $r11=var1863, $i0=var922, $r12=var2317, $r13=var1715, com.mysql.cj.MysqlType=var505, $r16=var1132, $r15=var2969, $r17=var733, $i1=var1079, $s5=var3304, $r57=var1893, $r58=var1910, $r59=var2322, $r60=var1639, $r61=var1006, $r62=var2660, $r18=var3851, $r19=var68, $r63=var1826, $r20=var1206, $r21=var1954, $r22=var960, $r64=var502, $r23=var178, $r65=var3892, $i2=var3126, $r26=var25, $r27=var275, $i3=var3281, com.mysql.cj.Messages=var2946, $r49=var2844, com.mysql.cj.exceptions.ExceptionInterceptor=var3185, $r48=var3044, java.sql.SQLException=var999, com.mysql.cj.jdbc.exceptions.SQLError=var654, $r50=var3622}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16