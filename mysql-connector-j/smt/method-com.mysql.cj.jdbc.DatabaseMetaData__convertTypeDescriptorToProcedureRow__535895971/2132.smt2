(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3967 0)
(declare-sort var490 0)
(declare-sort var2473 0)
(declare-sort var2105 0)
(declare-sort var3672 0)
(declare-sort var2629 0)
(declare-sort var651 0)
(declare-sort var394 0)
(declare-sort var36 0)
(declare-sort var580 0)
(declare-sort var976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3967) var2105)
(declare-fun var2105_getValue/1633538672 (var2105) var3672)
(declare-fun cast-from-var2629-to-var3672 (var2629) var3672)
(declare-fun s2b/-450202684 (var3967 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3967 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2473) var651)
(declare-fun getJdbcType/389098195 (var651) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var651) String)
(declare-fun datetimePrecision/-289055874 (var2473) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var2473) Int)
(declare-fun decimalDigits/-289055874 (var2473) Int)
(declare-fun numPrecRadix/-289055874 (var2473) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2473) Int)
(declare-fun var394_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3967) var36)
(declare-fun var976_createSQLException/-1268047242 (String String var36) var580)
(declare-const null-var3967 var3967)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2473 var2473)
(declare-const null-Int Int)
(declare-const var2629-SCHEMA var2629)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var651-YEAR var651)
(declare-const var230 var3967) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var230 null-var3967)))
(declare-const var1114 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1114 null-__Array__Int__Int__)))
(declare-const var3424 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3424 null-__Array__Int__Int__)))
(declare-const var104 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var104 null-String)))
(declare-const var2463 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2463 null-Bool)))
(declare-const var1924 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1924 null-Bool)))
(declare-const var3722 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3722 null-Bool)))
(declare-const var2702 var2473) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2702 null-var2473)))
(declare-const var1336 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1336 null-Bool)))
(declare-const var1947 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1947 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1336 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3204 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3700 (Array Int (Array Int Int)) var3204) ; Statement: r0 = $r54 
(define-const var1750 (Array Int (Array Int Int)) var3204) ; Statement: $r53 = $r54 
(define-const var1635 var2105 (databaseTerm/1074764847 var230)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2811 var3672 (var2105_getValue/1633538672 var1635)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2971 var2629 var2629-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var2811 (cast-from-var2629-to-var3672 var2971)))) ; Cond: $r4 != $r3 
(define-const var1926 (Array Int Int) var3424) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1750!1 (Array Int (Array Int Int)))
(assert (not (= var1750!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1750!1 0) var1926)) ; Statement: $r53[0] = $r55 
(define-const var2723 var2105 (databaseTerm/1074764847 var230)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2667 var3672 (var2105_getValue/1633538672 var2723)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1547 var2629 var2629-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2667 (cast-from-var2629-to-var3672 var1547)))) ; Cond: $r8 != $r7 
(define-const var3096 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var3700!1 (Array Int (Array Int Int)))
(assert (not (= var3700!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!1 1) var3096)) ; Statement: r0[1] = $r56 
(declare-const var3700!2 (Array Int (Array Int Int)))
(assert (not (= var3700!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!2 2) var1114)) ; Statement: r0[2] = r9 
(assert true)
(define-const var265 (Array Int Int) (s2b/-450202684 var230 var104)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3700!3 (Array Int (Array Int Int)))
(assert (not (= var3700!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!3 3) var265)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1323 Int (getColumnType/800489773 var230 var2463 var1924 var3722 var1336)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2991 String (String_valueOf/1240665136 var1323)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2420 (Array Int Int) (s2b/-450202684 var230 var2991)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3700!4 (Array Int (Array Int Int)))
(assert (not (= var3700!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!4 4) var2420)) ; Statement: r0[4] = $r13 
(define-const var783 var651 (mysqlType/-289055874 var2702)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3861 var651 var651-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var783 var3861))) ; Cond: $r16 != $r15 
(define-const var1560 var651 (mysqlType/-289055874 var2702)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2617 Int (getJdbcType/389098195 var1560)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1080 Int (cast-from-Int-to-Int var2617)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3620 String (Int_toString/-1770815874 var1080)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var480 (Array Int Int) (getBytes/1068683673 var3620)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3700!5 (Array Int (Array Int Int)))
(assert (not (= var3700!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!5 5) var480)) ; Statement: r0[5] = $r58 
(define-const var1818 var651 (mysqlType/-289055874 var2702)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1824 String (getName/1307715079 var1818)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3539 (Array Int Int) (s2b/-450202684 var230 var1824)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3700!6 (Array Int (Array Int Int)))
(assert (not (= var3700!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!6 6) var3539)) ; Statement: r0[6] = $r61 
(define-const var3071 Int (datetimePrecision/-289055874 var2702)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3071 null-Int))) ; Cond: $r62 != null 
(define-const var436 Int (datetimePrecision/-289055874 var2702)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3950 String (toString/483301002 var436)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2008 (Array Int Int) (s2b/-450202684 var230 var3950)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var3700!7 (Array Int (Array Int Int)))
(assert (not (= var3700!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!7 7) var2008)) ; Statement: r0[7] = $r63 
(define-const var2479 Int (columnSize/-289055874 var2702)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var2479 null-Int))) ; Cond: $r20 != null 
(define-const var831 Int (columnSize/-289055874 var2702)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var410 String (toString/483301002 var831)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1742 (Array Int Int) (s2b/-450202684 var230 var410)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var3700!8 (Array Int (Array Int Int)))
(assert (not (= var3700!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!8 8) var1742)) ; Statement: r0[8] = $r64 
(define-const var520 Int (decimalDigits/-289055874 var2702)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var520 null-Int))) ; Cond: $r23 != null 
(define-const var2144 Int (decimalDigits/-289055874 var2702)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1478 String (toString/483301002 var2144)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var95 (Array Int Int) (s2b/-450202684 var230 var1478)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3700!9 (Array Int (Array Int Int)))
(assert (not (= var3700!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!9 9) var95)) ; Statement: r0[9] = $r65 
(define-const var955 Int (numPrecRadix/-289055874 var2702)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1982 String (Int_toString/1350422511 var955)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1045 (Array Int Int) (s2b/-450202684 var230 var1982)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3700!10 (Array Int (Array Int Int)))
(assert (not (= var3700!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3700!10 10) var1045)) ; Statement: r0[10] = $r27 
(define-const var2175 Int (nullability/-289055874 var2702)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2175 2)) (and (not (= var2175 1)) (and (not (= var2175 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2684 String (var394_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3715 var36 (getExceptionInterceptor/-1244810802 var230)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var839 var580 (var976_createSQLException/-1268047242 var2684 "S1000" var3715)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2105_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2629-to-var3672=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var394_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var976_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3967=com.mysql.cj.jdbc.DatabaseMetaData, var230=r1, var1114=r9, var3424=r5, var104=r10, var490=null_type, var2463=z1, var1924=z2, var3722=z3, var2473=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2702=r14, var1336=z0, var1947=i4, var3204=$r54, var3700=r0, var1750=$r53, var2105=com.mysql.cj.conf.RuntimeProperty, var1635=$r2, var3672=java.lang.Object, var2811=$r4, var2629=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2971=$r3, var1926=$r55, var2723=$r6, var2667=$r8, var1547=$r7, var3096=$r56, var265=$r11, var1323=$i0, var2991=$r12, var2420=$r13, var651=com.mysql.cj.MysqlType, var783=$r16, var3861=$r15, var1560=$r17, var2617=$i1, var1080=$s5, var3620=$r57, var480=$r58, var1818=$r59, var1824=$r60, var3539=$r61, var3071=$r62, var436=$r18, var3950=$r19, var2008=$r63, var2479=$r20, var831=$r21, var410=$r22, var1742=$r64, var520=$r23, var2144=$r24, var1478=$r25, var95=$r65, var955=$i2, var1982=$r26, var1045=$r27, var2175=$i3, var394=com.mysql.cj.Messages, var2684=$r49, var36=com.mysql.cj.exceptions.ExceptionInterceptor, var3715=$r48, var580=java.sql.SQLException, var976=com.mysql.cj.jdbc.exceptions.SQLError, var839=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3967, r1=var230, r9=var1114, r5=var3424, r10=var104, null_type=var490, z1=var2463, z2=var1924, z3=var3722, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2473, r14=var2702, z0=var1336, i4=var1947, $r54=var3204, r0=var3700, $r53=var1750, com.mysql.cj.conf.RuntimeProperty=var2105, $r2=var1635, java.lang.Object=var3672, $r4=var2811, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2629, $r3=var2971, $r55=var1926, $r6=var2723, $r8=var2667, $r7=var1547, $r56=var3096, $r11=var265, $i0=var1323, $r12=var2991, $r13=var2420, com.mysql.cj.MysqlType=var651, $r16=var783, $r15=var3861, $r17=var1560, $i1=var2617, $s5=var1080, $r57=var3620, $r58=var480, $r59=var1818, $r60=var1824, $r61=var3539, $r62=var3071, $r18=var436, $r19=var3950, $r63=var2008, $r20=var2479, $r21=var831, $r22=var410, $r64=var1742, $r23=var520, $r24=var2144, $r25=var1478, $r65=var95, $i2=var955, $r26=var1982, $r27=var1045, $i3=var2175, com.mysql.cj.Messages=var394, $r49=var2684, com.mysql.cj.exceptions.ExceptionInterceptor=var36, $r48=var3715, java.sql.SQLException=var580, com.mysql.cj.jdbc.exceptions.SQLError=var976, $r50=var839}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16