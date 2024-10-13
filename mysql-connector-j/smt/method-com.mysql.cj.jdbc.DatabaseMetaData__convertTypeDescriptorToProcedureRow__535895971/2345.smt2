(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var246 0)
(declare-sort var938 0)
(declare-sort var229 0)
(declare-sort var3332 0)
(declare-sort var2547 0)
(declare-sort var1460 0)
(declare-sort var90 0)
(declare-sort var2887 0)
(declare-sort var3550 0)
(declare-sort var1313 0)
(declare-sort var671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var246) var3332)
(declare-fun var3332_getValue/1633538672 (var3332) var2547)
(declare-fun cast-from-var1460-to-var2547 (var1460) var2547)
(declare-fun s2b/-450202684 (var246 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var246 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var229) var90)
(declare-fun getJdbcType/389098195 (var90) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var90) String)
(declare-fun datetimePrecision/-289055874 (var229) Int)
(declare-fun columnSize/-289055874 (var229) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var229) Int)
(declare-fun numPrecRadix/-289055874 (var229) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var229) Int)
(declare-fun var2887_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var246) var3550)
(declare-fun var671_createSQLException/-1268047242 (String String var3550) var1313)
(declare-const null-var246 var246)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var229 var229)
(declare-const null-Int Int)
(declare-const var1460-SCHEMA var1460)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var90-YEAR var90)
(declare-const var1490 var246) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1490 null-var246)))
(declare-const var512 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var512 null-__Array__Int__Int__)))
(declare-const var1115 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1115 null-__Array__Int__Int__)))
(declare-const var3167 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3167 null-String)))
(declare-const var64 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var64 null-Bool)))
(declare-const var1728 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1728 null-Bool)))
(declare-const var1423 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1423 null-Bool)))
(declare-const var3379 var229) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3379 null-var229)))
(declare-const var2592 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2592 null-Bool)))
(declare-const var3576 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3576 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var2592 1 0) 0)) ; Cond: z0 == 0 
(define-const var1705 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2274 (Array Int (Array Int Int)) var1705) ; Statement: r0 = $r54 
(define-const var170 (Array Int (Array Int Int)) var1705) ; Statement: $r53 = $r54 
(define-const var2193 var3332 (databaseTerm/1074764847 var1490)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2245 var2547 (var3332_getValue/1633538672 var2193)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var219 var1460 var1460-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var2245 (cast-from-var1460-to-var2547 var219))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var24 (Array Int Int) (s2b/-450202684 var1490 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var170!1 (Array Int (Array Int Int)))
(assert (not (= var170!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var170!1 0) var24)) ; Statement: $r53[0] = $r55 
(define-const var1952 var3332 (databaseTerm/1074764847 var1490)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2862 var2547 (var3332_getValue/1633538672 var1952)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3639 var1460 var1460-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2862 (cast-from-var1460-to-var2547 var3639)))) ; Cond: $r8 != $r7 
(define-const var2394 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var2274!1 (Array Int (Array Int Int)))
(assert (not (= var2274!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!1 1) var2394)) ; Statement: r0[1] = $r56 
(declare-const var2274!2 (Array Int (Array Int Int)))
(assert (not (= var2274!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!2 2) var512)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2155 (Array Int Int) (s2b/-450202684 var1490 var3167)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2274!3 (Array Int (Array Int Int)))
(assert (not (= var2274!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!3 3) var2155)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3544 Int (getColumnType/800489773 var1490 var64 var1728 var1423 var2592)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var811 String (String_valueOf/1240665136 var3544)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var204 (Array Int Int) (s2b/-450202684 var1490 var811)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2274!4 (Array Int (Array Int Int)))
(assert (not (= var2274!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!4 4) var204)) ; Statement: r0[4] = $r13 
(define-const var1036 var90 (mysqlType/-289055874 var3379)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var838 var90 var90-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1036 var838))) ; Cond: $r16 != $r15 
(define-const var751 var90 (mysqlType/-289055874 var3379)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2710 Int (getJdbcType/389098195 var751)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var718 Int (cast-from-Int-to-Int var2710)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3986 String (Int_toString/-1770815874 var718)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3089 (Array Int Int) (getBytes/1068683673 var3986)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2274!5 (Array Int (Array Int Int)))
(assert (not (= var2274!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!5 5) var3089)) ; Statement: r0[5] = $r58 
(define-const var2806 var90 (mysqlType/-289055874 var3379)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1540 String (getName/1307715079 var2806)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var92 (Array Int Int) (s2b/-450202684 var1490 var1540)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2274!6 (Array Int (Array Int Int)))
(assert (not (= var2274!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!6 6) var92)) ; Statement: r0[6] = $r61 
(define-const var2937 Int (datetimePrecision/-289055874 var3379)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2937 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var709 Int (columnSize/-289055874 var3379)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3788 String (toString/483301002 var709)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2564 (Array Int Int) (s2b/-450202684 var1490 var3788)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var2274!7 (Array Int (Array Int Int)))
(assert (not (= var2274!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!7 7) var2564)) ; Statement: r0[7] = $r63 
(define-const var1035 Int (columnSize/-289055874 var3379)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1035 null-Int))) ; Cond: $r20 != null 
(define-const var2269 Int (columnSize/-289055874 var3379)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var835 String (toString/483301002 var2269)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var537 (Array Int Int) (s2b/-450202684 var1490 var835)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var2274!8 (Array Int (Array Int Int)))
(assert (not (= var2274!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!8 8) var537)) ; Statement: r0[8] = $r64 
(define-const var3306 Int (decimalDigits/-289055874 var3379)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3306 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var832 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2274!9 (Array Int (Array Int Int)))
(assert (not (= var2274!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!9 9) var832)) ; Statement: r0[9] = $r65 
(define-const var210 Int (numPrecRadix/-289055874 var3379)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3808 String (Int_toString/1350422511 var210)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2184 (Array Int Int) (s2b/-450202684 var1490 var3808)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2274!10 (Array Int (Array Int Int)))
(assert (not (= var2274!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2274!10 10) var2184)) ; Statement: r0[10] = $r27 
(define-const var3010 Int (nullability/-289055874 var3379)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3010 2)) (and (not (= var3010 1)) (and (not (= var3010 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var371 String (var2887_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1359 var3550 (getExceptionInterceptor/-1244810802 var1490)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var941 var1313 (var671_createSQLException/-1268047242 var371 "S1000" var1359)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3332_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1460-to-var2547=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2887_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var671_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var246=com.mysql.cj.jdbc.DatabaseMetaData, var1490=r1, var512=r9, var1115=r5, var3167=r10, var938=null_type, var64=z1, var1728=z2, var1423=z3, var229=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3379=r14, var2592=z0, var3576=i4, var1705=$r54, var2274=r0, var170=$r53, var3332=com.mysql.cj.conf.RuntimeProperty, var2193=$r2, var2547=java.lang.Object, var2245=$r4, var1460=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var219=$r3, var24=$r55, var1952=$r6, var2862=$r8, var3639=$r7, var2394=$r56, var2155=$r11, var3544=$i0, var811=$r12, var204=$r13, var90=com.mysql.cj.MysqlType, var1036=$r16, var838=$r15, var751=$r17, var2710=$i1, var718=$s5, var3986=$r57, var3089=$r58, var2806=$r59, var1540=$r60, var92=$r61, var2937=$r62, var709=$r51, var3788=$r52, var2564=$r63, var1035=$r20, var2269=$r21, var835=$r22, var537=$r64, var3306=$r23, var832=$r65, var210=$i2, var3808=$r26, var2184=$r27, var3010=$i3, var2887=com.mysql.cj.Messages, var371=$r49, var3550=com.mysql.cj.exceptions.ExceptionInterceptor, var1359=$r48, var1313=java.sql.SQLException, var671=com.mysql.cj.jdbc.exceptions.SQLError, var941=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var246, r1=var1490, r9=var512, r5=var1115, r10=var3167, null_type=var938, z1=var64, z2=var1728, z3=var1423, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var229, r14=var3379, z0=var2592, i4=var3576, $r54=var1705, r0=var2274, $r53=var170, com.mysql.cj.conf.RuntimeProperty=var3332, $r2=var2193, java.lang.Object=var2547, $r4=var2245, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1460, $r3=var219, $r55=var24, $r6=var1952, $r8=var2862, $r7=var3639, $r56=var2394, $r11=var2155, $i0=var3544, $r12=var811, $r13=var204, com.mysql.cj.MysqlType=var90, $r16=var1036, $r15=var838, $r17=var751, $i1=var2710, $s5=var718, $r57=var3986, $r58=var3089, $r59=var2806, $r60=var1540, $r61=var92, $r62=var2937, $r51=var709, $r52=var3788, $r63=var2564, $r20=var1035, $r21=var2269, $r22=var835, $r64=var537, $r23=var3306, $r65=var832, $i2=var210, $r26=var3808, $r27=var2184, $i3=var3010, com.mysql.cj.Messages=var2887, $r49=var371, com.mysql.cj.exceptions.ExceptionInterceptor=var3550, $r48=var1359, java.sql.SQLException=var1313, com.mysql.cj.jdbc.exceptions.SQLError=var671, $r50=var941}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16