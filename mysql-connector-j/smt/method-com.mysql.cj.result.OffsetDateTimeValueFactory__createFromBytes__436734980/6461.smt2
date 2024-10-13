(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var824 0)
(declare-sort var201 0)
(declare-sort var3256 0)
(declare-sort var3833 0)
(declare-sort var2818 0)
(declare-sort var71 0)
(declare-sort var2694 0)
(declare-sort var103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEncoding/1735483214 (var201) String)
(declare-fun var3256_toString/-1641697207 ((Array Int Int) Int Int String) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var3833_isDate/636203067 (String) Bool)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3833_getDate/-1793521473 ((Array Int Int) Int Int) var2818)
(declare-fun createFromDate/-1315473238 (var2694 var2818) var71)
(declare-fun cast-from-var824-to-var2694 (var824) var2694)
(declare-fun cast-from-var71-to-var103 (var71) var103)
(declare-const null-var824 var824)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var201 var201)
(declare-const var1416 var824) ; Statement: r5 := @this: com.mysql.cj.result.OffsetDateTimeValueFactory 
(assert (not (= var1416 null-var824)))
(declare-const var2257 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2257 null-__Array__Int__Int__)))
(declare-const var775 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var775 null-Int)))
(declare-const var736 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var736 null-Int)))
(declare-const var3544 var201) ; Statement: r1 := @parameter3: com.mysql.cj.result.Field 
(assert (not (= var3544 null-var201)))
 ; Statement: if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(assert (not (= var736 0))) ; Cond: i0 != 0 
(assert true)
(define-const var1784 String (getEncoding/1735483214 var3544)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(define-const var144 String (var3256_toString/-1641697207 var2257 var775 var736 var1784)) ; Statement: $r20 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2) 
(assert true)
(define-const var1439 (Array Int Int) (getBytes/1068683673 var144)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.String: byte[] getBytes()>() 
(define-const var899 Bool (var3833_isDate/636203067 var144)) ; Statement: $z0 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isDate(java.lang.String)>($r20) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isTime(java.lang.String)>($r20) 
(assert (not (= (ite var899 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var815 Int (getLength-Arr-Int-1 var1439)) ; Statement: $i6 = lengthof $r21 
(define-const var2305 var2818 (var3833_getDate/-1793521473 var1439 0 var815)) ; Statement: $r12 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: com.mysql.cj.protocol.InternalDate getDate(byte[],int,int)>($r21, 0, $i6) 
(assert true)
(define-const var392 var71 (createFromDate/-1315473238 (cast-from-var824-to-var2694 var1416) var2305)) ; Statement: $r13 = virtualinvoke r5.<com.mysql.cj.result.OffsetDateTimeValueFactory: java.lang.Object createFromDate(com.mysql.cj.protocol.InternalDate)>($r12) 
(define-const var2072 var103 (cast-from-var71-to-var103 var392)) ; Statement: $r14 = (java.time.OffsetDateTime) $r13 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getEncoding/1735483214=([com.mysql.cj.result.Field], java.lang.String), var3256_toString/-1641697207=([byte[], int, int, java.lang.String], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), var3833_isDate/636203067=([java.lang.String], boolean), getLength-Arr-Int-1=([byte[]], int), var3833_getDate/-1793521473=([byte[], int, int], com.mysql.cj.protocol.InternalDate), createFromDate/-1315473238=([com.mysql.cj.result.AbstractDateTimeValueFactory, com.mysql.cj.protocol.InternalDate], java.lang.Object), cast-from-var824-to-var2694=([com.mysql.cj.result.OffsetDateTimeValueFactory], com.mysql.cj.result.AbstractDateTimeValueFactory), cast-from-var71-to-var103=([java.lang.Object], java.time.OffsetDateTime)}
; {var824=com.mysql.cj.result.OffsetDateTimeValueFactory, var1416=r5, var2257=r0, var775=i1, var736=i0, var201=com.mysql.cj.result.Field, var3544=r1, var1784=$r2, var3256=com.mysql.cj.util.StringUtils, var144=$r20, var1439=$r21, var3833=com.mysql.cj.protocol.a.MysqlTextValueDecoder, var899=$z0, var815=$i6, var2818=com.mysql.cj.protocol.InternalDate, var2305=$r12, var71=java.lang.Object, var2694=com.mysql.cj.result.AbstractDateTimeValueFactory, var392=$r13, var103=java.time.OffsetDateTime, var2072=$r14}
; {com.mysql.cj.result.OffsetDateTimeValueFactory=var824, r5=var1416, r0=var2257, i1=var775, i0=var736, com.mysql.cj.result.Field=var201, r1=var3544, $r2=var1784, com.mysql.cj.util.StringUtils=var3256, $r20=var144, $r21=var1439, com.mysql.cj.protocol.a.MysqlTextValueDecoder=var3833, $z0=var899, $i6=var815, com.mysql.cj.protocol.InternalDate=var2818, $r12=var2305, java.lang.Object=var71, com.mysql.cj.result.AbstractDateTimeValueFactory=var2694, $r13=var392, java.time.OffsetDateTime=var103, $r14=var2072}
;seq <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r5 := @this: com.mysql.cj.result.OffsetDateTimeValueFactory;	r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: com.mysql.cj.result.Field;	if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r20 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2);	$r21 = virtualinvoke $r20.<java.lang.String: byte[] getBytes()>();	$z0 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isDate(java.lang.String)>($r20);	if $z0 == 0 goto $z1 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isTime(java.lang.String)>($r20);	$i6 = lengthof $r21;	$r12 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: com.mysql.cj.protocol.InternalDate getDate(byte[],int,int)>($r21, 0, $i6);	$r13 = virtualinvoke r5.<com.mysql.cj.result.OffsetDateTimeValueFactory: java.lang.Object createFromDate(com.mysql.cj.protocol.InternalDate)>($r12);	$r14 = (java.time.OffsetDateTime) $r13;	return $r14
;block_num 3