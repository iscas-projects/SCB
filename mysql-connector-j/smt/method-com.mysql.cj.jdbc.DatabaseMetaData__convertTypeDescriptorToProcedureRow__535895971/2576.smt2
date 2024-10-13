(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3583 0)
(declare-sort var1589 0)
(declare-sort var2256 0)
(declare-sort var3304 0)
(declare-sort var951 0)
(declare-sort var81 0)
(declare-sort var2478 0)
(declare-sort var1493 0)
(declare-sort var146 0)
(declare-sort var3800 0)
(declare-sort var403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3583) var3304)
(declare-fun var3304_getValue/1633538672 (var3304) var951)
(declare-fun cast-from-var81-to-var951 (var81) var951)
(declare-fun s2b/-450202684 (var3583 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3583 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2256) var2478)
(declare-fun getJdbcType/389098195 (var2478) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2478) String)
(declare-fun datetimePrecision/-289055874 (var2256) Int)
(declare-fun columnSize/-289055874 (var2256) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var2256) Int)
(declare-fun numPrecRadix/-289055874 (var2256) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2256) Int)
(declare-fun var1493_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3583) var146)
(declare-fun var403_createSQLException/-1268047242 (String String var146) var3800)
(declare-const null-var3583 var3583)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2256 var2256)
(declare-const null-Int Int)
(declare-const var81-SCHEMA var81)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2478-YEAR var2478)
(declare-const var3319 var3583) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3319 null-var3583)))
(declare-const var1995 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1995 null-__Array__Int__Int__)))
(declare-const var2630 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2630 null-__Array__Int__Int__)))
(declare-const var1001 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1001 null-String)))
(declare-const var3499 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3499 null-Bool)))
(declare-const var3425 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3425 null-Bool)))
(declare-const var2906 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2906 null-Bool)))
(declare-const var226 var2256) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var226 null-var2256)))
(declare-const var1969 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1969 null-Bool)))
(declare-const var1518 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1518 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1969 1 0) 0)) ; Cond: z0 == 0 
(define-const var3482 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var787 (Array Int (Array Int Int)) var3482) ; Statement: r0 = $r54 
(define-const var1384 (Array Int (Array Int Int)) var3482) ; Statement: $r53 = $r54 
(define-const var2245 var3304 (databaseTerm/1074764847 var3319)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2974 var951 (var3304_getValue/1633538672 var2245)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1471 var81 var81-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var2974 (cast-from-var81-to-var951 var1471)))) ; Cond: $r4 != $r3 
(define-const var2313 (Array Int Int) var2630) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1384!1 (Array Int (Array Int Int)))
(assert (not (= var1384!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1384!1 0) var2313)) ; Statement: $r53[0] = $r55 
(define-const var2164 var3304 (databaseTerm/1074764847 var3319)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2277 var951 (var3304_getValue/1633538672 var2164)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2901 var81 var81-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2277 (cast-from-var81-to-var951 var2901)))) ; Cond: $r8 != $r7 
(define-const var1550 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var787!1 (Array Int (Array Int Int)))
(assert (not (= var787!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!1 1) var1550)) ; Statement: r0[1] = $r56 
(declare-const var787!2 (Array Int (Array Int Int)))
(assert (not (= var787!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!2 2) var1995)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1864 (Array Int Int) (s2b/-450202684 var3319 var1001)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var787!3 (Array Int (Array Int Int)))
(assert (not (= var787!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!3 3) var1864)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var645 Int (getColumnType/800489773 var3319 var3499 var3425 var2906 var1969)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var977 String (String_valueOf/1240665136 var645)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1925 (Array Int Int) (s2b/-450202684 var3319 var977)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var787!4 (Array Int (Array Int Int)))
(assert (not (= var787!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!4 4) var1925)) ; Statement: r0[4] = $r13 
(define-const var2719 var2478 (mysqlType/-289055874 var226)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3426 var2478 var2478-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2719 var3426))) ; Cond: $r16 != $r15 
(define-const var1752 var2478 (mysqlType/-289055874 var226)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3753 Int (getJdbcType/389098195 var1752)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1434 Int (cast-from-Int-to-Int var3753)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2782 String (Int_toString/-1770815874 var1434)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2732 (Array Int Int) (getBytes/1068683673 var2782)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var787!5 (Array Int (Array Int Int)))
(assert (not (= var787!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!5 5) var2732)) ; Statement: r0[5] = $r58 
(define-const var3747 var2478 (mysqlType/-289055874 var226)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3591 String (getName/1307715079 var3747)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1717 (Array Int Int) (s2b/-450202684 var3319 var3591)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var787!6 (Array Int (Array Int Int)))
(assert (not (= var787!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!6 6) var1717)) ; Statement: r0[6] = $r61 
(define-const var2388 Int (datetimePrecision/-289055874 var226)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2388 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var439 Int (columnSize/-289055874 var226)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3225 String (toString/483301002 var439)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1858 (Array Int Int) (s2b/-450202684 var3319 var3225)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var787!7 (Array Int (Array Int Int)))
(assert (not (= var787!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!7 7) var1858)) ; Statement: r0[7] = $r63 
(define-const var1260 Int (columnSize/-289055874 var226)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1260 null-Int))) ; Cond: $r20 != null 
(define-const var3838 Int (columnSize/-289055874 var226)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1418 String (toString/483301002 var3838)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var669 (Array Int Int) (s2b/-450202684 var3319 var1418)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var787!8 (Array Int (Array Int Int)))
(assert (not (= var787!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!8 8) var669)) ; Statement: r0[8] = $r64 
(define-const var3102 Int (decimalDigits/-289055874 var226)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3102 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var2916 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var787!9 (Array Int (Array Int Int)))
(assert (not (= var787!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!9 9) var2916)) ; Statement: r0[9] = $r65 
(define-const var1778 Int (numPrecRadix/-289055874 var226)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var15 String (Int_toString/1350422511 var1778)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2998 (Array Int Int) (s2b/-450202684 var3319 var15)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var787!10 (Array Int (Array Int Int)))
(assert (not (= var787!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var787!10 10) var2998)) ; Statement: r0[10] = $r27 
(define-const var2303 Int (nullability/-289055874 var226)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2303 2)) (and (not (= var2303 1)) (and (not (= var2303 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var1181 String (var1493_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var391 var146 (getExceptionInterceptor/-1244810802 var3319)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2984 var3800 (var403_createSQLException/-1268047242 var1181 "S1000" var391)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3304_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var81-to-var951=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1493_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var403_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3583=com.mysql.cj.jdbc.DatabaseMetaData, var3319=r1, var1995=r9, var2630=r5, var1001=r10, var1589=null_type, var3499=z1, var3425=z2, var2906=z3, var2256=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var226=r14, var1969=z0, var1518=i4, var3482=$r54, var787=r0, var1384=$r53, var3304=com.mysql.cj.conf.RuntimeProperty, var2245=$r2, var951=java.lang.Object, var2974=$r4, var81=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1471=$r3, var2313=$r55, var2164=$r6, var2277=$r8, var2901=$r7, var1550=$r56, var1864=$r11, var645=$i0, var977=$r12, var1925=$r13, var2478=com.mysql.cj.MysqlType, var2719=$r16, var3426=$r15, var1752=$r17, var3753=$i1, var1434=$s5, var2782=$r57, var2732=$r58, var3747=$r59, var3591=$r60, var1717=$r61, var2388=$r62, var439=$r51, var3225=$r52, var1858=$r63, var1260=$r20, var3838=$r21, var1418=$r22, var669=$r64, var3102=$r23, var2916=$r65, var1778=$i2, var15=$r26, var2998=$r27, var2303=$i3, var1493=com.mysql.cj.Messages, var1181=$r49, var146=com.mysql.cj.exceptions.ExceptionInterceptor, var391=$r48, var3800=java.sql.SQLException, var403=com.mysql.cj.jdbc.exceptions.SQLError, var2984=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3583, r1=var3319, r9=var1995, r5=var2630, r10=var1001, null_type=var1589, z1=var3499, z2=var3425, z3=var2906, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2256, r14=var226, z0=var1969, i4=var1518, $r54=var3482, r0=var787, $r53=var1384, com.mysql.cj.conf.RuntimeProperty=var3304, $r2=var2245, java.lang.Object=var951, $r4=var2974, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var81, $r3=var1471, $r55=var2313, $r6=var2164, $r8=var2277, $r7=var2901, $r56=var1550, $r11=var1864, $i0=var645, $r12=var977, $r13=var1925, com.mysql.cj.MysqlType=var2478, $r16=var2719, $r15=var3426, $r17=var1752, $i1=var3753, $s5=var1434, $r57=var2782, $r58=var2732, $r59=var3747, $r60=var3591, $r61=var1717, $r62=var2388, $r51=var439, $r52=var3225, $r63=var1858, $r20=var1260, $r21=var3838, $r22=var1418, $r64=var669, $r23=var3102, $r65=var2916, $i2=var1778, $r26=var15, $r27=var2998, $i3=var2303, com.mysql.cj.Messages=var1493, $r49=var1181, com.mysql.cj.exceptions.ExceptionInterceptor=var146, $r48=var391, java.sql.SQLException=var3800, com.mysql.cj.jdbc.exceptions.SQLError=var403, $r50=var2984}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16