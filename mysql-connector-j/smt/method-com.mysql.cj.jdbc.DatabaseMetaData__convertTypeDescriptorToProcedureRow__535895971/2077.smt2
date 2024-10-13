(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3447 0)
(declare-sort var3079 0)
(declare-sort var3711 0)
(declare-sort var3906 0)
(declare-sort var2557 0)
(declare-sort var110 0)
(declare-sort var2637 0)
(declare-sort var3826 0)
(declare-sort var3114 0)
(declare-sort var3924 0)
(declare-sort var2440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3447) var3906)
(declare-fun var3906_getValue/1633538672 (var3906) var2557)
(declare-fun cast-from-var110-to-var2557 (var110) var2557)
(declare-fun s2b/-450202684 (var3447 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3447 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3711) var2637)
(declare-fun getJdbcType/389098195 (var2637) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2637) String)
(declare-fun datetimePrecision/-289055874 (var3711) Int)
(declare-fun columnSize/-289055874 (var3711) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3711) Int)
(declare-fun numPrecRadix/-289055874 (var3711) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3711) Int)
(declare-fun var3826_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3447) var3114)
(declare-fun var2440_createSQLException/-1268047242 (String String var3114) var3924)
(declare-const null-var3447 var3447)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3711 var3711)
(declare-const null-Int Int)
(declare-const var110-SCHEMA var110)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2637-YEAR var2637)
(declare-const var2699 var3447) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2699 null-var3447)))
(declare-const var2352 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2352 null-__Array__Int__Int__)))
(declare-const var1533 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1533 null-__Array__Int__Int__)))
(declare-const var1332 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1332 null-String)))
(declare-const var1328 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1328 null-Bool)))
(declare-const var739 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var739 null-Bool)))
(declare-const var2863 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2863 null-Bool)))
(declare-const var1657 var3711) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1657 null-var3711)))
(declare-const var3516 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3516 null-Bool)))
(declare-const var2787 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2787 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3516 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2043 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var848 (Array Int (Array Int Int)) var2043) ; Statement: r0 = $r54 
(define-const var3869 (Array Int (Array Int Int)) var2043) ; Statement: $r53 = $r54 
(define-const var543 var3906 (databaseTerm/1074764847 var2699)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3090 var2557 (var3906_getValue/1633538672 var543)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2103 var110 var110-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3090 (cast-from-var110-to-var2557 var2103)))) ; Cond: $r4 != $r3 
(define-const var3933 (Array Int Int) var1533) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3869!1 (Array Int (Array Int Int)))
(assert (not (= var3869!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3869!1 0) var3933)) ; Statement: $r53[0] = $r55 
(define-const var2032 var3906 (databaseTerm/1074764847 var2699)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2564 var2557 (var3906_getValue/1633538672 var2032)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var686 var110 var110-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2564 (cast-from-var110-to-var2557 var686)))) ; Cond: $r8 != $r7 
(define-const var3521 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var848!1 (Array Int (Array Int Int)))
(assert (not (= var848!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!1 1) var3521)) ; Statement: r0[1] = $r56 
(declare-const var848!2 (Array Int (Array Int Int)))
(assert (not (= var848!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!2 2) var2352)) ; Statement: r0[2] = r9 
(assert true)
(define-const var265 (Array Int Int) (s2b/-450202684 var2699 var1332)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var848!3 (Array Int (Array Int Int)))
(assert (not (= var848!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!3 3) var265)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3137 Int (getColumnType/800489773 var2699 var1328 var739 var2863 var3516)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1616 String (String_valueOf/1240665136 var3137)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2659 (Array Int Int) (s2b/-450202684 var2699 var1616)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var848!4 (Array Int (Array Int Int)))
(assert (not (= var848!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!4 4) var2659)) ; Statement: r0[4] = $r13 
(define-const var3630 var2637 (mysqlType/-289055874 var1657)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var223 var2637 var2637-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3630 var223))) ; Cond: $r16 != $r15 
(define-const var1787 var2637 (mysqlType/-289055874 var1657)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var722 Int (getJdbcType/389098195 var1787)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2898 Int (cast-from-Int-to-Int var722)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var75 String (Int_toString/-1770815874 var2898)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var757 (Array Int Int) (getBytes/1068683673 var75)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var848!5 (Array Int (Array Int Int)))
(assert (not (= var848!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!5 5) var757)) ; Statement: r0[5] = $r58 
(define-const var3620 var2637 (mysqlType/-289055874 var1657)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2677 String (getName/1307715079 var3620)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2586 (Array Int Int) (s2b/-450202684 var2699 var2677)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var848!6 (Array Int (Array Int Int)))
(assert (not (= var848!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!6 6) var2586)) ; Statement: r0[6] = $r61 
(define-const var2937 Int (datetimePrecision/-289055874 var1657)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2937 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3783 Int (columnSize/-289055874 var1657)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2724 String (toString/483301002 var3783)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var524 (Array Int Int) (s2b/-450202684 var2699 var2724)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var848!7 (Array Int (Array Int Int)))
(assert (not (= var848!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!7 7) var524)) ; Statement: r0[7] = $r63 
(define-const var822 Int (columnSize/-289055874 var1657)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var822 null-Int))) ; Cond: $r20 != null 
(define-const var2781 Int (columnSize/-289055874 var1657)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2833 String (toString/483301002 var2781)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2817 (Array Int Int) (s2b/-450202684 var2699 var2833)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var848!8 (Array Int (Array Int Int)))
(assert (not (= var848!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!8 8) var2817)) ; Statement: r0[8] = $r64 
(define-const var1839 Int (decimalDigits/-289055874 var1657)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1839 null-Int))) ; Cond: $r23 != null 
(define-const var1368 Int (decimalDigits/-289055874 var1657)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1347 String (toString/483301002 var1368)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2975 (Array Int Int) (s2b/-450202684 var2699 var1347)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var848!9 (Array Int (Array Int Int)))
(assert (not (= var848!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!9 9) var2975)) ; Statement: r0[9] = $r65 
(define-const var1196 Int (numPrecRadix/-289055874 var1657)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1727 String (Int_toString/1350422511 var1196)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var985 (Array Int Int) (s2b/-450202684 var2699 var1727)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var848!10 (Array Int (Array Int Int)))
(assert (not (= var848!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var848!10 10) var985)) ; Statement: r0[10] = $r27 
(define-const var2597 Int (nullability/-289055874 var1657)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2597 2)) (and (not (= var2597 1)) (and (not (= var2597 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var1430 String (var3826_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2615 var3114 (getExceptionInterceptor/-1244810802 var2699)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3044 var3924 (var2440_createSQLException/-1268047242 var1430 "S1000" var2615)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3906_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var110-to-var2557=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3826_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2440_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3447=com.mysql.cj.jdbc.DatabaseMetaData, var2699=r1, var2352=r9, var1533=r5, var1332=r10, var3079=null_type, var1328=z1, var739=z2, var2863=z3, var3711=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1657=r14, var3516=z0, var2787=i4, var2043=$r54, var848=r0, var3869=$r53, var3906=com.mysql.cj.conf.RuntimeProperty, var543=$r2, var2557=java.lang.Object, var3090=$r4, var110=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2103=$r3, var3933=$r55, var2032=$r6, var2564=$r8, var686=$r7, var3521=$r56, var265=$r11, var3137=$i0, var1616=$r12, var2659=$r13, var2637=com.mysql.cj.MysqlType, var3630=$r16, var223=$r15, var1787=$r17, var722=$i1, var2898=$s5, var75=$r57, var757=$r58, var3620=$r59, var2677=$r60, var2586=$r61, var2937=$r62, var3783=$r51, var2724=$r52, var524=$r63, var822=$r20, var2781=$r21, var2833=$r22, var2817=$r64, var1839=$r23, var1368=$r24, var1347=$r25, var2975=$r65, var1196=$i2, var1727=$r26, var985=$r27, var2597=$i3, var3826=com.mysql.cj.Messages, var1430=$r49, var3114=com.mysql.cj.exceptions.ExceptionInterceptor, var2615=$r48, var3924=java.sql.SQLException, var2440=com.mysql.cj.jdbc.exceptions.SQLError, var3044=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3447, r1=var2699, r9=var2352, r5=var1533, r10=var1332, null_type=var3079, z1=var1328, z2=var739, z3=var2863, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3711, r14=var1657, z0=var3516, i4=var2787, $r54=var2043, r0=var848, $r53=var3869, com.mysql.cj.conf.RuntimeProperty=var3906, $r2=var543, java.lang.Object=var2557, $r4=var3090, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var110, $r3=var2103, $r55=var3933, $r6=var2032, $r8=var2564, $r7=var686, $r56=var3521, $r11=var265, $i0=var3137, $r12=var1616, $r13=var2659, com.mysql.cj.MysqlType=var2637, $r16=var3630, $r15=var223, $r17=var1787, $i1=var722, $s5=var2898, $r57=var75, $r58=var757, $r59=var3620, $r60=var2677, $r61=var2586, $r62=var2937, $r51=var3783, $r52=var2724, $r63=var524, $r20=var822, $r21=var2781, $r22=var2833, $r64=var2817, $r23=var1839, $r24=var1368, $r25=var1347, $r65=var2975, $i2=var1196, $r26=var1727, $r27=var985, $i3=var2597, com.mysql.cj.Messages=var3826, $r49=var1430, com.mysql.cj.exceptions.ExceptionInterceptor=var3114, $r48=var2615, java.sql.SQLException=var3924, com.mysql.cj.jdbc.exceptions.SQLError=var2440, $r50=var3044}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16