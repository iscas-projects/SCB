(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2681 0)
(declare-sort var3183 0)
(declare-sort var785 0)
(declare-sort var25 0)
(declare-sort var2639 0)
(declare-sort var2478 0)
(declare-sort var2543 0)
(declare-sort var1545 0)
(declare-sort var2318 0)
(declare-sort var2515 0)
(declare-sort var2151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2681) var25)
(declare-fun var25_getValue/1633538672 (var25) var2639)
(declare-fun cast-from-var2478-to-var2639 (var2478) var2639)
(declare-fun s2b/-450202684 (var2681 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2681 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var785) var2543)
(declare-fun getJdbcType/389098195 (var2543) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2543) String)
(declare-fun datetimePrecision/-289055874 (var785) Int)
(declare-fun columnSize/-289055874 (var785) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var785) Int)
(declare-fun numPrecRadix/-289055874 (var785) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var785) Int)
(declare-fun var1545_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2681) var2318)
(declare-fun var2151_createSQLException/-1268047242 (String String var2318) var2515)
(declare-const null-var2681 var2681)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var785 var785)
(declare-const null-Int Int)
(declare-const var2478-SCHEMA var2478)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2543-YEAR var2543)
(declare-const var183 var2681) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var183 null-var2681)))
(declare-const var3845 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3845 null-__Array__Int__Int__)))
(declare-const var3460 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3460 null-__Array__Int__Int__)))
(declare-const var1643 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1643 null-String)))
(declare-const var92 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var92 null-Bool)))
(declare-const var3619 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3619 null-Bool)))
(declare-const var386 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var386 null-Bool)))
(declare-const var2159 var785) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2159 null-var785)))
(declare-const var674 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var674 null-Bool)))
(declare-const var744 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var744 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var674 1 0) 0)) ; Cond: z0 == 0 
(define-const var2544 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var3506 (Array Int (Array Int Int)) var2544) ; Statement: r0 = $r54 
(define-const var2620 (Array Int (Array Int Int)) var2544) ; Statement: $r53 = $r54 
(define-const var266 var25 (databaseTerm/1074764847 var183)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3970 var2639 (var25_getValue/1633538672 var266)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2492 var2478 var2478-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3970 (cast-from-var2478-to-var2639 var2492)))) ; Cond: $r4 != $r3 
(define-const var1255 (Array Int Int) var3460) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var2620!1 (Array Int (Array Int Int)))
(assert (not (= var2620!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2620!1 0) var1255)) ; Statement: $r53[0] = $r55 
(define-const var390 var25 (databaseTerm/1074764847 var183)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3789 var2639 (var25_getValue/1633538672 var390)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var204 var2478 var2478-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var3789 (cast-from-var2478-to-var2639 var204)))) ; Cond: $r8 != $r7 
(define-const var2142 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var3506!1 (Array Int (Array Int Int)))
(assert (not (= var3506!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!1 1) var2142)) ; Statement: r0[1] = $r56 
(declare-const var3506!2 (Array Int (Array Int Int)))
(assert (not (= var3506!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!2 2) var3845)) ; Statement: r0[2] = r9 
(assert true)
(define-const var65 (Array Int Int) (s2b/-450202684 var183 var1643)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3506!3 (Array Int (Array Int Int)))
(assert (not (= var3506!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!3 3) var65)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2692 Int (getColumnType/800489773 var183 var92 var3619 var386 var674)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3837 String (String_valueOf/1240665136 var2692)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2064 (Array Int Int) (s2b/-450202684 var183 var3837)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3506!4 (Array Int (Array Int Int)))
(assert (not (= var3506!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!4 4) var2064)) ; Statement: r0[4] = $r13 
(define-const var2101 var2543 (mysqlType/-289055874 var2159)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2249 var2543 var2543-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2101 var2249))) ; Cond: $r16 != $r15 
(define-const var3777 var2543 (mysqlType/-289055874 var2159)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1335 Int (getJdbcType/389098195 var3777)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var675 Int (cast-from-Int-to-Int var1335)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3880 String (Int_toString/-1770815874 var675)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var356 (Array Int Int) (getBytes/1068683673 var3880)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3506!5 (Array Int (Array Int Int)))
(assert (not (= var3506!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!5 5) var356)) ; Statement: r0[5] = $r58 
(define-const var1276 var2543 (mysqlType/-289055874 var2159)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var299 String (getName/1307715079 var1276)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1113 (Array Int Int) (s2b/-450202684 var183 var299)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3506!6 (Array Int (Array Int Int)))
(assert (not (= var3506!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!6 6) var1113)) ; Statement: r0[6] = $r61 
(define-const var2157 Int (datetimePrecision/-289055874 var2159)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2157 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var1433 Int (columnSize/-289055874 var2159)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1688 String (toString/483301002 var1433)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2724 (Array Int Int) (s2b/-450202684 var183 var1688)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3506!7 (Array Int (Array Int Int)))
(assert (not (= var3506!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!7 7) var2724)) ; Statement: r0[7] = $r63 
(define-const var2056 Int (columnSize/-289055874 var2159)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var2056 null-Int))) ; Cond: $r20 != null 
(define-const var3329 Int (columnSize/-289055874 var2159)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1201 String (toString/483301002 var3329)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2298 (Array Int Int) (s2b/-450202684 var183 var1201)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var3506!8 (Array Int (Array Int Int)))
(assert (not (= var3506!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!8 8) var2298)) ; Statement: r0[8] = $r64 
(define-const var3989 Int (decimalDigits/-289055874 var2159)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var3989 null-Int))) ; Cond: $r23 != null 
(define-const var2262 Int (decimalDigits/-289055874 var2159)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var872 String (toString/483301002 var2262)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var637 (Array Int Int) (s2b/-450202684 var183 var872)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3506!9 (Array Int (Array Int Int)))
(assert (not (= var3506!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!9 9) var637)) ; Statement: r0[9] = $r65 
(define-const var1360 Int (numPrecRadix/-289055874 var2159)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2758 String (Int_toString/1350422511 var1360)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var810 (Array Int Int) (s2b/-450202684 var183 var2758)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3506!10 (Array Int (Array Int Int)))
(assert (not (= var3506!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3506!10 10) var810)) ; Statement: r0[10] = $r27 
(define-const var1435 Int (nullability/-289055874 var2159)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1435 2)) (and (not (= var1435 1)) (and (not (= var1435 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3449 String (var1545_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3848 var2318 (getExceptionInterceptor/-1244810802 var183)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3427 var2515 (var2151_createSQLException/-1268047242 var3449 "S1000" var3848)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var25_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2478-to-var2639=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1545_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2151_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2681=com.mysql.cj.jdbc.DatabaseMetaData, var183=r1, var3845=r9, var3460=r5, var1643=r10, var3183=null_type, var92=z1, var3619=z2, var386=z3, var785=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2159=r14, var674=z0, var744=i4, var2544=$r54, var3506=r0, var2620=$r53, var25=com.mysql.cj.conf.RuntimeProperty, var266=$r2, var2639=java.lang.Object, var3970=$r4, var2478=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2492=$r3, var1255=$r55, var390=$r6, var3789=$r8, var204=$r7, var2142=$r56, var65=$r11, var2692=$i0, var3837=$r12, var2064=$r13, var2543=com.mysql.cj.MysqlType, var2101=$r16, var2249=$r15, var3777=$r17, var1335=$i1, var675=$s5, var3880=$r57, var356=$r58, var1276=$r59, var299=$r60, var1113=$r61, var2157=$r62, var1433=$r51, var1688=$r52, var2724=$r63, var2056=$r20, var3329=$r21, var1201=$r22, var2298=$r64, var3989=$r23, var2262=$r24, var872=$r25, var637=$r65, var1360=$i2, var2758=$r26, var810=$r27, var1435=$i3, var1545=com.mysql.cj.Messages, var3449=$r49, var2318=com.mysql.cj.exceptions.ExceptionInterceptor, var3848=$r48, var2515=java.sql.SQLException, var2151=com.mysql.cj.jdbc.exceptions.SQLError, var3427=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2681, r1=var183, r9=var3845, r5=var3460, r10=var1643, null_type=var3183, z1=var92, z2=var3619, z3=var386, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var785, r14=var2159, z0=var674, i4=var744, $r54=var2544, r0=var3506, $r53=var2620, com.mysql.cj.conf.RuntimeProperty=var25, $r2=var266, java.lang.Object=var2639, $r4=var3970, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2478, $r3=var2492, $r55=var1255, $r6=var390, $r8=var3789, $r7=var204, $r56=var2142, $r11=var65, $i0=var2692, $r12=var3837, $r13=var2064, com.mysql.cj.MysqlType=var2543, $r16=var2101, $r15=var2249, $r17=var3777, $i1=var1335, $s5=var675, $r57=var3880, $r58=var356, $r59=var1276, $r60=var299, $r61=var1113, $r62=var2157, $r51=var1433, $r52=var1688, $r63=var2724, $r20=var2056, $r21=var3329, $r22=var1201, $r64=var2298, $r23=var3989, $r24=var2262, $r25=var872, $r65=var637, $i2=var1360, $r26=var2758, $r27=var810, $i3=var1435, com.mysql.cj.Messages=var1545, $r49=var3449, com.mysql.cj.exceptions.ExceptionInterceptor=var2318, $r48=var3848, java.sql.SQLException=var2515, com.mysql.cj.jdbc.exceptions.SQLError=var2151, $r50=var3427}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16