(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2375 0)
(declare-sort var824 0)
(declare-sort var1232 0)
(declare-sort var1916 0)
(declare-sort var1619 0)
(declare-sort var613 0)
(declare-sort var2896 0)
(declare-sort var53 0)
(declare-sort var776 0)
(declare-sort var1361 0)
(declare-sort var3964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2375) var1916)
(declare-fun var1916_getValue/1633538672 (var1916) var1619)
(declare-fun cast-from-var613-to-var1619 (var613) var1619)
(declare-fun s2b/-450202684 (var2375 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2375 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1232) var2896)
(declare-fun getJdbcType/389098195 (var2896) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2896) String)
(declare-fun datetimePrecision/-289055874 (var1232) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var1232) Int)
(declare-fun decimalDigits/-289055874 (var1232) Int)
(declare-fun numPrecRadix/-289055874 (var1232) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1232) Int)
(declare-fun var53_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2375) var776)
(declare-fun var3964_createSQLException/-1268047242 (String String var776) var1361)
(declare-const null-var2375 var2375)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1232 var1232)
(declare-const null-Int Int)
(declare-const var613-SCHEMA var613)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2896-YEAR var2896)
(declare-const var3482 var2375) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3482 null-var2375)))
(declare-const var2836 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2836 null-__Array__Int__Int__)))
(declare-const var1762 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1762 null-__Array__Int__Int__)))
(declare-const var1567 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1567 null-String)))
(declare-const var553 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var553 null-Bool)))
(declare-const var548 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var548 null-Bool)))
(declare-const var531 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var531 null-Bool)))
(declare-const var1084 var1232) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1084 null-var1232)))
(declare-const var72 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var72 null-Bool)))
(declare-const var974 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var974 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var72 1 0) 0)) ; Cond: z0 == 0 
(define-const var3155 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var6 (Array Int (Array Int Int)) var3155) ; Statement: r0 = $r54 
(define-const var3581 (Array Int (Array Int Int)) var3155) ; Statement: $r53 = $r54 
(define-const var1806 var1916 (databaseTerm/1074764847 var3482)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3493 var1619 (var1916_getValue/1633538672 var1806)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var398 var613 var613-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3493 (cast-from-var613-to-var1619 var398)))) ; Cond: $r4 != $r3 
(define-const var1538 (Array Int Int) var1762) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3581!1 (Array Int (Array Int Int)))
(assert (not (= var3581!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3581!1 0) var1538)) ; Statement: $r53[0] = $r55 
(define-const var191 var1916 (databaseTerm/1074764847 var3482)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var858 var1619 (var1916_getValue/1633538672 var191)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3051 var613 var613-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var858 (cast-from-var613-to-var1619 var3051))))) ; Negate: Cond: $r8 != $r7  
(define-const var2672 (Array Int Int) var1762) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var6!1 (Array Int (Array Int Int)))
(assert (not (= var6!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!1 1) var2672)) ; Statement: r0[1] = $r56 
(declare-const var6!2 (Array Int (Array Int Int)))
(assert (not (= var6!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!2 2) var2836)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3485 (Array Int Int) (s2b/-450202684 var3482 var1567)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var6!3 (Array Int (Array Int Int)))
(assert (not (= var6!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!3 3) var3485)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1960 Int (getColumnType/800489773 var3482 var553 var548 var531 var72)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2888 String (String_valueOf/1240665136 var1960)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var439 (Array Int Int) (s2b/-450202684 var3482 var2888)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var6!4 (Array Int (Array Int Int)))
(assert (not (= var6!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!4 4) var439)) ; Statement: r0[4] = $r13 
(define-const var3072 var2896 (mysqlType/-289055874 var1084)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1586 var2896 var2896-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3072 var1586))) ; Cond: $r16 != $r15 
(define-const var3526 var2896 (mysqlType/-289055874 var1084)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3229 Int (getJdbcType/389098195 var3526)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2068 Int (cast-from-Int-to-Int var3229)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3619 String (Int_toString/-1770815874 var2068)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var32 (Array Int Int) (getBytes/1068683673 var3619)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var6!5 (Array Int (Array Int Int)))
(assert (not (= var6!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!5 5) var32)) ; Statement: r0[5] = $r58 
(define-const var3416 var2896 (mysqlType/-289055874 var1084)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3593 String (getName/1307715079 var3416)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3635 (Array Int Int) (s2b/-450202684 var3482 var3593)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var6!6 (Array Int (Array Int Int)))
(assert (not (= var6!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!6 6) var3635)) ; Statement: r0[6] = $r61 
(define-const var3303 Int (datetimePrecision/-289055874 var1084)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3303 null-Int))) ; Cond: $r62 != null 
(define-const var603 Int (datetimePrecision/-289055874 var1084)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3083 String (toString/483301002 var603)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1744 (Array Int Int) (s2b/-450202684 var3482 var3083)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var6!7 (Array Int (Array Int Int)))
(assert (not (= var6!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!7 7) var1744)) ; Statement: r0[7] = $r63 
(define-const var1667 Int (columnSize/-289055874 var1084)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var1667 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var3425 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var6!8 (Array Int (Array Int Int)))
(assert (not (= var6!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!8 8) var3425)) ; Statement: r0[8] = $r64 
(define-const var238 Int (decimalDigits/-289055874 var1084)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var238 null-Int))) ; Cond: $r23 != null 
(define-const var3968 Int (decimalDigits/-289055874 var1084)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var380 String (toString/483301002 var3968)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3794 (Array Int Int) (s2b/-450202684 var3482 var380)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var6!9 (Array Int (Array Int Int)))
(assert (not (= var6!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!9 9) var3794)) ; Statement: r0[9] = $r65 
(define-const var303 Int (numPrecRadix/-289055874 var1084)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2481 String (Int_toString/1350422511 var303)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2300 (Array Int Int) (s2b/-450202684 var3482 var2481)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var6!10 (Array Int (Array Int Int)))
(assert (not (= var6!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var6!10 10) var2300)) ; Statement: r0[10] = $r27 
(define-const var1549 Int (nullability/-289055874 var1084)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1549 2)) (and (not (= var1549 1)) (and (not (= var1549 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3772 String (var53_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1140 var776 (getExceptionInterceptor/-1244810802 var3482)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3947 var1361 (var3964_createSQLException/-1268047242 var3772 "S1000" var1140)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1916_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var613-to-var1619=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var53_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3964_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2375=com.mysql.cj.jdbc.DatabaseMetaData, var3482=r1, var2836=r9, var1762=r5, var1567=r10, var824=null_type, var553=z1, var548=z2, var531=z3, var1232=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1084=r14, var72=z0, var974=i4, var3155=$r54, var6=r0, var3581=$r53, var1916=com.mysql.cj.conf.RuntimeProperty, var1806=$r2, var1619=java.lang.Object, var3493=$r4, var613=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var398=$r3, var1538=$r55, var191=$r6, var858=$r8, var3051=$r7, var2672=$r56, var3485=$r11, var1960=$i0, var2888=$r12, var439=$r13, var2896=com.mysql.cj.MysqlType, var3072=$r16, var1586=$r15, var3526=$r17, var3229=$i1, var2068=$s5, var3619=$r57, var32=$r58, var3416=$r59, var3593=$r60, var3635=$r61, var3303=$r62, var603=$r18, var3083=$r19, var1744=$r63, var1667=$r20, var3425=$r64, var238=$r23, var3968=$r24, var380=$r25, var3794=$r65, var303=$i2, var2481=$r26, var2300=$r27, var1549=$i3, var53=com.mysql.cj.Messages, var3772=$r49, var776=com.mysql.cj.exceptions.ExceptionInterceptor, var1140=$r48, var1361=java.sql.SQLException, var3964=com.mysql.cj.jdbc.exceptions.SQLError, var3947=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2375, r1=var3482, r9=var2836, r5=var1762, r10=var1567, null_type=var824, z1=var553, z2=var548, z3=var531, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1232, r14=var1084, z0=var72, i4=var974, $r54=var3155, r0=var6, $r53=var3581, com.mysql.cj.conf.RuntimeProperty=var1916, $r2=var1806, java.lang.Object=var1619, $r4=var3493, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var613, $r3=var398, $r55=var1538, $r6=var191, $r8=var858, $r7=var3051, $r56=var2672, $r11=var3485, $i0=var1960, $r12=var2888, $r13=var439, com.mysql.cj.MysqlType=var2896, $r16=var3072, $r15=var1586, $r17=var3526, $i1=var3229, $s5=var2068, $r57=var3619, $r58=var32, $r59=var3416, $r60=var3593, $r61=var3635, $r62=var3303, $r18=var603, $r19=var3083, $r63=var1744, $r20=var1667, $r64=var3425, $r23=var238, $r24=var3968, $r25=var380, $r65=var3794, $i2=var303, $r26=var2481, $r27=var2300, $i3=var1549, com.mysql.cj.Messages=var53, $r49=var3772, com.mysql.cj.exceptions.ExceptionInterceptor=var776, $r48=var1140, java.sql.SQLException=var1361, com.mysql.cj.jdbc.exceptions.SQLError=var3964, $r50=var3947}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16