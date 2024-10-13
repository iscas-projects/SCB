(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3563 0)
(declare-sort var3361 0)
(declare-sort var420 0)
(declare-sort var114 0)
(declare-sort var872 0)
(declare-sort var1718 0)
(declare-sort var1856 0)
(declare-sort var2974 0)
(declare-sort var3809 0)
(declare-sort var1711 0)
(declare-sort var478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3563) var114)
(declare-fun var114_getValue/1633538672 (var114) var872)
(declare-fun cast-from-var1718-to-var872 (var1718) var872)
(declare-fun s2b/-450202684 (var3563 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3563 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var420) var1856)
(declare-fun getJdbcType/389098195 (var1856) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1856) String)
(declare-fun datetimePrecision/-289055874 (var420) Int)
(declare-fun columnSize/-289055874 (var420) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var420) Int)
(declare-fun numPrecRadix/-289055874 (var420) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var420) Int)
(declare-fun var2974_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3563) var3809)
(declare-fun var478_createSQLException/-1268047242 (String String var3809) var1711)
(declare-const null-var3563 var3563)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var420 var420)
(declare-const null-Int Int)
(declare-const var1718-SCHEMA var1718)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1856-YEAR var1856)
(declare-const var3632 var3563) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3632 null-var3563)))
(declare-const var2959 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2959 null-__Array__Int__Int__)))
(declare-const var3853 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3853 null-__Array__Int__Int__)))
(declare-const var3768 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3768 null-String)))
(declare-const var2105 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2105 null-Bool)))
(declare-const var1029 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1029 null-Bool)))
(declare-const var2933 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2933 null-Bool)))
(declare-const var57 var420) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var57 null-var420)))
(declare-const var2987 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2987 null-Bool)))
(declare-const var2407 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2407 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var2987 1 0) 0)) ; Cond: z0 == 0 
(define-const var2482 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var308 (Array Int (Array Int Int)) var2482) ; Statement: r0 = $r54 
(define-const var111 (Array Int (Array Int Int)) var2482) ; Statement: $r53 = $r54 
(define-const var2098 var114 (databaseTerm/1074764847 var3632)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2689 var872 (var114_getValue/1633538672 var2098)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var794 var1718 var1718-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var2689 (cast-from-var1718-to-var872 var794)))) ; Cond: $r4 != $r3 
(define-const var3989 (Array Int Int) var3853) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var111!1 (Array Int (Array Int Int)))
(assert (not (= var111!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var111!1 0) var3989)) ; Statement: $r53[0] = $r55 
(define-const var2303 var114 (databaseTerm/1074764847 var3632)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2838 var872 (var114_getValue/1633538672 var2303)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var370 var1718 var1718-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2838 (cast-from-var1718-to-var872 var370)))) ; Cond: $r8 != $r7 
(define-const var2028 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var308!1 (Array Int (Array Int Int)))
(assert (not (= var308!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!1 1) var2028)) ; Statement: r0[1] = $r56 
(declare-const var308!2 (Array Int (Array Int Int)))
(assert (not (= var308!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!2 2) var2959)) ; Statement: r0[2] = r9 
(assert true)
(define-const var479 (Array Int Int) (s2b/-450202684 var3632 var3768)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var308!3 (Array Int (Array Int Int)))
(assert (not (= var308!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!3 3) var479)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var32 Int (getColumnType/800489773 var3632 var2105 var1029 var2933 var2987)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var989 String (String_valueOf/1240665136 var32)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var257 (Array Int Int) (s2b/-450202684 var3632 var989)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var308!4 (Array Int (Array Int Int)))
(assert (not (= var308!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!4 4) var257)) ; Statement: r0[4] = $r13 
(define-const var656 var1856 (mysqlType/-289055874 var57)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2708 var1856 var1856-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var656 var2708))) ; Cond: $r16 != $r15 
(define-const var3101 var1856 (mysqlType/-289055874 var57)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2217 Int (getJdbcType/389098195 var3101)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2295 Int (cast-from-Int-to-Int var2217)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1302 String (Int_toString/-1770815874 var2295)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2619 (Array Int Int) (getBytes/1068683673 var1302)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var308!5 (Array Int (Array Int Int)))
(assert (not (= var308!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!5 5) var2619)) ; Statement: r0[5] = $r58 
(define-const var2001 var1856 (mysqlType/-289055874 var57)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1055 String (getName/1307715079 var2001)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var543 (Array Int Int) (s2b/-450202684 var3632 var1055)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var308!6 (Array Int (Array Int Int)))
(assert (not (= var308!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!6 6) var543)) ; Statement: r0[6] = $r61 
(define-const var2142 Int (datetimePrecision/-289055874 var57)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2142 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3293 Int (columnSize/-289055874 var57)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var844 String (toString/483301002 var3293)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3534 (Array Int Int) (s2b/-450202684 var3632 var844)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var308!7 (Array Int (Array Int Int)))
(assert (not (= var308!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!7 7) var3534)) ; Statement: r0[7] = $r63 
(define-const var389 Int (columnSize/-289055874 var57)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var389 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var2785 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var308!8 (Array Int (Array Int Int)))
(assert (not (= var308!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!8 8) var2785)) ; Statement: r0[8] = $r64 
(define-const var653 Int (decimalDigits/-289055874 var57)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var653 null-Int))) ; Cond: $r23 != null 
(define-const var3281 Int (decimalDigits/-289055874 var57)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var3799 String (toString/483301002 var3281)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2833 (Array Int Int) (s2b/-450202684 var3632 var3799)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var308!9 (Array Int (Array Int Int)))
(assert (not (= var308!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!9 9) var2833)) ; Statement: r0[9] = $r65 
(define-const var1889 Int (numPrecRadix/-289055874 var57)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3348 String (Int_toString/1350422511 var1889)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3473 (Array Int Int) (s2b/-450202684 var3632 var3348)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var308!10 (Array Int (Array Int Int)))
(assert (not (= var308!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var308!10 10) var3473)) ; Statement: r0[10] = $r27 
(define-const var3499 Int (nullability/-289055874 var57)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3499 2)) (and (not (= var3499 1)) (and (not (= var3499 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3290 String (var2974_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2318 var3809 (getExceptionInterceptor/-1244810802 var3632)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2759 var1711 (var478_createSQLException/-1268047242 var3290 "S1000" var2318)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var114_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1718-to-var872=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2974_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var478_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3563=com.mysql.cj.jdbc.DatabaseMetaData, var3632=r1, var2959=r9, var3853=r5, var3768=r10, var3361=null_type, var2105=z1, var1029=z2, var2933=z3, var420=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var57=r14, var2987=z0, var2407=i4, var2482=$r54, var308=r0, var111=$r53, var114=com.mysql.cj.conf.RuntimeProperty, var2098=$r2, var872=java.lang.Object, var2689=$r4, var1718=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var794=$r3, var3989=$r55, var2303=$r6, var2838=$r8, var370=$r7, var2028=$r56, var479=$r11, var32=$i0, var989=$r12, var257=$r13, var1856=com.mysql.cj.MysqlType, var656=$r16, var2708=$r15, var3101=$r17, var2217=$i1, var2295=$s5, var1302=$r57, var2619=$r58, var2001=$r59, var1055=$r60, var543=$r61, var2142=$r62, var3293=$r51, var844=$r52, var3534=$r63, var389=$r20, var2785=$r64, var653=$r23, var3281=$r24, var3799=$r25, var2833=$r65, var1889=$i2, var3348=$r26, var3473=$r27, var3499=$i3, var2974=com.mysql.cj.Messages, var3290=$r49, var3809=com.mysql.cj.exceptions.ExceptionInterceptor, var2318=$r48, var1711=java.sql.SQLException, var478=com.mysql.cj.jdbc.exceptions.SQLError, var2759=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3563, r1=var3632, r9=var2959, r5=var3853, r10=var3768, null_type=var3361, z1=var2105, z2=var1029, z3=var2933, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var420, r14=var57, z0=var2987, i4=var2407, $r54=var2482, r0=var308, $r53=var111, com.mysql.cj.conf.RuntimeProperty=var114, $r2=var2098, java.lang.Object=var872, $r4=var2689, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1718, $r3=var794, $r55=var3989, $r6=var2303, $r8=var2838, $r7=var370, $r56=var2028, $r11=var479, $i0=var32, $r12=var989, $r13=var257, com.mysql.cj.MysqlType=var1856, $r16=var656, $r15=var2708, $r17=var3101, $i1=var2217, $s5=var2295, $r57=var1302, $r58=var2619, $r59=var2001, $r60=var1055, $r61=var543, $r62=var2142, $r51=var3293, $r52=var844, $r63=var3534, $r20=var389, $r64=var2785, $r23=var653, $r24=var3281, $r25=var3799, $r65=var2833, $i2=var1889, $r26=var3348, $r27=var3473, $i3=var3499, com.mysql.cj.Messages=var2974, $r49=var3290, com.mysql.cj.exceptions.ExceptionInterceptor=var3809, $r48=var2318, java.sql.SQLException=var1711, com.mysql.cj.jdbc.exceptions.SQLError=var478, $r50=var2759}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16