(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3256 0)
(declare-sort var2027 0)
(declare-sort var3522 0)
(declare-sort var147 0)
(declare-sort var525 0)
(declare-sort var1701 0)
(declare-sort var377 0)
(declare-sort var2049 0)
(declare-sort var1980 0)
(declare-sort var2338 0)
(declare-sort var3822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3256) var147)
(declare-fun var147_getValue/1633538672 (var147) var525)
(declare-fun cast-from-var1701-to-var525 (var1701) var525)
(declare-fun s2b/-450202684 (var3256 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3256 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3522) var377)
(declare-fun getJdbcType/389098195 (var377) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var377) String)
(declare-fun datetimePrecision/-289055874 (var3522) Int)
(declare-fun columnSize/-289055874 (var3522) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3522) Int)
(declare-fun numPrecRadix/-289055874 (var3522) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3522) Int)
(declare-fun var2049_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3256) var1980)
(declare-fun var3822_createSQLException/-1268047242 (String String var1980) var2338)
(declare-const null-var3256 var3256)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3522 var3522)
(declare-const null-Int Int)
(declare-const var1701-SCHEMA var1701)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var377-YEAR var377)
(declare-const var3291 var3256) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3291 null-var3256)))
(declare-const var2830 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2830 null-__Array__Int__Int__)))
(declare-const var3119 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3119 null-__Array__Int__Int__)))
(declare-const var2043 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2043 null-String)))
(declare-const var2109 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2109 null-Bool)))
(declare-const var747 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var747 null-Bool)))
(declare-const var2358 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2358 null-Bool)))
(declare-const var3474 var3522) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3474 null-var3522)))
(declare-const var1146 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1146 null-Bool)))
(declare-const var3229 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3229 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1146 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3462 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var2346 (Array Int (Array Int Int)) var3462) ; Statement: r0 = $r54 
(define-const var1683 (Array Int (Array Int Int)) var3462) ; Statement: $r53 = $r54 
(define-const var2453 var147 (databaseTerm/1074764847 var3291)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3150 var525 (var147_getValue/1633538672 var2453)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var324 var1701 var1701-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3150 (cast-from-var1701-to-var525 var324)))) ; Cond: $r4 != $r3 
(define-const var1125 (Array Int Int) var3119) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1683!1 (Array Int (Array Int Int)))
(assert (not (= var1683!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1683!1 0) var1125)) ; Statement: $r53[0] = $r55 
(define-const var3473 var147 (databaseTerm/1074764847 var3291)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3080 var525 (var147_getValue/1633538672 var3473)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2615 var1701 var1701-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var3080 (cast-from-var1701-to-var525 var2615))))) ; Negate: Cond: $r8 != $r7  
(define-const var2132 (Array Int Int) var3119) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2346!1 (Array Int (Array Int Int)))
(assert (not (= var2346!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!1 1) var2132)) ; Statement: r0[1] = $r56 
(declare-const var2346!2 (Array Int (Array Int Int)))
(assert (not (= var2346!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!2 2) var2830)) ; Statement: r0[2] = r9 
(assert true)
(define-const var440 (Array Int Int) (s2b/-450202684 var3291 var2043)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2346!3 (Array Int (Array Int Int)))
(assert (not (= var2346!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!3 3) var440)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3915 Int (getColumnType/800489773 var3291 var2109 var747 var2358 var1146)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3416 String (String_valueOf/1240665136 var3915)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1133 (Array Int Int) (s2b/-450202684 var3291 var3416)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2346!4 (Array Int (Array Int Int)))
(assert (not (= var2346!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!4 4) var1133)) ; Statement: r0[4] = $r13 
(define-const var606 var377 (mysqlType/-289055874 var3474)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2029 var377 var377-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var606 var2029))) ; Cond: $r16 != $r15 
(define-const var3963 var377 (mysqlType/-289055874 var3474)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3069 Int (getJdbcType/389098195 var3963)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1367 Int (cast-from-Int-to-Int var3069)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var395 String (Int_toString/-1770815874 var1367)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1746 (Array Int Int) (getBytes/1068683673 var395)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2346!5 (Array Int (Array Int Int)))
(assert (not (= var2346!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!5 5) var1746)) ; Statement: r0[5] = $r58 
(define-const var562 var377 (mysqlType/-289055874 var3474)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3581 String (getName/1307715079 var562)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2444 (Array Int Int) (s2b/-450202684 var3291 var3581)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2346!6 (Array Int (Array Int Int)))
(assert (not (= var2346!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!6 6) var2444)) ; Statement: r0[6] = $r61 
(define-const var561 Int (datetimePrecision/-289055874 var3474)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var561 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var986 Int (columnSize/-289055874 var3474)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3088 String (toString/483301002 var986)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2768 (Array Int Int) (s2b/-450202684 var3291 var3088)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var2346!7 (Array Int (Array Int Int)))
(assert (not (= var2346!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!7 7) var2768)) ; Statement: r0[7] = $r63 
(define-const var1793 Int (columnSize/-289055874 var3474)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1793 null-Int))) ; Cond: $r20 != null 
(define-const var2983 Int (columnSize/-289055874 var3474)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1000 String (toString/483301002 var2983)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var655 (Array Int Int) (s2b/-450202684 var3291 var1000)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var2346!8 (Array Int (Array Int Int)))
(assert (not (= var2346!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!8 8) var655)) ; Statement: r0[8] = $r64 
(define-const var1714 Int (decimalDigits/-289055874 var3474)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var1714 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3780 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2346!9 (Array Int (Array Int Int)))
(assert (not (= var2346!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!9 9) var3780)) ; Statement: r0[9] = $r65 
(define-const var940 Int (numPrecRadix/-289055874 var3474)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3320 String (Int_toString/1350422511 var940)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var481 (Array Int Int) (s2b/-450202684 var3291 var3320)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2346!10 (Array Int (Array Int Int)))
(assert (not (= var2346!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2346!10 10) var481)) ; Statement: r0[10] = $r27 
(define-const var1473 Int (nullability/-289055874 var3474)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1473 2)) (and (not (= var1473 1)) (and (not (= var1473 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2487 String (var2049_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1111 var1980 (getExceptionInterceptor/-1244810802 var3291)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3730 var2338 (var3822_createSQLException/-1268047242 var2487 "S1000" var1111)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var147_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1701-to-var525=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2049_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3822_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3256=com.mysql.cj.jdbc.DatabaseMetaData, var3291=r1, var2830=r9, var3119=r5, var2043=r10, var2027=null_type, var2109=z1, var747=z2, var2358=z3, var3522=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3474=r14, var1146=z0, var3229=i4, var3462=$r54, var2346=r0, var1683=$r53, var147=com.mysql.cj.conf.RuntimeProperty, var2453=$r2, var525=java.lang.Object, var3150=$r4, var1701=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var324=$r3, var1125=$r55, var3473=$r6, var3080=$r8, var2615=$r7, var2132=$r56, var440=$r11, var3915=$i0, var3416=$r12, var1133=$r13, var377=com.mysql.cj.MysqlType, var606=$r16, var2029=$r15, var3963=$r17, var3069=$i1, var1367=$s5, var395=$r57, var1746=$r58, var562=$r59, var3581=$r60, var2444=$r61, var561=$r62, var986=$r51, var3088=$r52, var2768=$r63, var1793=$r20, var2983=$r21, var1000=$r22, var655=$r64, var1714=$r23, var3780=$r65, var940=$i2, var3320=$r26, var481=$r27, var1473=$i3, var2049=com.mysql.cj.Messages, var2487=$r49, var1980=com.mysql.cj.exceptions.ExceptionInterceptor, var1111=$r48, var2338=java.sql.SQLException, var3822=com.mysql.cj.jdbc.exceptions.SQLError, var3730=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3256, r1=var3291, r9=var2830, r5=var3119, r10=var2043, null_type=var2027, z1=var2109, z2=var747, z3=var2358, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3522, r14=var3474, z0=var1146, i4=var3229, $r54=var3462, r0=var2346, $r53=var1683, com.mysql.cj.conf.RuntimeProperty=var147, $r2=var2453, java.lang.Object=var525, $r4=var3150, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1701, $r3=var324, $r55=var1125, $r6=var3473, $r8=var3080, $r7=var2615, $r56=var2132, $r11=var440, $i0=var3915, $r12=var3416, $r13=var1133, com.mysql.cj.MysqlType=var377, $r16=var606, $r15=var2029, $r17=var3963, $i1=var3069, $s5=var1367, $r57=var395, $r58=var1746, $r59=var562, $r60=var3581, $r61=var2444, $r62=var561, $r51=var986, $r52=var3088, $r63=var2768, $r20=var1793, $r21=var2983, $r22=var1000, $r64=var655, $r23=var1714, $r65=var3780, $i2=var940, $r26=var3320, $r27=var481, $i3=var1473, com.mysql.cj.Messages=var2049, $r49=var2487, com.mysql.cj.exceptions.ExceptionInterceptor=var1980, $r48=var1111, java.sql.SQLException=var2338, com.mysql.cj.jdbc.exceptions.SQLError=var3822, $r50=var3730}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16