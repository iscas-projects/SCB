(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var802 0)
(declare-sort var12 0)
(declare-sort var3681 0)
(declare-sort var867 0)
(declare-sort var1783 0)
(declare-sort var494 0)
(declare-sort var1288 0)
(declare-sort var2756 0)
(declare-sort var2057 0)
(declare-sort var2625 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var802) var867)
(declare-fun var867_getValue/1633538672 (var867) var1783)
(declare-fun cast-from-var494-to-var1783 (var494) var1783)
(declare-fun s2b/-450202684 (var802 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var802 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3681) var1288)
(declare-fun getJdbcType/389098195 (var1288) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1288) String)
(declare-fun datetimePrecision/-289055874 (var3681) Int)
(declare-fun columnSize/-289055874 (var3681) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3681) Int)
(declare-fun numPrecRadix/-289055874 (var3681) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3681) Int)
(declare-fun var2756_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var802) var2057)
(declare-fun var2952_createSQLException/-1268047242 (String String var2057) var2625)
(declare-const null-var802 var802)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3681 var3681)
(declare-const null-Int Int)
(declare-const var494-SCHEMA var494)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1288-YEAR var1288)
(declare-const var3863 var802) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3863 null-var802)))
(declare-const var910 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var910 null-__Array__Int__Int__)))
(declare-const var3232 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3232 null-__Array__Int__Int__)))
(declare-const var22 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var22 null-String)))
(declare-const var3025 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3025 null-Bool)))
(declare-const var1613 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1613 null-Bool)))
(declare-const var2318 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2318 null-Bool)))
(declare-const var2744 var3681) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2744 null-var3681)))
(declare-const var65 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var65 null-Bool)))
(declare-const var2320 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2320 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var65 1 0) 0)) ; Cond: z0 == 0 
(define-const var2894 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var694 (Array Int (Array Int Int)) var2894) ; Statement: r0 = $r54 
(define-const var321 (Array Int (Array Int Int)) var2894) ; Statement: $r53 = $r54 
(define-const var3988 var867 (databaseTerm/1074764847 var3863)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1392 var1783 (var867_getValue/1633538672 var3988)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var809 var494 var494-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1392 (cast-from-var494-to-var1783 var809))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3909 (Array Int Int) (s2b/-450202684 var3863 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var321!1 (Array Int (Array Int Int)))
(assert (not (= var321!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var321!1 0) var3909)) ; Statement: $r53[0] = $r55 
(define-const var131 var867 (databaseTerm/1074764847 var3863)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var387 var1783 (var867_getValue/1633538672 var131)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3666 var494 var494-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var387 (cast-from-var494-to-var1783 var3666))))) ; Negate: Cond: $r8 != $r7  
(define-const var3878 (Array Int Int) var3232) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var694!1 (Array Int (Array Int Int)))
(assert (not (= var694!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!1 1) var3878)) ; Statement: r0[1] = $r56 
(declare-const var694!2 (Array Int (Array Int Int)))
(assert (not (= var694!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!2 2) var910)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3743 (Array Int Int) (s2b/-450202684 var3863 var22)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var694!3 (Array Int (Array Int Int)))
(assert (not (= var694!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!3 3) var3743)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var827 Int (getColumnType/800489773 var3863 var3025 var1613 var2318 var65)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1645 String (String_valueOf/1240665136 var827)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2042 (Array Int Int) (s2b/-450202684 var3863 var1645)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var694!4 (Array Int (Array Int Int)))
(assert (not (= var694!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!4 4) var2042)) ; Statement: r0[4] = $r13 
(define-const var1152 var1288 (mysqlType/-289055874 var2744)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1021 var1288 var1288-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1152 var1021))) ; Cond: $r16 != $r15 
(define-const var3688 var1288 (mysqlType/-289055874 var2744)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3391 Int (getJdbcType/389098195 var3688)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3307 Int (cast-from-Int-to-Int var3391)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2761 String (Int_toString/-1770815874 var3307)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3873 (Array Int Int) (getBytes/1068683673 var2761)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var694!5 (Array Int (Array Int Int)))
(assert (not (= var694!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!5 5) var3873)) ; Statement: r0[5] = $r58 
(define-const var2702 var1288 (mysqlType/-289055874 var2744)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3334 String (getName/1307715079 var2702)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1478 (Array Int Int) (s2b/-450202684 var3863 var3334)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var694!6 (Array Int (Array Int Int)))
(assert (not (= var694!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!6 6) var1478)) ; Statement: r0[6] = $r61 
(define-const var3195 Int (datetimePrecision/-289055874 var2744)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var3195 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var77 Int (columnSize/-289055874 var2744)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1460 String (toString/483301002 var77)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2715 (Array Int Int) (s2b/-450202684 var3863 var1460)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var694!7 (Array Int (Array Int Int)))
(assert (not (= var694!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!7 7) var2715)) ; Statement: r0[7] = $r63 
(define-const var2887 Int (columnSize/-289055874 var2744)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2887 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var3040 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var694!8 (Array Int (Array Int Int)))
(assert (not (= var694!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!8 8) var3040)) ; Statement: r0[8] = $r64 
(define-const var3923 Int (decimalDigits/-289055874 var2744)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var3923 null-Int))) ; Cond: $r23 != null 
(define-const var1055 Int (decimalDigits/-289055874 var2744)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var661 String (toString/483301002 var1055)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1749 (Array Int Int) (s2b/-450202684 var3863 var661)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var694!9 (Array Int (Array Int Int)))
(assert (not (= var694!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!9 9) var1749)) ; Statement: r0[9] = $r65 
(define-const var2296 Int (numPrecRadix/-289055874 var2744)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2322 String (Int_toString/1350422511 var2296)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1901 (Array Int Int) (s2b/-450202684 var3863 var2322)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var694!10 (Array Int (Array Int Int)))
(assert (not (= var694!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var694!10 10) var1901)) ; Statement: r0[10] = $r27 
(define-const var3534 Int (nullability/-289055874 var2744)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3534 2)) (and (not (= var3534 1)) (and (not (= var3534 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var989 String (var2756_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3981 var2057 (getExceptionInterceptor/-1244810802 var3863)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1547 var2625 (var2952_createSQLException/-1268047242 var989 "S1000" var3981)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var867_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var494-to-var1783=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2756_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2952_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var802=com.mysql.cj.jdbc.DatabaseMetaData, var3863=r1, var910=r9, var3232=r5, var22=r10, var12=null_type, var3025=z1, var1613=z2, var2318=z3, var3681=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2744=r14, var65=z0, var2320=i4, var2894=$r54, var694=r0, var321=$r53, var867=com.mysql.cj.conf.RuntimeProperty, var3988=$r2, var1783=java.lang.Object, var1392=$r4, var494=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var809=$r3, var3909=$r55, var131=$r6, var387=$r8, var3666=$r7, var3878=$r56, var3743=$r11, var827=$i0, var1645=$r12, var2042=$r13, var1288=com.mysql.cj.MysqlType, var1152=$r16, var1021=$r15, var3688=$r17, var3391=$i1, var3307=$s5, var2761=$r57, var3873=$r58, var2702=$r59, var3334=$r60, var1478=$r61, var3195=$r62, var77=$r51, var1460=$r52, var2715=$r63, var2887=$r20, var3040=$r64, var3923=$r23, var1055=$r24, var661=$r25, var1749=$r65, var2296=$i2, var2322=$r26, var1901=$r27, var3534=$i3, var2756=com.mysql.cj.Messages, var989=$r49, var2057=com.mysql.cj.exceptions.ExceptionInterceptor, var3981=$r48, var2625=java.sql.SQLException, var2952=com.mysql.cj.jdbc.exceptions.SQLError, var1547=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var802, r1=var3863, r9=var910, r5=var3232, r10=var22, null_type=var12, z1=var3025, z2=var1613, z3=var2318, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3681, r14=var2744, z0=var65, i4=var2320, $r54=var2894, r0=var694, $r53=var321, com.mysql.cj.conf.RuntimeProperty=var867, $r2=var3988, java.lang.Object=var1783, $r4=var1392, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var494, $r3=var809, $r55=var3909, $r6=var131, $r8=var387, $r7=var3666, $r56=var3878, $r11=var3743, $i0=var827, $r12=var1645, $r13=var2042, com.mysql.cj.MysqlType=var1288, $r16=var1152, $r15=var1021, $r17=var3688, $i1=var3391, $s5=var3307, $r57=var2761, $r58=var3873, $r59=var2702, $r60=var3334, $r61=var1478, $r62=var3195, $r51=var77, $r52=var1460, $r63=var2715, $r20=var2887, $r64=var3040, $r23=var3923, $r24=var1055, $r25=var661, $r65=var1749, $i2=var2296, $r26=var2322, $r27=var1901, $i3=var3534, com.mysql.cj.Messages=var2756, $r49=var989, com.mysql.cj.exceptions.ExceptionInterceptor=var2057, $r48=var3981, java.sql.SQLException=var2625, com.mysql.cj.jdbc.exceptions.SQLError=var2952, $r50=var1547}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16