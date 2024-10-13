(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2667 0)
(declare-sort var725 0)
(declare-sort var1982 0)
(declare-sort var3772 0)
(declare-sort var2478 0)
(declare-sort var2620 0)
(declare-sort var1947 0)
(declare-sort var2283 0)
(declare-sort var431 0)
(declare-sort var2613 0)
(declare-sort var855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2667) var3772)
(declare-fun var3772_getValue/1633538672 (var3772) var2478)
(declare-fun cast-from-var2620-to-var2478 (var2620) var2478)
(declare-fun s2b/-450202684 (var2667 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2667 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1982) var1947)
(declare-fun getJdbcType/389098195 (var1947) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1947) String)
(declare-fun datetimePrecision/-289055874 (var1982) Int)
(declare-fun columnSize/-289055874 (var1982) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var1982) Int)
(declare-fun numPrecRadix/-289055874 (var1982) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1982) Int)
(declare-fun var2283_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2667) var431)
(declare-fun var855_createSQLException/-1268047242 (String String var431) var2613)
(declare-const null-var2667 var2667)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1982 var1982)
(declare-const null-Int Int)
(declare-const var2620-SCHEMA var2620)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1947-YEAR var1947)
(declare-const var1954 var2667) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1954 null-var2667)))
(declare-const var2433 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2433 null-__Array__Int__Int__)))
(declare-const var3202 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3202 null-__Array__Int__Int__)))
(declare-const var2396 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2396 null-String)))
(declare-const var406 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var406 null-Bool)))
(declare-const var901 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var901 null-Bool)))
(declare-const var589 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var589 null-Bool)))
(declare-const var1131 var1982) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1131 null-var1982)))
(declare-const var681 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var681 null-Bool)))
(declare-const var1006 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1006 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var681 1 0) 0)) ; Cond: z0 == 0 
(define-const var1594 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var565 (Array Int (Array Int Int)) var1594) ; Statement: r0 = $r54 
(define-const var358 (Array Int (Array Int Int)) var1594) ; Statement: $r53 = $r54 
(define-const var3421 var3772 (databaseTerm/1074764847 var1954)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1065 var2478 (var3772_getValue/1633538672 var3421)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var113 var2620 var2620-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var1065 (cast-from-var2620-to-var2478 var113)))) ; Cond: $r4 != $r3 
(define-const var2840 (Array Int Int) var3202) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var358!1 (Array Int (Array Int Int)))
(assert (not (= var358!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var358!1 0) var2840)) ; Statement: $r53[0] = $r55 
(define-const var2906 var3772 (databaseTerm/1074764847 var1954)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3927 var2478 (var3772_getValue/1633538672 var2906)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var183 var2620 var2620-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var3927 (cast-from-var2620-to-var2478 var183))))) ; Negate: Cond: $r8 != $r7  
(define-const var2067 (Array Int Int) var3202) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var565!1 (Array Int (Array Int Int)))
(assert (not (= var565!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!1 1) var2067)) ; Statement: r0[1] = $r56 
(declare-const var565!2 (Array Int (Array Int Int)))
(assert (not (= var565!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!2 2) var2433)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3644 (Array Int Int) (s2b/-450202684 var1954 var2396)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var565!3 (Array Int (Array Int Int)))
(assert (not (= var565!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!3 3) var3644)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1494 Int (getColumnType/800489773 var1954 var406 var901 var589 var681)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2163 String (String_valueOf/1240665136 var1494)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3215 (Array Int Int) (s2b/-450202684 var1954 var2163)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var565!4 (Array Int (Array Int Int)))
(assert (not (= var565!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!4 4) var3215)) ; Statement: r0[4] = $r13 
(define-const var2540 var1947 (mysqlType/-289055874 var1131)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var591 var1947 var1947-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2540 var591))) ; Cond: $r16 != $r15 
(define-const var2751 var1947 (mysqlType/-289055874 var1131)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1007 Int (getJdbcType/389098195 var2751)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var597 Int (cast-from-Int-to-Int var1007)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2238 String (Int_toString/-1770815874 var597)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1339 (Array Int Int) (getBytes/1068683673 var2238)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var565!5 (Array Int (Array Int Int)))
(assert (not (= var565!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!5 5) var1339)) ; Statement: r0[5] = $r58 
(define-const var2016 var1947 (mysqlType/-289055874 var1131)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2018 String (getName/1307715079 var2016)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var81 (Array Int Int) (s2b/-450202684 var1954 var2018)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var565!6 (Array Int (Array Int Int)))
(assert (not (= var565!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!6 6) var81)) ; Statement: r0[6] = $r61 
(define-const var388 Int (datetimePrecision/-289055874 var1131)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var388 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var218 Int (columnSize/-289055874 var1131)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2265 String (toString/483301002 var218)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2413 (Array Int Int) (s2b/-450202684 var1954 var2265)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var565!7 (Array Int (Array Int Int)))
(assert (not (= var565!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!7 7) var2413)) ; Statement: r0[7] = $r63 
(define-const var2245 Int (columnSize/-289055874 var1131)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var2245 null-Int))) ; Cond: $r20 != null 
(define-const var746 Int (columnSize/-289055874 var1131)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3562 String (toString/483301002 var746)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1296 (Array Int Int) (s2b/-450202684 var1954 var3562)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var565!8 (Array Int (Array Int Int)))
(assert (not (= var565!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!8 8) var1296)) ; Statement: r0[8] = $r64 
(define-const var452 Int (decimalDigits/-289055874 var1131)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var452 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var659 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var565!9 (Array Int (Array Int Int)))
(assert (not (= var565!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!9 9) var659)) ; Statement: r0[9] = $r65 
(define-const var2722 Int (numPrecRadix/-289055874 var1131)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2566 String (Int_toString/1350422511 var2722)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2813 (Array Int Int) (s2b/-450202684 var1954 var2566)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var565!10 (Array Int (Array Int Int)))
(assert (not (= var565!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var565!10 10) var2813)) ; Statement: r0[10] = $r27 
(define-const var970 Int (nullability/-289055874 var1131)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var970 2)) (and (not (= var970 1)) (and (not (= var970 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var991 String (var2283_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2756 var431 (getExceptionInterceptor/-1244810802 var1954)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var944 var2613 (var855_createSQLException/-1268047242 var991 "S1000" var2756)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3772_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2620-to-var2478=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2283_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var855_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2667=com.mysql.cj.jdbc.DatabaseMetaData, var1954=r1, var2433=r9, var3202=r5, var2396=r10, var725=null_type, var406=z1, var901=z2, var589=z3, var1982=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1131=r14, var681=z0, var1006=i4, var1594=$r54, var565=r0, var358=$r53, var3772=com.mysql.cj.conf.RuntimeProperty, var3421=$r2, var2478=java.lang.Object, var1065=$r4, var2620=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var113=$r3, var2840=$r55, var2906=$r6, var3927=$r8, var183=$r7, var2067=$r56, var3644=$r11, var1494=$i0, var2163=$r12, var3215=$r13, var1947=com.mysql.cj.MysqlType, var2540=$r16, var591=$r15, var2751=$r17, var1007=$i1, var597=$s5, var2238=$r57, var1339=$r58, var2016=$r59, var2018=$r60, var81=$r61, var388=$r62, var218=$r51, var2265=$r52, var2413=$r63, var2245=$r20, var746=$r21, var3562=$r22, var1296=$r64, var452=$r23, var659=$r65, var2722=$i2, var2566=$r26, var2813=$r27, var970=$i3, var2283=com.mysql.cj.Messages, var991=$r49, var431=com.mysql.cj.exceptions.ExceptionInterceptor, var2756=$r48, var2613=java.sql.SQLException, var855=com.mysql.cj.jdbc.exceptions.SQLError, var944=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2667, r1=var1954, r9=var2433, r5=var3202, r10=var2396, null_type=var725, z1=var406, z2=var901, z3=var589, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1982, r14=var1131, z0=var681, i4=var1006, $r54=var1594, r0=var565, $r53=var358, com.mysql.cj.conf.RuntimeProperty=var3772, $r2=var3421, java.lang.Object=var2478, $r4=var1065, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2620, $r3=var113, $r55=var2840, $r6=var2906, $r8=var3927, $r7=var183, $r56=var2067, $r11=var3644, $i0=var1494, $r12=var2163, $r13=var3215, com.mysql.cj.MysqlType=var1947, $r16=var2540, $r15=var591, $r17=var2751, $i1=var1007, $s5=var597, $r57=var2238, $r58=var1339, $r59=var2016, $r60=var2018, $r61=var81, $r62=var388, $r51=var218, $r52=var2265, $r63=var2413, $r20=var2245, $r21=var746, $r22=var3562, $r64=var1296, $r23=var452, $r65=var659, $i2=var2722, $r26=var2566, $r27=var2813, $i3=var970, com.mysql.cj.Messages=var2283, $r49=var991, com.mysql.cj.exceptions.ExceptionInterceptor=var431, $r48=var2756, java.sql.SQLException=var2613, com.mysql.cj.jdbc.exceptions.SQLError=var855, $r50=var944}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16