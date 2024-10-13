(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3856 0)
(declare-sort var3865 0)
(declare-sort var218 0)
(declare-sort var3935 0)
(declare-sort var2142 0)
(declare-sort var3066 0)
(declare-sort var3183 0)
(declare-sort var1823 0)
(declare-sort var1861 0)
(declare-sort var345 0)
(declare-sort var2224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3856) var3935)
(declare-fun var3935_getValue/1633538672 (var3935) var2142)
(declare-fun cast-from-var3066-to-var2142 (var3066) var2142)
(declare-fun s2b/-450202684 (var3856 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3856 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var218) var3183)
(declare-fun getJdbcType/389098195 (var3183) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var3183) String)
(declare-fun datetimePrecision/-289055874 (var218) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var218) Int)
(declare-fun decimalDigits/-289055874 (var218) Int)
(declare-fun numPrecRadix/-289055874 (var218) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var218) Int)
(declare-fun var1823_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3856) var1861)
(declare-fun var2224_createSQLException/-1268047242 (String String var1861) var345)
(declare-const null-var3856 var3856)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var218 var218)
(declare-const null-Int Int)
(declare-const var3066-SCHEMA var3066)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3183-YEAR var3183)
(declare-const var964 var3856) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var964 null-var3856)))
(declare-const var1659 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1659 null-__Array__Int__Int__)))
(declare-const var2919 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2919 null-__Array__Int__Int__)))
(declare-const var967 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var967 null-String)))
(declare-const var2960 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2960 null-Bool)))
(declare-const var273 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var273 null-Bool)))
(declare-const var3442 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3442 null-Bool)))
(declare-const var3150 var218) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3150 null-var218)))
(declare-const var260 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var260 null-Bool)))
(declare-const var2667 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2667 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var260 1 0) 0)) ; Cond: z0 == 0 
(define-const var3214 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var3187 (Array Int (Array Int Int)) var3214) ; Statement: r0 = $r54 
(define-const var1186 (Array Int (Array Int Int)) var3214) ; Statement: $r53 = $r54 
(define-const var3307 var3935 (databaseTerm/1074764847 var964)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3201 var2142 (var3935_getValue/1633538672 var3307)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var796 var3066 var3066-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3201 (cast-from-var3066-to-var2142 var796))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3702 (Array Int Int) (s2b/-450202684 var964 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1186!1 (Array Int (Array Int Int)))
(assert (not (= var1186!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1186!1 0) var3702)) ; Statement: $r53[0] = $r55 
(define-const var1617 var3935 (databaseTerm/1074764847 var964)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var712 var2142 (var3935_getValue/1633538672 var1617)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1682 var3066 var3066-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var712 (cast-from-var3066-to-var2142 var1682)))) ; Cond: $r8 != $r7 
(define-const var3850 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var3187!1 (Array Int (Array Int Int)))
(assert (not (= var3187!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!1 1) var3850)) ; Statement: r0[1] = $r56 
(declare-const var3187!2 (Array Int (Array Int Int)))
(assert (not (= var3187!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!2 2) var1659)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2723 (Array Int Int) (s2b/-450202684 var964 var967)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3187!3 (Array Int (Array Int Int)))
(assert (not (= var3187!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!3 3) var2723)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2085 Int (getColumnType/800489773 var964 var2960 var273 var3442 var260)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2241 String (String_valueOf/1240665136 var2085)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var996 (Array Int Int) (s2b/-450202684 var964 var2241)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3187!4 (Array Int (Array Int Int)))
(assert (not (= var3187!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!4 4) var996)) ; Statement: r0[4] = $r13 
(define-const var1224 var3183 (mysqlType/-289055874 var3150)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var564 var3183 var3183-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1224 var564))) ; Cond: $r16 != $r15 
(define-const var2301 var3183 (mysqlType/-289055874 var3150)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2427 Int (getJdbcType/389098195 var2301)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3431 Int (cast-from-Int-to-Int var2427)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2186 String (Int_toString/-1770815874 var3431)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1487 (Array Int Int) (getBytes/1068683673 var2186)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3187!5 (Array Int (Array Int Int)))
(assert (not (= var3187!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!5 5) var1487)) ; Statement: r0[5] = $r58 
(define-const var3942 var3183 (mysqlType/-289055874 var3150)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1114 String (getName/1307715079 var3942)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3995 (Array Int Int) (s2b/-450202684 var964 var1114)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3187!6 (Array Int (Array Int Int)))
(assert (not (= var3187!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!6 6) var3995)) ; Statement: r0[6] = $r61 
(define-const var2109 Int (datetimePrecision/-289055874 var3150)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2109 null-Int))) ; Cond: $r62 != null 
(define-const var1941 Int (datetimePrecision/-289055874 var3150)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3057 String (toString/483301002 var1941)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1750 (Array Int Int) (s2b/-450202684 var964 var3057)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var3187!7 (Array Int (Array Int Int)))
(assert (not (= var3187!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!7 7) var1750)) ; Statement: r0[7] = $r63 
(define-const var112 Int (columnSize/-289055874 var3150)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var112 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var641 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3187!8 (Array Int (Array Int Int)))
(assert (not (= var3187!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!8 8) var641)) ; Statement: r0[8] = $r64 
(define-const var992 Int (decimalDigits/-289055874 var3150)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var992 null-Int))) ; Cond: $r23 != null 
(define-const var3847 Int (decimalDigits/-289055874 var3150)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var403 String (toString/483301002 var3847)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2198 (Array Int Int) (s2b/-450202684 var964 var403)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3187!9 (Array Int (Array Int Int)))
(assert (not (= var3187!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!9 9) var2198)) ; Statement: r0[9] = $r65 
(define-const var358 Int (numPrecRadix/-289055874 var3150)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3342 String (Int_toString/1350422511 var358)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2345 (Array Int Int) (s2b/-450202684 var964 var3342)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3187!10 (Array Int (Array Int Int)))
(assert (not (= var3187!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3187!10 10) var2345)) ; Statement: r0[10] = $r27 
(define-const var270 Int (nullability/-289055874 var3150)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var270 2)) (and (not (= var270 1)) (and (not (= var270 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3569 String (var1823_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var977 var1861 (getExceptionInterceptor/-1244810802 var964)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1427 var345 (var2224_createSQLException/-1268047242 var3569 "S1000" var977)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3935_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3066-to-var2142=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1823_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2224_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3856=com.mysql.cj.jdbc.DatabaseMetaData, var964=r1, var1659=r9, var2919=r5, var967=r10, var3865=null_type, var2960=z1, var273=z2, var3442=z3, var218=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3150=r14, var260=z0, var2667=i4, var3214=$r54, var3187=r0, var1186=$r53, var3935=com.mysql.cj.conf.RuntimeProperty, var3307=$r2, var2142=java.lang.Object, var3201=$r4, var3066=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var796=$r3, var3702=$r55, var1617=$r6, var712=$r8, var1682=$r7, var3850=$r56, var2723=$r11, var2085=$i0, var2241=$r12, var996=$r13, var3183=com.mysql.cj.MysqlType, var1224=$r16, var564=$r15, var2301=$r17, var2427=$i1, var3431=$s5, var2186=$r57, var1487=$r58, var3942=$r59, var1114=$r60, var3995=$r61, var2109=$r62, var1941=$r18, var3057=$r19, var1750=$r63, var112=$r20, var641=$r64, var992=$r23, var3847=$r24, var403=$r25, var2198=$r65, var358=$i2, var3342=$r26, var2345=$r27, var270=$i3, var1823=com.mysql.cj.Messages, var3569=$r49, var1861=com.mysql.cj.exceptions.ExceptionInterceptor, var977=$r48, var345=java.sql.SQLException, var2224=com.mysql.cj.jdbc.exceptions.SQLError, var1427=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3856, r1=var964, r9=var1659, r5=var2919, r10=var967, null_type=var3865, z1=var2960, z2=var273, z3=var3442, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var218, r14=var3150, z0=var260, i4=var2667, $r54=var3214, r0=var3187, $r53=var1186, com.mysql.cj.conf.RuntimeProperty=var3935, $r2=var3307, java.lang.Object=var2142, $r4=var3201, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3066, $r3=var796, $r55=var3702, $r6=var1617, $r8=var712, $r7=var1682, $r56=var3850, $r11=var2723, $i0=var2085, $r12=var2241, $r13=var996, com.mysql.cj.MysqlType=var3183, $r16=var1224, $r15=var564, $r17=var2301, $i1=var2427, $s5=var3431, $r57=var2186, $r58=var1487, $r59=var3942, $r60=var1114, $r61=var3995, $r62=var2109, $r18=var1941, $r19=var3057, $r63=var1750, $r20=var112, $r64=var641, $r23=var992, $r24=var3847, $r25=var403, $r65=var2198, $i2=var358, $r26=var3342, $r27=var2345, $i3=var270, com.mysql.cj.Messages=var1823, $r49=var3569, com.mysql.cj.exceptions.ExceptionInterceptor=var1861, $r48=var977, java.sql.SQLException=var345, com.mysql.cj.jdbc.exceptions.SQLError=var2224, $r50=var1427}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16