(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1680 0)
(declare-sort var1668 0)
(declare-sort var2576 0)
(declare-sort var3762 0)
(declare-sort var871 0)
(declare-sort var2544 0)
(declare-sort var2765 0)
(declare-sort var3240 0)
(declare-sort var188 0)
(declare-sort var2681 0)
(declare-sort var2401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1680) var3762)
(declare-fun var3762_getValue/1633538672 (var3762) var871)
(declare-fun cast-from-var2544-to-var871 (var2544) var871)
(declare-fun s2b/-450202684 (var1680 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1680 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2576) var2765)
(declare-fun getJdbcType/389098195 (var2765) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2765) String)
(declare-fun datetimePrecision/-289055874 (var2576) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var2576) Int)
(declare-fun decimalDigits/-289055874 (var2576) Int)
(declare-fun numPrecRadix/-289055874 (var2576) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2576) Int)
(declare-fun var3240_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1680) var188)
(declare-fun var2401_createSQLException/-1268047242 (String String var188) var2681)
(declare-const null-var1680 var1680)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2576 var2576)
(declare-const null-Int Int)
(declare-const var2544-SCHEMA var2544)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2765-YEAR var2765)
(declare-const var423 var1680) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var423 null-var1680)))
(declare-const var505 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var505 null-__Array__Int__Int__)))
(declare-const var55 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var55 null-__Array__Int__Int__)))
(declare-const var439 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var439 null-String)))
(declare-const var1406 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1406 null-Bool)))
(declare-const var191 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var191 null-Bool)))
(declare-const var3631 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3631 null-Bool)))
(declare-const var3672 var2576) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3672 null-var2576)))
(declare-const var2989 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2989 null-Bool)))
(declare-const var1206 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1206 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var2989 1 0) 0)) ; Cond: z0 == 0 
(define-const var644 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2858 (Array Int (Array Int Int)) var644) ; Statement: r0 = $r54 
(define-const var46 (Array Int (Array Int Int)) var644) ; Statement: $r53 = $r54 
(define-const var983 var3762 (databaseTerm/1074764847 var423)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1907 var871 (var3762_getValue/1633538672 var983)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2310 var2544 var2544-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var1907 (cast-from-var2544-to-var871 var2310)))) ; Cond: $r4 != $r3 
(define-const var2278 (Array Int Int) var55) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var46!1 (Array Int (Array Int Int)))
(assert (not (= var46!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var46!1 0) var2278)) ; Statement: $r53[0] = $r55 
(define-const var2126 var3762 (databaseTerm/1074764847 var423)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2979 var871 (var3762_getValue/1633538672 var2126)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1119 var2544 var2544-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2979 (cast-from-var2544-to-var871 var1119)))) ; Cond: $r8 != $r7 
(define-const var1670 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var2858!1 (Array Int (Array Int Int)))
(assert (not (= var2858!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!1 1) var1670)) ; Statement: r0[1] = $r56 
(declare-const var2858!2 (Array Int (Array Int Int)))
(assert (not (= var2858!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!2 2) var505)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2513 (Array Int Int) (s2b/-450202684 var423 var439)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2858!3 (Array Int (Array Int Int)))
(assert (not (= var2858!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!3 3) var2513)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3445 Int (getColumnType/800489773 var423 var1406 var191 var3631 var2989)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2006 String (String_valueOf/1240665136 var3445)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3786 (Array Int Int) (s2b/-450202684 var423 var2006)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2858!4 (Array Int (Array Int Int)))
(assert (not (= var2858!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!4 4) var3786)) ; Statement: r0[4] = $r13 
(define-const var2553 var2765 (mysqlType/-289055874 var3672)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3356 var2765 var2765-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2553 var3356))) ; Cond: $r16 != $r15 
(define-const var1228 var2765 (mysqlType/-289055874 var3672)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var941 Int (getJdbcType/389098195 var1228)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1832 Int (cast-from-Int-to-Int var941)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1898 String (Int_toString/-1770815874 var1832)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3804 (Array Int Int) (getBytes/1068683673 var1898)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2858!5 (Array Int (Array Int Int)))
(assert (not (= var2858!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!5 5) var3804)) ; Statement: r0[5] = $r58 
(define-const var1622 var2765 (mysqlType/-289055874 var3672)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2545 String (getName/1307715079 var1622)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3059 (Array Int Int) (s2b/-450202684 var423 var2545)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2858!6 (Array Int (Array Int Int)))
(assert (not (= var2858!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!6 6) var3059)) ; Statement: r0[6] = $r61 
(define-const var897 Int (datetimePrecision/-289055874 var3672)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var897 null-Int))) ; Cond: $r62 != null 
(define-const var2085 Int (datetimePrecision/-289055874 var3672)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3230 String (toString/483301002 var2085)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var662 (Array Int Int) (s2b/-450202684 var423 var3230)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var2858!7 (Array Int (Array Int Int)))
(assert (not (= var2858!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!7 7) var662)) ; Statement: r0[7] = $r63 
(define-const var3713 Int (columnSize/-289055874 var3672)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3713 null-Int))) ; Cond: $r20 != null 
(define-const var3479 Int (columnSize/-289055874 var3672)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var616 String (toString/483301002 var3479)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3142 (Array Int Int) (s2b/-450202684 var423 var616)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var2858!8 (Array Int (Array Int Int)))
(assert (not (= var2858!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!8 8) var3142)) ; Statement: r0[8] = $r64 
(define-const var1879 Int (decimalDigits/-289055874 var3672)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var1879 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var1709 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2858!9 (Array Int (Array Int Int)))
(assert (not (= var2858!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!9 9) var1709)) ; Statement: r0[9] = $r65 
(define-const var722 Int (numPrecRadix/-289055874 var3672)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2325 String (Int_toString/1350422511 var722)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2567 (Array Int Int) (s2b/-450202684 var423 var2325)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2858!10 (Array Int (Array Int Int)))
(assert (not (= var2858!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2858!10 10) var2567)) ; Statement: r0[10] = $r27 
(define-const var3638 Int (nullability/-289055874 var3672)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3638 2)) (and (not (= var3638 1)) (and (not (= var3638 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var728 String (var3240_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var223 var188 (getExceptionInterceptor/-1244810802 var423)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2633 var2681 (var2401_createSQLException/-1268047242 var728 "S1000" var223)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3762_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2544-to-var871=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3240_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2401_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1680=com.mysql.cj.jdbc.DatabaseMetaData, var423=r1, var505=r9, var55=r5, var439=r10, var1668=null_type, var1406=z1, var191=z2, var3631=z3, var2576=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3672=r14, var2989=z0, var1206=i4, var644=$r54, var2858=r0, var46=$r53, var3762=com.mysql.cj.conf.RuntimeProperty, var983=$r2, var871=java.lang.Object, var1907=$r4, var2544=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2310=$r3, var2278=$r55, var2126=$r6, var2979=$r8, var1119=$r7, var1670=$r56, var2513=$r11, var3445=$i0, var2006=$r12, var3786=$r13, var2765=com.mysql.cj.MysqlType, var2553=$r16, var3356=$r15, var1228=$r17, var941=$i1, var1832=$s5, var1898=$r57, var3804=$r58, var1622=$r59, var2545=$r60, var3059=$r61, var897=$r62, var2085=$r18, var3230=$r19, var662=$r63, var3713=$r20, var3479=$r21, var616=$r22, var3142=$r64, var1879=$r23, var1709=$r65, var722=$i2, var2325=$r26, var2567=$r27, var3638=$i3, var3240=com.mysql.cj.Messages, var728=$r49, var188=com.mysql.cj.exceptions.ExceptionInterceptor, var223=$r48, var2681=java.sql.SQLException, var2401=com.mysql.cj.jdbc.exceptions.SQLError, var2633=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1680, r1=var423, r9=var505, r5=var55, r10=var439, null_type=var1668, z1=var1406, z2=var191, z3=var3631, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2576, r14=var3672, z0=var2989, i4=var1206, $r54=var644, r0=var2858, $r53=var46, com.mysql.cj.conf.RuntimeProperty=var3762, $r2=var983, java.lang.Object=var871, $r4=var1907, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2544, $r3=var2310, $r55=var2278, $r6=var2126, $r8=var2979, $r7=var1119, $r56=var1670, $r11=var2513, $i0=var3445, $r12=var2006, $r13=var3786, com.mysql.cj.MysqlType=var2765, $r16=var2553, $r15=var3356, $r17=var1228, $i1=var941, $s5=var1832, $r57=var1898, $r58=var3804, $r59=var1622, $r60=var2545, $r61=var3059, $r62=var897, $r18=var2085, $r19=var3230, $r63=var662, $r20=var3713, $r21=var3479, $r22=var616, $r64=var3142, $r23=var1879, $r65=var1709, $i2=var722, $r26=var2325, $r27=var2567, $i3=var3638, com.mysql.cj.Messages=var3240, $r49=var728, com.mysql.cj.exceptions.ExceptionInterceptor=var188, $r48=var223, java.sql.SQLException=var2681, com.mysql.cj.jdbc.exceptions.SQLError=var2401, $r50=var2633}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16