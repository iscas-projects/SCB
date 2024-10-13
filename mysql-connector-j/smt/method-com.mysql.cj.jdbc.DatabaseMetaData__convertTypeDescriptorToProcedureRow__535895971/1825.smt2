(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1219 0)
(declare-sort var466 0)
(declare-sort var3957 0)
(declare-sort var3891 0)
(declare-sort var3187 0)
(declare-sort var2943 0)
(declare-sort var378 0)
(declare-sort var1173 0)
(declare-sort var1526 0)
(declare-sort var3278 0)
(declare-sort var385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1219) var3891)
(declare-fun var3891_getValue/1633538672 (var3891) var3187)
(declare-fun cast-from-var2943-to-var3187 (var2943) var3187)
(declare-fun s2b/-450202684 (var1219 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1219 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3957) var378)
(declare-fun getJdbcType/389098195 (var378) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var378) String)
(declare-fun datetimePrecision/-289055874 (var3957) Int)
(declare-fun columnSize/-289055874 (var3957) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3957) Int)
(declare-fun numPrecRadix/-289055874 (var3957) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3957) Int)
(declare-fun var1173_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1219) var1526)
(declare-fun var385_createSQLException/-1268047242 (String String var1526) var3278)
(declare-const null-var1219 var1219)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3957 var3957)
(declare-const null-Int Int)
(declare-const var2943-SCHEMA var2943)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var378-YEAR var378)
(declare-const var1963 var1219) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1963 null-var1219)))
(declare-const var260 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var260 null-__Array__Int__Int__)))
(declare-const var3977 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3977 null-__Array__Int__Int__)))
(declare-const var1610 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1610 null-String)))
(declare-const var2885 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2885 null-Bool)))
(declare-const var3658 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3658 null-Bool)))
(declare-const var2546 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2546 null-Bool)))
(declare-const var2301 var3957) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2301 null-var3957)))
(declare-const var1370 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1370 null-Bool)))
(declare-const var221 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var221 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1370 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2396 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var2878 (Array Int (Array Int Int)) var2396) ; Statement: r0 = $r54 
(define-const var683 (Array Int (Array Int Int)) var2396) ; Statement: $r53 = $r54 
(define-const var1226 var3891 (databaseTerm/1074764847 var1963)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2430 var3187 (var3891_getValue/1633538672 var1226)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var632 var2943 var2943-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var2430 (cast-from-var2943-to-var3187 var632))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1588 (Array Int Int) (s2b/-450202684 var1963 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var683!1 (Array Int (Array Int Int)))
(assert (not (= var683!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var683!1 0) var1588)) ; Statement: $r53[0] = $r55 
(define-const var3235 var3891 (databaseTerm/1074764847 var1963)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var490 var3187 (var3891_getValue/1633538672 var3235)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2312 var2943 var2943-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var490 (cast-from-var2943-to-var3187 var2312)))) ; Cond: $r8 != $r7 
(define-const var3153 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var2878!1 (Array Int (Array Int Int)))
(assert (not (= var2878!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!1 1) var3153)) ; Statement: r0[1] = $r56 
(declare-const var2878!2 (Array Int (Array Int Int)))
(assert (not (= var2878!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!2 2) var260)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1995 (Array Int Int) (s2b/-450202684 var1963 var1610)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2878!3 (Array Int (Array Int Int)))
(assert (not (= var2878!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!3 3) var1995)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1090 Int (getColumnType/800489773 var1963 var2885 var3658 var2546 var1370)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1246 String (String_valueOf/1240665136 var1090)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3272 (Array Int Int) (s2b/-450202684 var1963 var1246)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2878!4 (Array Int (Array Int Int)))
(assert (not (= var2878!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!4 4) var3272)) ; Statement: r0[4] = $r13 
(define-const var3514 var378 (mysqlType/-289055874 var2301)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2144 var378 var378-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3514 var2144))) ; Cond: $r16 != $r15 
(define-const var2709 var378 (mysqlType/-289055874 var2301)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var213 Int (getJdbcType/389098195 var2709)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1902 Int (cast-from-Int-to-Int var213)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var642 String (Int_toString/-1770815874 var1902)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3325 (Array Int Int) (getBytes/1068683673 var642)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2878!5 (Array Int (Array Int Int)))
(assert (not (= var2878!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!5 5) var3325)) ; Statement: r0[5] = $r58 
(define-const var1518 var378 (mysqlType/-289055874 var2301)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var236 String (getName/1307715079 var1518)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3746 (Array Int Int) (s2b/-450202684 var1963 var236)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2878!6 (Array Int (Array Int Int)))
(assert (not (= var2878!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!6 6) var3746)) ; Statement: r0[6] = $r61 
(define-const var1986 Int (datetimePrecision/-289055874 var2301)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var1986 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3980 Int (columnSize/-289055874 var2301)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2660 String (toString/483301002 var3980)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2315 (Array Int Int) (s2b/-450202684 var1963 var2660)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var2878!7 (Array Int (Array Int Int)))
(assert (not (= var2878!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!7 7) var2315)) ; Statement: r0[7] = $r63 
(define-const var3624 Int (columnSize/-289055874 var2301)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3624 null-Int))) ; Cond: $r20 != null 
(define-const var711 Int (columnSize/-289055874 var2301)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var824 String (toString/483301002 var711)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1989 (Array Int Int) (s2b/-450202684 var1963 var824)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var2878!8 (Array Int (Array Int Int)))
(assert (not (= var2878!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!8 8) var1989)) ; Statement: r0[8] = $r64 
(define-const var626 Int (decimalDigits/-289055874 var2301)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var626 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var950 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2878!9 (Array Int (Array Int Int)))
(assert (not (= var2878!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!9 9) var950)) ; Statement: r0[9] = $r65 
(define-const var1289 Int (numPrecRadix/-289055874 var2301)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3739 String (Int_toString/1350422511 var1289)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3299 (Array Int Int) (s2b/-450202684 var1963 var3739)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2878!10 (Array Int (Array Int Int)))
(assert (not (= var2878!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2878!10 10) var3299)) ; Statement: r0[10] = $r27 
(define-const var961 Int (nullability/-289055874 var2301)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var961 2)) (and (not (= var961 1)) (and (not (= var961 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2995 String (var1173_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2234 var1526 (getExceptionInterceptor/-1244810802 var1963)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2756 var3278 (var385_createSQLException/-1268047242 var2995 "S1000" var2234)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3891_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2943-to-var3187=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1173_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var385_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1219=com.mysql.cj.jdbc.DatabaseMetaData, var1963=r1, var260=r9, var3977=r5, var1610=r10, var466=null_type, var2885=z1, var3658=z2, var2546=z3, var3957=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2301=r14, var1370=z0, var221=i4, var2396=$r54, var2878=r0, var683=$r53, var3891=com.mysql.cj.conf.RuntimeProperty, var1226=$r2, var3187=java.lang.Object, var2430=$r4, var2943=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var632=$r3, var1588=$r55, var3235=$r6, var490=$r8, var2312=$r7, var3153=$r56, var1995=$r11, var1090=$i0, var1246=$r12, var3272=$r13, var378=com.mysql.cj.MysqlType, var3514=$r16, var2144=$r15, var2709=$r17, var213=$i1, var1902=$s5, var642=$r57, var3325=$r58, var1518=$r59, var236=$r60, var3746=$r61, var1986=$r62, var3980=$r51, var2660=$r52, var2315=$r63, var3624=$r20, var711=$r21, var824=$r22, var1989=$r64, var626=$r23, var950=$r65, var1289=$i2, var3739=$r26, var3299=$r27, var961=$i3, var1173=com.mysql.cj.Messages, var2995=$r49, var1526=com.mysql.cj.exceptions.ExceptionInterceptor, var2234=$r48, var3278=java.sql.SQLException, var385=com.mysql.cj.jdbc.exceptions.SQLError, var2756=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1219, r1=var1963, r9=var260, r5=var3977, r10=var1610, null_type=var466, z1=var2885, z2=var3658, z3=var2546, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3957, r14=var2301, z0=var1370, i4=var221, $r54=var2396, r0=var2878, $r53=var683, com.mysql.cj.conf.RuntimeProperty=var3891, $r2=var1226, java.lang.Object=var3187, $r4=var2430, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2943, $r3=var632, $r55=var1588, $r6=var3235, $r8=var490, $r7=var2312, $r56=var3153, $r11=var1995, $i0=var1090, $r12=var1246, $r13=var3272, com.mysql.cj.MysqlType=var378, $r16=var3514, $r15=var2144, $r17=var2709, $i1=var213, $s5=var1902, $r57=var642, $r58=var3325, $r59=var1518, $r60=var236, $r61=var3746, $r62=var1986, $r51=var3980, $r52=var2660, $r63=var2315, $r20=var3624, $r21=var711, $r22=var824, $r64=var1989, $r23=var626, $r65=var950, $i2=var1289, $r26=var3739, $r27=var3299, $i3=var961, com.mysql.cj.Messages=var1173, $r49=var2995, com.mysql.cj.exceptions.ExceptionInterceptor=var1526, $r48=var2234, java.sql.SQLException=var3278, com.mysql.cj.jdbc.exceptions.SQLError=var385, $r50=var2756}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16