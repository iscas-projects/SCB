(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1106 0)
(declare-sort var323 0)
(declare-sort var2083 0)
(declare-sort var339 0)
(declare-sort var267 0)
(declare-sort var512 0)
(declare-sort var2161 0)
(declare-sort var1343 0)
(declare-sort var900 0)
(declare-sort var2228 0)
(declare-sort var3909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1106) var339)
(declare-fun var339_getValue/1633538672 (var339) var267)
(declare-fun cast-from-var512-to-var267 (var512) var267)
(declare-fun s2b/-450202684 (var1106 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1106 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2083) var2161)
(declare-fun getJdbcType/389098195 (var2161) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2161) String)
(declare-fun datetimePrecision/-289055874 (var2083) Int)
(declare-fun columnSize/-289055874 (var2083) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var2083) Int)
(declare-fun numPrecRadix/-289055874 (var2083) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2083) Int)
(declare-fun var1343_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1106) var900)
(declare-fun var3909_createSQLException/-1268047242 (String String var900) var2228)
(declare-const null-var1106 var1106)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2083 var2083)
(declare-const null-Int Int)
(declare-const var512-SCHEMA var512)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2161-YEAR var2161)
(declare-const var572 var1106) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var572 null-var1106)))
(declare-const var2647 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2647 null-__Array__Int__Int__)))
(declare-const var3317 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3317 null-__Array__Int__Int__)))
(declare-const var3743 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3743 null-String)))
(declare-const var2177 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2177 null-Bool)))
(declare-const var2332 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2332 null-Bool)))
(declare-const var408 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var408 null-Bool)))
(declare-const var3499 var2083) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3499 null-var2083)))
(declare-const var2967 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2967 null-Bool)))
(declare-const var579 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var579 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var2967 1 0) 0)) ; Cond: z0 == 0 
(define-const var1054 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2267 (Array Int (Array Int Int)) var1054) ; Statement: r0 = $r54 
(define-const var2260 (Array Int (Array Int Int)) var1054) ; Statement: $r53 = $r54 
(define-const var1047 var339 (databaseTerm/1074764847 var572)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1234 var267 (var339_getValue/1633538672 var1047)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2564 var512 var512-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var1234 (cast-from-var512-to-var267 var2564)))) ; Cond: $r4 != $r3 
(define-const var2846 (Array Int Int) var3317) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var2260!1 (Array Int (Array Int Int)))
(assert (not (= var2260!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2260!1 0) var2846)) ; Statement: $r53[0] = $r55 
(define-const var2326 var339 (databaseTerm/1074764847 var572)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1097 var267 (var339_getValue/1633538672 var2326)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2965 var512 var512-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1097 (cast-from-var512-to-var267 var2965))))) ; Negate: Cond: $r8 != $r7  
(define-const var2959 (Array Int Int) var3317) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2267!1 (Array Int (Array Int Int)))
(assert (not (= var2267!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!1 1) var2959)) ; Statement: r0[1] = $r56 
(declare-const var2267!2 (Array Int (Array Int Int)))
(assert (not (= var2267!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!2 2) var2647)) ; Statement: r0[2] = r9 
(assert true)
(define-const var108 (Array Int Int) (s2b/-450202684 var572 var3743)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2267!3 (Array Int (Array Int Int)))
(assert (not (= var2267!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!3 3) var108)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1489 Int (getColumnType/800489773 var572 var2177 var2332 var408 var2967)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2328 String (String_valueOf/1240665136 var1489)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var278 (Array Int Int) (s2b/-450202684 var572 var2328)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2267!4 (Array Int (Array Int Int)))
(assert (not (= var2267!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!4 4) var278)) ; Statement: r0[4] = $r13 
(define-const var662 var2161 (mysqlType/-289055874 var3499)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3163 var2161 var2161-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var662 var3163))) ; Cond: $r16 != $r15 
(define-const var2555 var2161 (mysqlType/-289055874 var3499)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var134 Int (getJdbcType/389098195 var2555)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1307 Int (cast-from-Int-to-Int var134)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var885 String (Int_toString/-1770815874 var1307)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2310 (Array Int Int) (getBytes/1068683673 var885)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2267!5 (Array Int (Array Int Int)))
(assert (not (= var2267!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!5 5) var2310)) ; Statement: r0[5] = $r58 
(define-const var2296 var2161 (mysqlType/-289055874 var3499)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var853 String (getName/1307715079 var2296)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var813 (Array Int Int) (s2b/-450202684 var572 var853)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2267!6 (Array Int (Array Int Int)))
(assert (not (= var2267!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!6 6) var813)) ; Statement: r0[6] = $r61 
(define-const var2921 Int (datetimePrecision/-289055874 var3499)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2921 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var2304 Int (columnSize/-289055874 var3499)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var376 String (toString/483301002 var2304)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2391 (Array Int Int) (s2b/-450202684 var572 var376)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var2267!7 (Array Int (Array Int Int)))
(assert (not (= var2267!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!7 7) var2391)) ; Statement: r0[7] = $r63 
(define-const var314 Int (columnSize/-289055874 var3499)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var314 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var2433 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var2267!8 (Array Int (Array Int Int)))
(assert (not (= var2267!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!8 8) var2433)) ; Statement: r0[8] = $r64 
(define-const var3579 Int (decimalDigits/-289055874 var3499)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3579 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var2474 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2267!9 (Array Int (Array Int Int)))
(assert (not (= var2267!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!9 9) var2474)) ; Statement: r0[9] = $r65 
(define-const var1723 Int (numPrecRadix/-289055874 var3499)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1204 String (Int_toString/1350422511 var1723)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var359 (Array Int Int) (s2b/-450202684 var572 var1204)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2267!10 (Array Int (Array Int Int)))
(assert (not (= var2267!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2267!10 10) var359)) ; Statement: r0[10] = $r27 
(define-const var2710 Int (nullability/-289055874 var3499)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2710 2)) (and (not (= var2710 1)) (and (not (= var2710 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3087 String (var1343_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1414 var900 (getExceptionInterceptor/-1244810802 var572)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2820 var2228 (var3909_createSQLException/-1268047242 var3087 "S1000" var1414)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var339_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var512-to-var267=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1343_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3909_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1106=com.mysql.cj.jdbc.DatabaseMetaData, var572=r1, var2647=r9, var3317=r5, var3743=r10, var323=null_type, var2177=z1, var2332=z2, var408=z3, var2083=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3499=r14, var2967=z0, var579=i4, var1054=$r54, var2267=r0, var2260=$r53, var339=com.mysql.cj.conf.RuntimeProperty, var1047=$r2, var267=java.lang.Object, var1234=$r4, var512=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2564=$r3, var2846=$r55, var2326=$r6, var1097=$r8, var2965=$r7, var2959=$r56, var108=$r11, var1489=$i0, var2328=$r12, var278=$r13, var2161=com.mysql.cj.MysqlType, var662=$r16, var3163=$r15, var2555=$r17, var134=$i1, var1307=$s5, var885=$r57, var2310=$r58, var2296=$r59, var853=$r60, var813=$r61, var2921=$r62, var2304=$r51, var376=$r52, var2391=$r63, var314=$r20, var2433=$r64, var3579=$r23, var2474=$r65, var1723=$i2, var1204=$r26, var359=$r27, var2710=$i3, var1343=com.mysql.cj.Messages, var3087=$r49, var900=com.mysql.cj.exceptions.ExceptionInterceptor, var1414=$r48, var2228=java.sql.SQLException, var3909=com.mysql.cj.jdbc.exceptions.SQLError, var2820=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1106, r1=var572, r9=var2647, r5=var3317, r10=var3743, null_type=var323, z1=var2177, z2=var2332, z3=var408, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2083, r14=var3499, z0=var2967, i4=var579, $r54=var1054, r0=var2267, $r53=var2260, com.mysql.cj.conf.RuntimeProperty=var339, $r2=var1047, java.lang.Object=var267, $r4=var1234, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var512, $r3=var2564, $r55=var2846, $r6=var2326, $r8=var1097, $r7=var2965, $r56=var2959, $r11=var108, $i0=var1489, $r12=var2328, $r13=var278, com.mysql.cj.MysqlType=var2161, $r16=var662, $r15=var3163, $r17=var2555, $i1=var134, $s5=var1307, $r57=var885, $r58=var2310, $r59=var2296, $r60=var853, $r61=var813, $r62=var2921, $r51=var2304, $r52=var376, $r63=var2391, $r20=var314, $r64=var2433, $r23=var3579, $r65=var2474, $i2=var1723, $r26=var1204, $r27=var359, $i3=var2710, com.mysql.cj.Messages=var1343, $r49=var3087, com.mysql.cj.exceptions.ExceptionInterceptor=var900, $r48=var1414, java.sql.SQLException=var2228, com.mysql.cj.jdbc.exceptions.SQLError=var3909, $r50=var2820}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16