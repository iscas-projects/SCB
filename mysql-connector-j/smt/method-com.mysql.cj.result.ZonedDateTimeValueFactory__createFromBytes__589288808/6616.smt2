(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var2479 0)
(declare-sort var3684 0)
(declare-sort var766 0)
(declare-sort var3477 0)
(declare-sort var583 0)
(declare-sort var998 0)
(declare-sort var3835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEncoding/1735483214 (var2479) String)
(declare-fun var3684_toString/-1641697207 ((Array Int Int) Int Int String) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var766_isDate/636203067 (String) Bool)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var766_getDate/-1793521473 ((Array Int Int) Int Int) var3477)
(declare-fun createFromDate/-1315473238 (var998 var3477) var583)
(declare-fun cast-from-var1743-to-var998 (var1743) var998)
(declare-fun cast-from-var583-to-var3835 (var583) var3835)
(declare-const null-var1743 var1743)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var2479 var2479)
(declare-const var2545 var1743) ; Statement: r5 := @this: com.mysql.cj.result.ZonedDateTimeValueFactory 
(assert (not (= var2545 null-var1743)))
(declare-const var1913 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1913 null-__Array__Int__Int__)))
(declare-const var2719 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2719 null-Int)))
(declare-const var1806 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1806 null-Int)))
(declare-const var3648 var2479) ; Statement: r1 := @parameter3: com.mysql.cj.result.Field 
(assert (not (= var3648 null-var2479)))
 ; Statement: if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(assert (not (= var1806 0))) ; Cond: i0 != 0 
(assert true)
(define-const var3733 String (getEncoding/1735483214 var3648)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(define-const var3803 String (var3684_toString/-1641697207 var1913 var2719 var1806 var3733)) ; Statement: $r20 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2) 
(assert true)
(define-const var1240 (Array Int Int) (getBytes/1068683673 var3803)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.String: byte[] getBytes()>() 
(define-const var2572 Bool (var766_isDate/636203067 var3803)) ; Statement: $z0 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isDate(java.lang.String)>($r20) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isTime(java.lang.String)>($r20) 
(assert (not (= (ite var2572 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2565 Int (getLength-Arr-Int-1 var1240)) ; Statement: $i6 = lengthof $r21 
(define-const var1799 var3477 (var766_getDate/-1793521473 var1240 0 var2565)) ; Statement: $r12 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: com.mysql.cj.protocol.InternalDate getDate(byte[],int,int)>($r21, 0, $i6) 
(assert true)
(define-const var940 var583 (createFromDate/-1315473238 (cast-from-var1743-to-var998 var2545) var1799)) ; Statement: $r13 = virtualinvoke r5.<com.mysql.cj.result.ZonedDateTimeValueFactory: java.lang.Object createFromDate(com.mysql.cj.protocol.InternalDate)>($r12) 
(define-const var3504 var3835 (cast-from-var583-to-var3835 var940)) ; Statement: $r14 = (java.time.ZonedDateTime) $r13 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getEncoding/1735483214=([com.mysql.cj.result.Field], java.lang.String), var3684_toString/-1641697207=([byte[], int, int, java.lang.String], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), var766_isDate/636203067=([java.lang.String], boolean), getLength-Arr-Int-1=([byte[]], int), var766_getDate/-1793521473=([byte[], int, int], com.mysql.cj.protocol.InternalDate), createFromDate/-1315473238=([com.mysql.cj.result.AbstractDateTimeValueFactory, com.mysql.cj.protocol.InternalDate], java.lang.Object), cast-from-var1743-to-var998=([com.mysql.cj.result.ZonedDateTimeValueFactory], com.mysql.cj.result.AbstractDateTimeValueFactory), cast-from-var583-to-var3835=([java.lang.Object], java.time.ZonedDateTime)}
; {var1743=com.mysql.cj.result.ZonedDateTimeValueFactory, var2545=r5, var1913=r0, var2719=i1, var1806=i0, var2479=com.mysql.cj.result.Field, var3648=r1, var3733=$r2, var3684=com.mysql.cj.util.StringUtils, var3803=$r20, var1240=$r21, var766=com.mysql.cj.protocol.a.MysqlTextValueDecoder, var2572=$z0, var2565=$i6, var3477=com.mysql.cj.protocol.InternalDate, var1799=$r12, var583=java.lang.Object, var998=com.mysql.cj.result.AbstractDateTimeValueFactory, var940=$r13, var3835=java.time.ZonedDateTime, var3504=$r14}
; {com.mysql.cj.result.ZonedDateTimeValueFactory=var1743, r5=var2545, r0=var1913, i1=var2719, i0=var1806, com.mysql.cj.result.Field=var2479, r1=var3648, $r2=var3733, com.mysql.cj.util.StringUtils=var3684, $r20=var3803, $r21=var1240, com.mysql.cj.protocol.a.MysqlTextValueDecoder=var766, $z0=var2572, $i6=var2565, com.mysql.cj.protocol.InternalDate=var3477, $r12=var1799, java.lang.Object=var583, com.mysql.cj.result.AbstractDateTimeValueFactory=var998, $r13=var940, java.time.ZonedDateTime=var3835, $r14=var3504}
;seq <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r5 := @this: com.mysql.cj.result.ZonedDateTimeValueFactory;	r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: com.mysql.cj.result.Field;	if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r20 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2);	$r21 = virtualinvoke $r20.<java.lang.String: byte[] getBytes()>();	$z0 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isDate(java.lang.String)>($r20);	if $z0 == 0 goto $z1 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isTime(java.lang.String)>($r20);	$i6 = lengthof $r21;	$r12 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: com.mysql.cj.protocol.InternalDate getDate(byte[],int,int)>($r21, 0, $i6);	$r13 = virtualinvoke r5.<com.mysql.cj.result.ZonedDateTimeValueFactory: java.lang.Object createFromDate(com.mysql.cj.protocol.InternalDate)>($r12);	$r14 = (java.time.ZonedDateTime) $r13;	return $r14
;block_num 3