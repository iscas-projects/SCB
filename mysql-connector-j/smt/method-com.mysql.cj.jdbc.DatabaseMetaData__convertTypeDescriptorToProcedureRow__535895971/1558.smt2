(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3653 0)
(declare-sort var2898 0)
(declare-sort var1028 0)
(declare-sort var2046 0)
(declare-sort var3453 0)
(declare-sort var1417 0)
(declare-sort var1986 0)
(declare-sort var3948 0)
(declare-sort var3856 0)
(declare-sort var2732 0)
(declare-sort var460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3653) var2046)
(declare-fun var2046_getValue/1633538672 (var2046) var3453)
(declare-fun cast-from-var1417-to-var3453 (var1417) var3453)
(declare-fun s2b/-450202684 (var3653 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3653 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1028) var1986)
(declare-fun getJdbcType/389098195 (var1986) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1986) String)
(declare-fun datetimePrecision/-289055874 (var1028) Int)
(declare-fun columnSize/-289055874 (var1028) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var1028) Int)
(declare-fun numPrecRadix/-289055874 (var1028) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1028) Int)
(declare-fun var3948_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3653) var3856)
(declare-fun var460_createSQLException/-1268047242 (String String var3856) var2732)
(declare-const null-var3653 var3653)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1028 var1028)
(declare-const null-Int Int)
(declare-const var1417-SCHEMA var1417)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1986-YEAR var1986)
(declare-const var1091 var3653) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1091 null-var3653)))
(declare-const var1788 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1788 null-__Array__Int__Int__)))
(declare-const var2743 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2743 null-__Array__Int__Int__)))
(declare-const var1931 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1931 null-String)))
(declare-const var702 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var702 null-Bool)))
(declare-const var1519 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1519 null-Bool)))
(declare-const var3219 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3219 null-Bool)))
(declare-const var1241 var1028) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1241 null-var1028)))
(declare-const var800 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var800 null-Bool)))
(declare-const var2870 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2870 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var800 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var27 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3362 (Array Int (Array Int Int)) var27) ; Statement: r0 = $r54 
(define-const var2633 (Array Int (Array Int Int)) var27) ; Statement: $r53 = $r54 
(define-const var684 var2046 (databaseTerm/1074764847 var1091)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2954 var3453 (var2046_getValue/1633538672 var684)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2303 var1417 var1417-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var2954 (cast-from-var1417-to-var3453 var2303))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1031 (Array Int Int) (s2b/-450202684 var1091 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2633!1 (Array Int (Array Int Int)))
(assert (not (= var2633!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2633!1 0) var1031)) ; Statement: $r53[0] = $r55 
(define-const var3501 var2046 (databaseTerm/1074764847 var1091)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1636 var3453 (var2046_getValue/1633538672 var3501)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3418 var1417 var1417-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1636 (cast-from-var1417-to-var3453 var3418))))) ; Negate: Cond: $r8 != $r7  
(define-const var2021 (Array Int Int) var2743) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3362!1 (Array Int (Array Int Int)))
(assert (not (= var3362!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!1 1) var2021)) ; Statement: r0[1] = $r56 
(declare-const var3362!2 (Array Int (Array Int Int)))
(assert (not (= var3362!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!2 2) var1788)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1879 (Array Int Int) (s2b/-450202684 var1091 var1931)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3362!3 (Array Int (Array Int Int)))
(assert (not (= var3362!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!3 3) var1879)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1603 Int (getColumnType/800489773 var1091 var702 var1519 var3219 var800)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var700 String (String_valueOf/1240665136 var1603)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2840 (Array Int Int) (s2b/-450202684 var1091 var700)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3362!4 (Array Int (Array Int Int)))
(assert (not (= var3362!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!4 4) var2840)) ; Statement: r0[4] = $r13 
(define-const var1716 var1986 (mysqlType/-289055874 var1241)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3415 var1986 var1986-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1716 var3415))) ; Cond: $r16 != $r15 
(define-const var3094 var1986 (mysqlType/-289055874 var1241)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var848 Int (getJdbcType/389098195 var3094)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2144 Int (cast-from-Int-to-Int var848)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var985 String (Int_toString/-1770815874 var2144)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3223 (Array Int Int) (getBytes/1068683673 var985)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3362!5 (Array Int (Array Int Int)))
(assert (not (= var3362!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!5 5) var3223)) ; Statement: r0[5] = $r58 
(define-const var1610 var1986 (mysqlType/-289055874 var1241)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3642 String (getName/1307715079 var1610)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2430 (Array Int Int) (s2b/-450202684 var1091 var3642)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3362!6 (Array Int (Array Int Int)))
(assert (not (= var3362!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!6 6) var2430)) ; Statement: r0[6] = $r61 
(define-const var2085 Int (datetimePrecision/-289055874 var1241)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2085 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3919 Int (columnSize/-289055874 var1241)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1003 String (toString/483301002 var3919)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var574 (Array Int Int) (s2b/-450202684 var1091 var1003)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3362!7 (Array Int (Array Int Int)))
(assert (not (= var3362!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!7 7) var574)) ; Statement: r0[7] = $r63 
(define-const var3831 Int (columnSize/-289055874 var1241)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3831 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var3726 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3362!8 (Array Int (Array Int Int)))
(assert (not (= var3362!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!8 8) var3726)) ; Statement: r0[8] = $r64 
(define-const var478 Int (decimalDigits/-289055874 var1241)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var478 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var1489 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var3362!9 (Array Int (Array Int Int)))
(assert (not (= var3362!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!9 9) var1489)) ; Statement: r0[9] = $r65 
(define-const var2390 Int (numPrecRadix/-289055874 var1241)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1550 String (Int_toString/1350422511 var2390)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2139 (Array Int Int) (s2b/-450202684 var1091 var1550)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3362!10 (Array Int (Array Int Int)))
(assert (not (= var3362!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3362!10 10) var2139)) ; Statement: r0[10] = $r27 
(define-const var3610 Int (nullability/-289055874 var1241)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3610 2)) (and (not (= var3610 1)) (and (not (= var3610 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3017 String (var3948_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1759 var3856 (getExceptionInterceptor/-1244810802 var1091)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2148 var2732 (var460_createSQLException/-1268047242 var3017 "S1000" var1759)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2046_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1417-to-var3453=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3948_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var460_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3653=com.mysql.cj.jdbc.DatabaseMetaData, var1091=r1, var1788=r9, var2743=r5, var1931=r10, var2898=null_type, var702=z1, var1519=z2, var3219=z3, var1028=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1241=r14, var800=z0, var2870=i4, var27=$r54, var3362=r0, var2633=$r53, var2046=com.mysql.cj.conf.RuntimeProperty, var684=$r2, var3453=java.lang.Object, var2954=$r4, var1417=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2303=$r3, var1031=$r55, var3501=$r6, var1636=$r8, var3418=$r7, var2021=$r56, var1879=$r11, var1603=$i0, var700=$r12, var2840=$r13, var1986=com.mysql.cj.MysqlType, var1716=$r16, var3415=$r15, var3094=$r17, var848=$i1, var2144=$s5, var985=$r57, var3223=$r58, var1610=$r59, var3642=$r60, var2430=$r61, var2085=$r62, var3919=$r51, var1003=$r52, var574=$r63, var3831=$r20, var3726=$r64, var478=$r23, var1489=$r65, var2390=$i2, var1550=$r26, var2139=$r27, var3610=$i3, var3948=com.mysql.cj.Messages, var3017=$r49, var3856=com.mysql.cj.exceptions.ExceptionInterceptor, var1759=$r48, var2732=java.sql.SQLException, var460=com.mysql.cj.jdbc.exceptions.SQLError, var2148=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3653, r1=var1091, r9=var1788, r5=var2743, r10=var1931, null_type=var2898, z1=var702, z2=var1519, z3=var3219, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1028, r14=var1241, z0=var800, i4=var2870, $r54=var27, r0=var3362, $r53=var2633, com.mysql.cj.conf.RuntimeProperty=var2046, $r2=var684, java.lang.Object=var3453, $r4=var2954, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1417, $r3=var2303, $r55=var1031, $r6=var3501, $r8=var1636, $r7=var3418, $r56=var2021, $r11=var1879, $i0=var1603, $r12=var700, $r13=var2840, com.mysql.cj.MysqlType=var1986, $r16=var1716, $r15=var3415, $r17=var3094, $i1=var848, $s5=var2144, $r57=var985, $r58=var3223, $r59=var1610, $r60=var3642, $r61=var2430, $r62=var2085, $r51=var3919, $r52=var1003, $r63=var574, $r20=var3831, $r64=var3726, $r23=var478, $r65=var1489, $i2=var2390, $r26=var1550, $r27=var2139, $i3=var3610, com.mysql.cj.Messages=var3948, $r49=var3017, com.mysql.cj.exceptions.ExceptionInterceptor=var3856, $r48=var1759, java.sql.SQLException=var2732, com.mysql.cj.jdbc.exceptions.SQLError=var460, $r50=var2148}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16