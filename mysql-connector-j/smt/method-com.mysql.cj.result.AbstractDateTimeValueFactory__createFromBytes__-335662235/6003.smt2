(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2414 0)
(declare-sort var1416 0)
(declare-sort var377 0)
(declare-sort var1120 0)
(declare-sort var523 0)
(declare-sort var1855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEncoding/1735483214 (var1416) String)
(declare-fun var377_toString/-1641697207 ((Array Int Int) Int Int String) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var1120_isDate/636203067 (String) Bool)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1120_getDate/-1793521473 ((Array Int Int) Int Int) var523)
(declare-fun createFromDate/-1315473238 (var2414 var523) var1855)
(declare-const null-var2414 var2414)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var1416 var1416)
(declare-const var1822 var2414) ; Statement: r5 := @this: com.mysql.cj.result.AbstractDateTimeValueFactory 
(assert (not (= var1822 null-var2414)))
(declare-const var2201 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2201 null-__Array__Int__Int__)))
(declare-const var1270 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1270 null-Int)))
(declare-const var2840 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2840 null-Int)))
(declare-const var1873 var1416) ; Statement: r1 := @parameter3: com.mysql.cj.result.Field 
(assert (not (= var1873 null-var1416)))
 ; Statement: if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(assert (not (= var2840 0))) ; Cond: i0 != 0 
(assert true)
(define-const var1453 String (getEncoding/1735483214 var1873)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(define-const var1240 String (var377_toString/-1641697207 var2201 var1270 var2840 var1453)) ; Statement: $r19 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2) 
(assert true)
(define-const var3825 (Array Int Int) (getBytes/1068683673 var1240)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.String: byte[] getBytes()>() 
(define-const var2097 Bool (var1120_isDate/636203067 var1240)) ; Statement: $z0 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isDate(java.lang.String)>($r19) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isTime(java.lang.String)>($r19) 
(assert (not (= (ite var2097 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3428 Int (getLength-Arr-Int-1 var3825)) ; Statement: $i6 = lengthof $r20 
(define-const var723 var523 (var1120_getDate/-1793521473 var3825 0 var3428)) ; Statement: $r12 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: com.mysql.cj.protocol.InternalDate getDate(byte[],int,int)>($r20, 0, $i6) 
(assert true)
(define-const var252 var1855 (createFromDate/-1315473238 var1822 var723)) ; Statement: $r13 = virtualinvoke r5.<com.mysql.cj.result.AbstractDateTimeValueFactory: java.lang.Object createFromDate(com.mysql.cj.protocol.InternalDate)>($r12) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getEncoding/1735483214=([com.mysql.cj.result.Field], java.lang.String), var377_toString/-1641697207=([byte[], int, int, java.lang.String], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), var1120_isDate/636203067=([java.lang.String], boolean), getLength-Arr-Int-1=([byte[]], int), var1120_getDate/-1793521473=([byte[], int, int], com.mysql.cj.protocol.InternalDate), createFromDate/-1315473238=([com.mysql.cj.result.AbstractDateTimeValueFactory, com.mysql.cj.protocol.InternalDate], java.lang.Object)}
; {var2414=com.mysql.cj.result.AbstractDateTimeValueFactory, var1822=r5, var2201=r0, var1270=i1, var2840=i0, var1416=com.mysql.cj.result.Field, var1873=r1, var1453=$r2, var377=com.mysql.cj.util.StringUtils, var1240=$r19, var3825=$r20, var1120=com.mysql.cj.protocol.a.MysqlTextValueDecoder, var2097=$z0, var3428=$i6, var523=com.mysql.cj.protocol.InternalDate, var723=$r12, var1855=java.lang.Object, var252=$r13}
; {com.mysql.cj.result.AbstractDateTimeValueFactory=var2414, r5=var1822, r0=var2201, i1=var1270, i0=var2840, com.mysql.cj.result.Field=var1416, r1=var1873, $r2=var1453, com.mysql.cj.util.StringUtils=var377, $r19=var1240, $r20=var3825, com.mysql.cj.protocol.a.MysqlTextValueDecoder=var1120, $z0=var2097, $i6=var3428, com.mysql.cj.protocol.InternalDate=var523, $r12=var723, java.lang.Object=var1855, $r13=var252}
;seq <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r5 := @this: com.mysql.cj.result.AbstractDateTimeValueFactory;	r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: com.mysql.cj.result.Field;	if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r19 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2);	$r20 = virtualinvoke $r19.<java.lang.String: byte[] getBytes()>();	$z0 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isDate(java.lang.String)>($r19);	if $z0 == 0 goto $z1 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isTime(java.lang.String)>($r19);	$i6 = lengthof $r20;	$r12 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: com.mysql.cj.protocol.InternalDate getDate(byte[],int,int)>($r20, 0, $i6);	$r13 = virtualinvoke r5.<com.mysql.cj.result.AbstractDateTimeValueFactory: java.lang.Object createFromDate(com.mysql.cj.protocol.InternalDate)>($r12);	return $r13
;block_num 3