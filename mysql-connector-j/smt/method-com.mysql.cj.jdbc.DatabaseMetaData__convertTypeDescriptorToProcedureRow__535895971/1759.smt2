(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1379 0)
(declare-sort var1253 0)
(declare-sort var2423 0)
(declare-sort var1343 0)
(declare-sort var3100 0)
(declare-sort var2151 0)
(declare-sort var3352 0)
(declare-sort var3649 0)
(declare-sort var737 0)
(declare-sort var1002 0)
(declare-sort var1546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1379) var1343)
(declare-fun var1343_getValue/1633538672 (var1343) var3100)
(declare-fun cast-from-var2151-to-var3100 (var2151) var3100)
(declare-fun s2b/-450202684 (var1379 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1379 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2423) var3352)
(declare-fun getJdbcType/389098195 (var3352) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var3352) String)
(declare-fun datetimePrecision/-289055874 (var2423) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var2423) Int)
(declare-fun decimalDigits/-289055874 (var2423) Int)
(declare-fun numPrecRadix/-289055874 (var2423) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2423) Int)
(declare-fun var3649_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1379) var737)
(declare-fun var1546_createSQLException/-1268047242 (String String var737) var1002)
(declare-const null-var1379 var1379)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2423 var2423)
(declare-const null-Int Int)
(declare-const var2151-SCHEMA var2151)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3352-YEAR var3352)
(declare-const var2326 var1379) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2326 null-var1379)))
(declare-const var3889 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3889 null-__Array__Int__Int__)))
(declare-const var1362 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1362 null-__Array__Int__Int__)))
(declare-const var1300 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1300 null-String)))
(declare-const var1000 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1000 null-Bool)))
(declare-const var3771 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3771 null-Bool)))
(declare-const var2714 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2714 null-Bool)))
(declare-const var412 var2423) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var412 null-var2423)))
(declare-const var2298 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2298 null-Bool)))
(declare-const var2846 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2846 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var2298 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1607 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3899 (Array Int (Array Int Int)) var1607) ; Statement: r0 = $r54 
(define-const var2083 (Array Int (Array Int Int)) var1607) ; Statement: $r53 = $r54 
(define-const var985 var1343 (databaseTerm/1074764847 var2326)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var609 var3100 (var1343_getValue/1633538672 var985)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1014 var2151 var2151-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var609 (cast-from-var2151-to-var3100 var1014))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var2810 (Array Int Int) (s2b/-450202684 var2326 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2083!1 (Array Int (Array Int Int)))
(assert (not (= var2083!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2083!1 0) var2810)) ; Statement: $r53[0] = $r55 
(define-const var3214 var1343 (databaseTerm/1074764847 var2326)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2649 var3100 (var1343_getValue/1633538672 var3214)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1611 var2151 var2151-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2649 (cast-from-var2151-to-var3100 var1611))))) ; Negate: Cond: $r8 != $r7  
(define-const var134 (Array Int Int) var1362) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3899!1 (Array Int (Array Int Int)))
(assert (not (= var3899!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!1 1) var134)) ; Statement: r0[1] = $r56 
(declare-const var3899!2 (Array Int (Array Int Int)))
(assert (not (= var3899!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!2 2) var3889)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2189 (Array Int Int) (s2b/-450202684 var2326 var1300)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3899!3 (Array Int (Array Int Int)))
(assert (not (= var3899!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!3 3) var2189)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var516 Int (getColumnType/800489773 var2326 var1000 var3771 var2714 var2298)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2210 String (String_valueOf/1240665136 var516)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2130 (Array Int Int) (s2b/-450202684 var2326 var2210)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3899!4 (Array Int (Array Int Int)))
(assert (not (= var3899!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!4 4) var2130)) ; Statement: r0[4] = $r13 
(define-const var2587 var3352 (mysqlType/-289055874 var412)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3717 var3352 var3352-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2587 var3717))) ; Cond: $r16 != $r15 
(define-const var1864 var3352 (mysqlType/-289055874 var412)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3506 Int (getJdbcType/389098195 var1864)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1890 Int (cast-from-Int-to-Int var3506)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1935 String (Int_toString/-1770815874 var1890)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var340 (Array Int Int) (getBytes/1068683673 var1935)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3899!5 (Array Int (Array Int Int)))
(assert (not (= var3899!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!5 5) var340)) ; Statement: r0[5] = $r58 
(define-const var812 var3352 (mysqlType/-289055874 var412)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3047 String (getName/1307715079 var812)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1721 (Array Int Int) (s2b/-450202684 var2326 var3047)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3899!6 (Array Int (Array Int Int)))
(assert (not (= var3899!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!6 6) var1721)) ; Statement: r0[6] = $r61 
(define-const var3291 Int (datetimePrecision/-289055874 var412)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3291 null-Int))) ; Cond: $r62 != null 
(define-const var1868 Int (datetimePrecision/-289055874 var412)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var2435 String (toString/483301002 var1868)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1970 (Array Int Int) (s2b/-450202684 var2326 var2435)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var3899!7 (Array Int (Array Int Int)))
(assert (not (= var3899!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!7 7) var1970)) ; Statement: r0[7] = $r63 
(define-const var1610 Int (columnSize/-289055874 var412)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1610 null-Int))) ; Cond: $r20 != null 
(define-const var2148 Int (columnSize/-289055874 var412)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3743 String (toString/483301002 var2148)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3452 (Array Int Int) (s2b/-450202684 var2326 var3743)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var3899!8 (Array Int (Array Int Int)))
(assert (not (= var3899!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!8 8) var3452)) ; Statement: r0[8] = $r64 
(define-const var1989 Int (decimalDigits/-289055874 var412)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var1989 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var485 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var3899!9 (Array Int (Array Int Int)))
(assert (not (= var3899!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!9 9) var485)) ; Statement: r0[9] = $r65 
(define-const var3996 Int (numPrecRadix/-289055874 var412)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2583 String (Int_toString/1350422511 var3996)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2354 (Array Int Int) (s2b/-450202684 var2326 var2583)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3899!10 (Array Int (Array Int Int)))
(assert (not (= var3899!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3899!10 10) var2354)) ; Statement: r0[10] = $r27 
(define-const var3381 Int (nullability/-289055874 var412)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3381 2)) (and (not (= var3381 1)) (and (not (= var3381 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2431 String (var3649_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1209 var737 (getExceptionInterceptor/-1244810802 var2326)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2500 var1002 (var1546_createSQLException/-1268047242 var2431 "S1000" var1209)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1343_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2151-to-var3100=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3649_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1546_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1379=com.mysql.cj.jdbc.DatabaseMetaData, var2326=r1, var3889=r9, var1362=r5, var1300=r10, var1253=null_type, var1000=z1, var3771=z2, var2714=z3, var2423=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var412=r14, var2298=z0, var2846=i4, var1607=$r54, var3899=r0, var2083=$r53, var1343=com.mysql.cj.conf.RuntimeProperty, var985=$r2, var3100=java.lang.Object, var609=$r4, var2151=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1014=$r3, var2810=$r55, var3214=$r6, var2649=$r8, var1611=$r7, var134=$r56, var2189=$r11, var516=$i0, var2210=$r12, var2130=$r13, var3352=com.mysql.cj.MysqlType, var2587=$r16, var3717=$r15, var1864=$r17, var3506=$i1, var1890=$s5, var1935=$r57, var340=$r58, var812=$r59, var3047=$r60, var1721=$r61, var3291=$r62, var1868=$r18, var2435=$r19, var1970=$r63, var1610=$r20, var2148=$r21, var3743=$r22, var3452=$r64, var1989=$r23, var485=$r65, var3996=$i2, var2583=$r26, var2354=$r27, var3381=$i3, var3649=com.mysql.cj.Messages, var2431=$r49, var737=com.mysql.cj.exceptions.ExceptionInterceptor, var1209=$r48, var1002=java.sql.SQLException, var1546=com.mysql.cj.jdbc.exceptions.SQLError, var2500=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1379, r1=var2326, r9=var3889, r5=var1362, r10=var1300, null_type=var1253, z1=var1000, z2=var3771, z3=var2714, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2423, r14=var412, z0=var2298, i4=var2846, $r54=var1607, r0=var3899, $r53=var2083, com.mysql.cj.conf.RuntimeProperty=var1343, $r2=var985, java.lang.Object=var3100, $r4=var609, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2151, $r3=var1014, $r55=var2810, $r6=var3214, $r8=var2649, $r7=var1611, $r56=var134, $r11=var2189, $i0=var516, $r12=var2210, $r13=var2130, com.mysql.cj.MysqlType=var3352, $r16=var2587, $r15=var3717, $r17=var1864, $i1=var3506, $s5=var1890, $r57=var1935, $r58=var340, $r59=var812, $r60=var3047, $r61=var1721, $r62=var3291, $r18=var1868, $r19=var2435, $r63=var1970, $r20=var1610, $r21=var2148, $r22=var3743, $r64=var3452, $r23=var1989, $r65=var485, $i2=var3996, $r26=var2583, $r27=var2354, $i3=var3381, com.mysql.cj.Messages=var3649, $r49=var2431, com.mysql.cj.exceptions.ExceptionInterceptor=var737, $r48=var1209, java.sql.SQLException=var1002, com.mysql.cj.jdbc.exceptions.SQLError=var1546, $r50=var2500}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16