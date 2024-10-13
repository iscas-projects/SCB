(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3599 0)
(declare-sort var2516 0)
(declare-sort var3544 0)
(declare-sort var622 0)
(declare-sort var1318 0)
(declare-sort var1375 0)
(declare-sort var926 0)
(declare-sort var3028 0)
(declare-sort var2466 0)
(declare-sort var2307 0)
(declare-sort var2344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3599) var622)
(declare-fun var622_getValue/1633538672 (var622) var1318)
(declare-fun cast-from-var1375-to-var1318 (var1375) var1318)
(declare-fun s2b/-450202684 (var3599 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3599 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3544) var926)
(declare-fun getJdbcType/389098195 (var926) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var926) String)
(declare-fun datetimePrecision/-289055874 (var3544) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3544) Int)
(declare-fun decimalDigits/-289055874 (var3544) Int)
(declare-fun numPrecRadix/-289055874 (var3544) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3544) Int)
(declare-fun var3028_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3599) var2466)
(declare-fun var2344_createSQLException/-1268047242 (String String var2466) var2307)
(declare-const null-var3599 var3599)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3544 var3544)
(declare-const null-Int Int)
(declare-const var1375-SCHEMA var1375)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var926-YEAR var926)
(declare-const var338 var3599) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var338 null-var3599)))
(declare-const var2691 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2691 null-__Array__Int__Int__)))
(declare-const var2282 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2282 null-__Array__Int__Int__)))
(declare-const var3899 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3899 null-String)))
(declare-const var3340 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3340 null-Bool)))
(declare-const var562 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var562 null-Bool)))
(declare-const var1793 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1793 null-Bool)))
(declare-const var1727 var3544) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1727 null-var3544)))
(declare-const var1272 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1272 null-Bool)))
(declare-const var464 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var464 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1272 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2224 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var804 (Array Int (Array Int Int)) var2224) ; Statement: r0 = $r54 
(define-const var173 (Array Int (Array Int Int)) var2224) ; Statement: $r53 = $r54 
(define-const var2904 var622 (databaseTerm/1074764847 var338)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3488 var1318 (var622_getValue/1633538672 var2904)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2393 var1375 var1375-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3488 (cast-from-var1375-to-var1318 var2393))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3242 (Array Int Int) (s2b/-450202684 var338 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var173!1 (Array Int (Array Int Int)))
(assert (not (= var173!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var173!1 0) var3242)) ; Statement: $r53[0] = $r55 
(define-const var3576 var622 (databaseTerm/1074764847 var338)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2299 var1318 (var622_getValue/1633538672 var3576)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3332 var1375 var1375-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2299 (cast-from-var1375-to-var1318 var3332))))) ; Negate: Cond: $r8 != $r7  
(define-const var515 (Array Int Int) var2282) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var804!1 (Array Int (Array Int Int)))
(assert (not (= var804!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!1 1) var515)) ; Statement: r0[1] = $r56 
(declare-const var804!2 (Array Int (Array Int Int)))
(assert (not (= var804!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!2 2) var2691)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3253 (Array Int Int) (s2b/-450202684 var338 var3899)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var804!3 (Array Int (Array Int Int)))
(assert (not (= var804!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!3 3) var3253)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2614 Int (getColumnType/800489773 var338 var3340 var562 var1793 var1272)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var198 String (String_valueOf/1240665136 var2614)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3104 (Array Int Int) (s2b/-450202684 var338 var198)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var804!4 (Array Int (Array Int Int)))
(assert (not (= var804!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!4 4) var3104)) ; Statement: r0[4] = $r13 
(define-const var3369 var926 (mysqlType/-289055874 var1727)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3103 var926 var926-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3369 var3103))) ; Cond: $r16 != $r15 
(define-const var2524 var926 (mysqlType/-289055874 var1727)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2216 Int (getJdbcType/389098195 var2524)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1783 Int (cast-from-Int-to-Int var2216)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1650 String (Int_toString/-1770815874 var1783)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2222 (Array Int Int) (getBytes/1068683673 var1650)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var804!5 (Array Int (Array Int Int)))
(assert (not (= var804!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!5 5) var2222)) ; Statement: r0[5] = $r58 
(define-const var1446 var926 (mysqlType/-289055874 var1727)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3187 String (getName/1307715079 var1446)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2322 (Array Int Int) (s2b/-450202684 var338 var3187)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var804!6 (Array Int (Array Int Int)))
(assert (not (= var804!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!6 6) var2322)) ; Statement: r0[6] = $r61 
(define-const var2583 Int (datetimePrecision/-289055874 var1727)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2583 null-Int))) ; Cond: $r62 != null 
(define-const var2105 Int (datetimePrecision/-289055874 var1727)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1441 String (toString/483301002 var2105)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2239 (Array Int Int) (s2b/-450202684 var338 var1441)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var804!7 (Array Int (Array Int Int)))
(assert (not (= var804!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!7 7) var2239)) ; Statement: r0[7] = $r63 
(define-const var1857 Int (columnSize/-289055874 var1727)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var1857 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1290 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var804!8 (Array Int (Array Int Int)))
(assert (not (= var804!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!8 8) var1290)) ; Statement: r0[8] = $r64 
(define-const var1569 Int (decimalDigits/-289055874 var1727)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var1569 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var902 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var804!9 (Array Int (Array Int Int)))
(assert (not (= var804!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!9 9) var902)) ; Statement: r0[9] = $r65 
(define-const var1735 Int (numPrecRadix/-289055874 var1727)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3794 String (Int_toString/1350422511 var1735)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2513 (Array Int Int) (s2b/-450202684 var338 var3794)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var804!10 (Array Int (Array Int Int)))
(assert (not (= var804!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var804!10 10) var2513)) ; Statement: r0[10] = $r27 
(define-const var1399 Int (nullability/-289055874 var1727)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1399 2)) (and (not (= var1399 1)) (and (not (= var1399 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var798 String (var3028_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var96 var2466 (getExceptionInterceptor/-1244810802 var338)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2836 var2307 (var2344_createSQLException/-1268047242 var798 "S1000" var96)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var622_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1375-to-var1318=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3028_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2344_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3599=com.mysql.cj.jdbc.DatabaseMetaData, var338=r1, var2691=r9, var2282=r5, var3899=r10, var2516=null_type, var3340=z1, var562=z2, var1793=z3, var3544=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1727=r14, var1272=z0, var464=i4, var2224=$r54, var804=r0, var173=$r53, var622=com.mysql.cj.conf.RuntimeProperty, var2904=$r2, var1318=java.lang.Object, var3488=$r4, var1375=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2393=$r3, var3242=$r55, var3576=$r6, var2299=$r8, var3332=$r7, var515=$r56, var3253=$r11, var2614=$i0, var198=$r12, var3104=$r13, var926=com.mysql.cj.MysqlType, var3369=$r16, var3103=$r15, var2524=$r17, var2216=$i1, var1783=$s5, var1650=$r57, var2222=$r58, var1446=$r59, var3187=$r60, var2322=$r61, var2583=$r62, var2105=$r18, var1441=$r19, var2239=$r63, var1857=$r20, var1290=$r64, var1569=$r23, var902=$r65, var1735=$i2, var3794=$r26, var2513=$r27, var1399=$i3, var3028=com.mysql.cj.Messages, var798=$r49, var2466=com.mysql.cj.exceptions.ExceptionInterceptor, var96=$r48, var2307=java.sql.SQLException, var2344=com.mysql.cj.jdbc.exceptions.SQLError, var2836=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3599, r1=var338, r9=var2691, r5=var2282, r10=var3899, null_type=var2516, z1=var3340, z2=var562, z3=var1793, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3544, r14=var1727, z0=var1272, i4=var464, $r54=var2224, r0=var804, $r53=var173, com.mysql.cj.conf.RuntimeProperty=var622, $r2=var2904, java.lang.Object=var1318, $r4=var3488, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1375, $r3=var2393, $r55=var3242, $r6=var3576, $r8=var2299, $r7=var3332, $r56=var515, $r11=var3253, $i0=var2614, $r12=var198, $r13=var3104, com.mysql.cj.MysqlType=var926, $r16=var3369, $r15=var3103, $r17=var2524, $i1=var2216, $s5=var1783, $r57=var1650, $r58=var2222, $r59=var1446, $r60=var3187, $r61=var2322, $r62=var2583, $r18=var2105, $r19=var1441, $r63=var2239, $r20=var1857, $r64=var1290, $r23=var1569, $r65=var902, $i2=var1735, $r26=var3794, $r27=var2513, $i3=var1399, com.mysql.cj.Messages=var3028, $r49=var798, com.mysql.cj.exceptions.ExceptionInterceptor=var2466, $r48=var96, java.sql.SQLException=var2307, com.mysql.cj.jdbc.exceptions.SQLError=var2344, $r50=var2836}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16