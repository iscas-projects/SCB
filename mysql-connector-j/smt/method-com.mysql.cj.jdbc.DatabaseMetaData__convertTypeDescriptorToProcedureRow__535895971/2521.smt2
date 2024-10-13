(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1592 0)
(declare-sort var2673 0)
(declare-sort var3793 0)
(declare-sort var2090 0)
(declare-sort var3616 0)
(declare-sort var854 0)
(declare-sort var1310 0)
(declare-sort var1956 0)
(declare-sort var1810 0)
(declare-sort var1790 0)
(declare-sort var3969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1592) var2090)
(declare-fun var2090_getValue/1633538672 (var2090) var3616)
(declare-fun cast-from-var854-to-var3616 (var854) var3616)
(declare-fun s2b/-450202684 (var1592 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1592 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3793) var1310)
(declare-fun getJdbcType/389098195 (var1310) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1310) String)
(declare-fun datetimePrecision/-289055874 (var3793) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3793) Int)
(declare-fun decimalDigits/-289055874 (var3793) Int)
(declare-fun numPrecRadix/-289055874 (var3793) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3793) Int)
(declare-fun var1956_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1592) var1810)
(declare-fun var3969_createSQLException/-1268047242 (String String var1810) var1790)
(declare-const null-var1592 var1592)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3793 var3793)
(declare-const null-Int Int)
(declare-const var854-SCHEMA var854)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1310-YEAR var1310)
(declare-const var3815 var1592) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3815 null-var1592)))
(declare-const var3461 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3461 null-__Array__Int__Int__)))
(declare-const var377 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var377 null-__Array__Int__Int__)))
(declare-const var228 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var228 null-String)))
(declare-const var3643 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3643 null-Bool)))
(declare-const var3369 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3369 null-Bool)))
(declare-const var2508 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2508 null-Bool)))
(declare-const var3631 var3793) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3631 null-var3793)))
(declare-const var710 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var710 null-Bool)))
(declare-const var519 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var519 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var710 1 0) 0)) ; Cond: z0 == 0 
(define-const var485 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var767 (Array Int (Array Int Int)) var485) ; Statement: r0 = $r54 
(define-const var1524 (Array Int (Array Int Int)) var485) ; Statement: $r53 = $r54 
(define-const var2608 var2090 (databaseTerm/1074764847 var3815)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var433 var3616 (var2090_getValue/1633538672 var2608)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var235 var854 var854-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var433 (cast-from-var854-to-var3616 var235)))) ; Cond: $r4 != $r3 
(define-const var2332 (Array Int Int) var377) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1524!1 (Array Int (Array Int Int)))
(assert (not (= var1524!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1524!1 0) var2332)) ; Statement: $r53[0] = $r55 
(define-const var2303 var2090 (databaseTerm/1074764847 var3815)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1766 var3616 (var2090_getValue/1633538672 var2303)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2486 var854 var854-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1766 (cast-from-var854-to-var3616 var2486))))) ; Negate: Cond: $r8 != $r7  
(define-const var1637 (Array Int Int) var377) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var767!1 (Array Int (Array Int Int)))
(assert (not (= var767!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!1 1) var1637)) ; Statement: r0[1] = $r56 
(declare-const var767!2 (Array Int (Array Int Int)))
(assert (not (= var767!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!2 2) var3461)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2103 (Array Int Int) (s2b/-450202684 var3815 var228)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var767!3 (Array Int (Array Int Int)))
(assert (not (= var767!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!3 3) var2103)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1762 Int (getColumnType/800489773 var3815 var3643 var3369 var2508 var710)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var57 String (String_valueOf/1240665136 var1762)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var882 (Array Int Int) (s2b/-450202684 var3815 var57)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var767!4 (Array Int (Array Int Int)))
(assert (not (= var767!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!4 4) var882)) ; Statement: r0[4] = $r13 
(define-const var3136 var1310 (mysqlType/-289055874 var3631)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3263 var1310 var1310-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3136 var3263))) ; Cond: $r16 != $r15 
(define-const var646 var1310 (mysqlType/-289055874 var3631)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1080 Int (getJdbcType/389098195 var646)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2207 Int (cast-from-Int-to-Int var1080)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2810 String (Int_toString/-1770815874 var2207)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3349 (Array Int Int) (getBytes/1068683673 var2810)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var767!5 (Array Int (Array Int Int)))
(assert (not (= var767!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!5 5) var3349)) ; Statement: r0[5] = $r58 
(define-const var1427 var1310 (mysqlType/-289055874 var3631)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3982 String (getName/1307715079 var1427)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var44 (Array Int Int) (s2b/-450202684 var3815 var3982)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var767!6 (Array Int (Array Int Int)))
(assert (not (= var767!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!6 6) var44)) ; Statement: r0[6] = $r61 
(define-const var589 Int (datetimePrecision/-289055874 var3631)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var589 null-Int))) ; Cond: $r62 != null 
(define-const var2717 Int (datetimePrecision/-289055874 var3631)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var769 String (toString/483301002 var2717)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1114 (Array Int Int) (s2b/-450202684 var3815 var769)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var767!7 (Array Int (Array Int Int)))
(assert (not (= var767!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!7 7) var1114)) ; Statement: r0[7] = $r63 
(define-const var2200 Int (columnSize/-289055874 var3631)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var2200 null-Int))) ; Cond: $r20 != null 
(define-const var3039 Int (columnSize/-289055874 var3631)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3090 String (toString/483301002 var3039)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1231 (Array Int Int) (s2b/-450202684 var3815 var3090)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var767!8 (Array Int (Array Int Int)))
(assert (not (= var767!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!8 8) var1231)) ; Statement: r0[8] = $r64 
(define-const var1481 Int (decimalDigits/-289055874 var3631)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1481 null-Int))) ; Cond: $r23 != null 
(define-const var316 Int (decimalDigits/-289055874 var3631)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var709 String (toString/483301002 var316)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1138 (Array Int Int) (s2b/-450202684 var3815 var709)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var767!9 (Array Int (Array Int Int)))
(assert (not (= var767!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!9 9) var1138)) ; Statement: r0[9] = $r65 
(define-const var3611 Int (numPrecRadix/-289055874 var3631)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1552 String (Int_toString/1350422511 var3611)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var281 (Array Int Int) (s2b/-450202684 var3815 var1552)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var767!10 (Array Int (Array Int Int)))
(assert (not (= var767!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var767!10 10) var281)) ; Statement: r0[10] = $r27 
(define-const var1951 Int (nullability/-289055874 var3631)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1951 2)) (and (not (= var1951 1)) (and (not (= var1951 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var1144 String (var1956_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var655 var1810 (getExceptionInterceptor/-1244810802 var3815)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3041 var1790 (var3969_createSQLException/-1268047242 var1144 "S1000" var655)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2090_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var854-to-var3616=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1956_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3969_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1592=com.mysql.cj.jdbc.DatabaseMetaData, var3815=r1, var3461=r9, var377=r5, var228=r10, var2673=null_type, var3643=z1, var3369=z2, var2508=z3, var3793=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3631=r14, var710=z0, var519=i4, var485=$r54, var767=r0, var1524=$r53, var2090=com.mysql.cj.conf.RuntimeProperty, var2608=$r2, var3616=java.lang.Object, var433=$r4, var854=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var235=$r3, var2332=$r55, var2303=$r6, var1766=$r8, var2486=$r7, var1637=$r56, var2103=$r11, var1762=$i0, var57=$r12, var882=$r13, var1310=com.mysql.cj.MysqlType, var3136=$r16, var3263=$r15, var646=$r17, var1080=$i1, var2207=$s5, var2810=$r57, var3349=$r58, var1427=$r59, var3982=$r60, var44=$r61, var589=$r62, var2717=$r18, var769=$r19, var1114=$r63, var2200=$r20, var3039=$r21, var3090=$r22, var1231=$r64, var1481=$r23, var316=$r24, var709=$r25, var1138=$r65, var3611=$i2, var1552=$r26, var281=$r27, var1951=$i3, var1956=com.mysql.cj.Messages, var1144=$r49, var1810=com.mysql.cj.exceptions.ExceptionInterceptor, var655=$r48, var1790=java.sql.SQLException, var3969=com.mysql.cj.jdbc.exceptions.SQLError, var3041=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1592, r1=var3815, r9=var3461, r5=var377, r10=var228, null_type=var2673, z1=var3643, z2=var3369, z3=var2508, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3793, r14=var3631, z0=var710, i4=var519, $r54=var485, r0=var767, $r53=var1524, com.mysql.cj.conf.RuntimeProperty=var2090, $r2=var2608, java.lang.Object=var3616, $r4=var433, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var854, $r3=var235, $r55=var2332, $r6=var2303, $r8=var1766, $r7=var2486, $r56=var1637, $r11=var2103, $i0=var1762, $r12=var57, $r13=var882, com.mysql.cj.MysqlType=var1310, $r16=var3136, $r15=var3263, $r17=var646, $i1=var1080, $s5=var2207, $r57=var2810, $r58=var3349, $r59=var1427, $r60=var3982, $r61=var44, $r62=var589, $r18=var2717, $r19=var769, $r63=var1114, $r20=var2200, $r21=var3039, $r22=var3090, $r64=var1231, $r23=var1481, $r24=var316, $r25=var709, $r65=var1138, $i2=var3611, $r26=var1552, $r27=var281, $i3=var1951, com.mysql.cj.Messages=var1956, $r49=var1144, com.mysql.cj.exceptions.ExceptionInterceptor=var1810, $r48=var655, java.sql.SQLException=var1790, com.mysql.cj.jdbc.exceptions.SQLError=var3969, $r50=var3041}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16