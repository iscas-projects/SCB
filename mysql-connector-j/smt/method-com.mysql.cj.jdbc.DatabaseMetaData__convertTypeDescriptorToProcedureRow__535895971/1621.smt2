(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var429 0)
(declare-sort var3374 0)
(declare-sort var803 0)
(declare-sort var417 0)
(declare-sort var3928 0)
(declare-sort var2022 0)
(declare-sort var3236 0)
(declare-sort var3713 0)
(declare-sort var3778 0)
(declare-sort var1437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1984) var803)
(declare-fun var803_getValue/1633538672 (var803) var417)
(declare-fun cast-from-var3928-to-var417 (var3928) var417)
(declare-fun s2b/-450202684 (var1984 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1984 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3374) var2022)
(declare-fun getJdbcType/389098195 (var2022) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2022) String)
(declare-fun datetimePrecision/-289055874 (var3374) Int)
(declare-fun columnSize/-289055874 (var3374) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3374) Int)
(declare-fun numPrecRadix/-289055874 (var3374) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3374) Int)
(declare-fun var3236_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1984) var3713)
(declare-fun var1437_createSQLException/-1268047242 (String String var3713) var3778)
(declare-const null-var1984 var1984)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3374 var3374)
(declare-const null-Int Int)
(declare-const var3928-SCHEMA var3928)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2022-YEAR var2022)
(declare-const var2808 var1984) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2808 null-var1984)))
(declare-const var2954 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2954 null-__Array__Int__Int__)))
(declare-const var3359 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3359 null-__Array__Int__Int__)))
(declare-const var1764 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1764 null-String)))
(declare-const var1110 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1110 null-Bool)))
(declare-const var3320 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3320 null-Bool)))
(declare-const var2115 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2115 null-Bool)))
(declare-const var1086 var3374) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1086 null-var3374)))
(declare-const var627 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var627 null-Bool)))
(declare-const var3989 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3989 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var627 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2468 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1601 (Array Int (Array Int Int)) var2468) ; Statement: r0 = $r54 
(define-const var1 (Array Int (Array Int Int)) var2468) ; Statement: $r53 = $r54 
(define-const var3393 var803 (databaseTerm/1074764847 var2808)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1075 var417 (var803_getValue/1633538672 var3393)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2209 var3928 var3928-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1075 (cast-from-var3928-to-var417 var2209))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var141 (Array Int Int) (s2b/-450202684 var2808 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1!1 (Array Int (Array Int Int)))
(assert (not (= var1!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1!1 0) var141)) ; Statement: $r53[0] = $r55 
(define-const var2537 var803 (databaseTerm/1074764847 var2808)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3048 var417 (var803_getValue/1633538672 var2537)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var809 var3928 var3928-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var3048 (cast-from-var3928-to-var417 var809))))) ; Negate: Cond: $r8 != $r7  
(define-const var1862 (Array Int Int) var3359) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var1601!1 (Array Int (Array Int Int)))
(assert (not (= var1601!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!1 1) var1862)) ; Statement: r0[1] = $r56 
(declare-const var1601!2 (Array Int (Array Int Int)))
(assert (not (= var1601!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!2 2) var2954)) ; Statement: r0[2] = r9 
(assert true)
(define-const var549 (Array Int Int) (s2b/-450202684 var2808 var1764)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1601!3 (Array Int (Array Int Int)))
(assert (not (= var1601!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!3 3) var549)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2041 Int (getColumnType/800489773 var2808 var1110 var3320 var2115 var627)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1525 String (String_valueOf/1240665136 var2041)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2403 (Array Int Int) (s2b/-450202684 var2808 var1525)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1601!4 (Array Int (Array Int Int)))
(assert (not (= var1601!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!4 4) var2403)) ; Statement: r0[4] = $r13 
(define-const var2864 var2022 (mysqlType/-289055874 var1086)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3612 var2022 var2022-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2864 var3612))) ; Cond: $r16 != $r15 
(define-const var2345 var2022 (mysqlType/-289055874 var1086)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2847 Int (getJdbcType/389098195 var2345)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1767 Int (cast-from-Int-to-Int var2847)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var853 String (Int_toString/-1770815874 var1767)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1422 (Array Int Int) (getBytes/1068683673 var853)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1601!5 (Array Int (Array Int Int)))
(assert (not (= var1601!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!5 5) var1422)) ; Statement: r0[5] = $r58 
(define-const var1796 var2022 (mysqlType/-289055874 var1086)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2266 String (getName/1307715079 var1796)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1263 (Array Int Int) (s2b/-450202684 var2808 var2266)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1601!6 (Array Int (Array Int Int)))
(assert (not (= var1601!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!6 6) var1263)) ; Statement: r0[6] = $r61 
(define-const var1508 Int (datetimePrecision/-289055874 var1086)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var1508 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var569 Int (columnSize/-289055874 var1086)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1405 String (toString/483301002 var569)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var644 (Array Int Int) (s2b/-450202684 var2808 var1405)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var1601!7 (Array Int (Array Int Int)))
(assert (not (= var1601!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!7 7) var644)) ; Statement: r0[7] = $r63 
(define-const var3119 Int (columnSize/-289055874 var1086)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3119 null-Int))) ; Cond: $r20 != null 
(define-const var3338 Int (columnSize/-289055874 var1086)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2168 String (toString/483301002 var3338)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1720 (Array Int Int) (s2b/-450202684 var2808 var2168)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var1601!8 (Array Int (Array Int Int)))
(assert (not (= var1601!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!8 8) var1720)) ; Statement: r0[8] = $r64 
(define-const var1231 Int (decimalDigits/-289055874 var1086)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1231 null-Int))) ; Cond: $r23 != null 
(define-const var3142 Int (decimalDigits/-289055874 var1086)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1280 String (toString/483301002 var3142)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3624 (Array Int Int) (s2b/-450202684 var2808 var1280)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var1601!9 (Array Int (Array Int Int)))
(assert (not (= var1601!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!9 9) var3624)) ; Statement: r0[9] = $r65 
(define-const var138 Int (numPrecRadix/-289055874 var1086)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3634 String (Int_toString/1350422511 var138)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2196 (Array Int Int) (s2b/-450202684 var2808 var3634)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1601!10 (Array Int (Array Int Int)))
(assert (not (= var1601!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1601!10 10) var2196)) ; Statement: r0[10] = $r27 
(define-const var709 Int (nullability/-289055874 var1086)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var709 2)) (and (not (= var709 1)) (and (not (= var709 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var892 String (var3236_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var982 var3713 (getExceptionInterceptor/-1244810802 var2808)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3444 var3778 (var1437_createSQLException/-1268047242 var892 "S1000" var982)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var803_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3928-to-var417=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3236_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1437_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1984=com.mysql.cj.jdbc.DatabaseMetaData, var2808=r1, var2954=r9, var3359=r5, var1764=r10, var429=null_type, var1110=z1, var3320=z2, var2115=z3, var3374=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1086=r14, var627=z0, var3989=i4, var2468=$r54, var1601=r0, var1=$r53, var803=com.mysql.cj.conf.RuntimeProperty, var3393=$r2, var417=java.lang.Object, var1075=$r4, var3928=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2209=$r3, var141=$r55, var2537=$r6, var3048=$r8, var809=$r7, var1862=$r56, var549=$r11, var2041=$i0, var1525=$r12, var2403=$r13, var2022=com.mysql.cj.MysqlType, var2864=$r16, var3612=$r15, var2345=$r17, var2847=$i1, var1767=$s5, var853=$r57, var1422=$r58, var1796=$r59, var2266=$r60, var1263=$r61, var1508=$r62, var569=$r51, var1405=$r52, var644=$r63, var3119=$r20, var3338=$r21, var2168=$r22, var1720=$r64, var1231=$r23, var3142=$r24, var1280=$r25, var3624=$r65, var138=$i2, var3634=$r26, var2196=$r27, var709=$i3, var3236=com.mysql.cj.Messages, var892=$r49, var3713=com.mysql.cj.exceptions.ExceptionInterceptor, var982=$r48, var3778=java.sql.SQLException, var1437=com.mysql.cj.jdbc.exceptions.SQLError, var3444=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1984, r1=var2808, r9=var2954, r5=var3359, r10=var1764, null_type=var429, z1=var1110, z2=var3320, z3=var2115, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3374, r14=var1086, z0=var627, i4=var3989, $r54=var2468, r0=var1601, $r53=var1, com.mysql.cj.conf.RuntimeProperty=var803, $r2=var3393, java.lang.Object=var417, $r4=var1075, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3928, $r3=var2209, $r55=var141, $r6=var2537, $r8=var3048, $r7=var809, $r56=var1862, $r11=var549, $i0=var2041, $r12=var1525, $r13=var2403, com.mysql.cj.MysqlType=var2022, $r16=var2864, $r15=var3612, $r17=var2345, $i1=var2847, $s5=var1767, $r57=var853, $r58=var1422, $r59=var1796, $r60=var2266, $r61=var1263, $r62=var1508, $r51=var569, $r52=var1405, $r63=var644, $r20=var3119, $r21=var3338, $r22=var2168, $r64=var1720, $r23=var1231, $r24=var3142, $r25=var1280, $r65=var3624, $i2=var138, $r26=var3634, $r27=var2196, $i3=var709, com.mysql.cj.Messages=var3236, $r49=var892, com.mysql.cj.exceptions.ExceptionInterceptor=var3713, $r48=var982, java.sql.SQLException=var3778, com.mysql.cj.jdbc.exceptions.SQLError=var1437, $r50=var3444}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16