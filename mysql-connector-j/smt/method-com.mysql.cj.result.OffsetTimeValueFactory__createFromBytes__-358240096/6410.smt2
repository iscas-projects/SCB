(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var561 0)
(declare-sort var175 0)
(declare-sort var3863 0)
(declare-sort var2183 0)
(declare-sort var3519 0)
(declare-sort var398 0)
(declare-sort var3880 0)
(declare-sort var1232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEncoding/1735483214 (var175) String)
(declare-fun var3863_toString/-1641697207 ((Array Int Int) Int Int String) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var2183_isDate/636203067 (String) Bool)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2183_getDate/-1793521473 ((Array Int Int) Int Int) var3519)
(declare-fun createFromDate/-1315473238 (var3880 var3519) var398)
(declare-fun cast-from-var561-to-var3880 (var561) var3880)
(declare-fun cast-from-var398-to-var1232 (var398) var1232)
(declare-const null-var561 var561)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var175 var175)
(declare-const var2189 var561) ; Statement: r4 := @this: com.mysql.cj.result.OffsetTimeValueFactory 
(assert (not (= var2189 null-var561)))
(declare-const var269 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var269 null-__Array__Int__Int__)))
(declare-const var2127 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2127 null-Int)))
(declare-const var1342 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1342 null-Int)))
(declare-const var1078 var175) ; Statement: r1 := @parameter3: com.mysql.cj.result.Field 
(assert (not (= var1078 null-var175)))
 ; Statement: if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(assert (not (= var1342 0))) ; Cond: i0 != 0 
(assert true)
(define-const var1203 String (getEncoding/1735483214 var1078)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(define-const var2970 String (var3863_toString/-1641697207 var269 var2127 var1342 var1203)) ; Statement: $r19 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2) 
(assert true)
(define-const var1322 (Array Int Int) (getBytes/1068683673 var2970)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.String: byte[] getBytes()>() 
(define-const var2391 Bool (var2183_isDate/636203067 var2970)) ; Statement: $z0 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isDate(java.lang.String)>($r19) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isTime(java.lang.String)>($r19) 
(assert (not (= (ite var2391 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3914 Int (getLength-Arr-Int-1 var1322)) ; Statement: $i6 = lengthof $r20 
(define-const var1665 var3519 (var2183_getDate/-1793521473 var1322 0 var3914)) ; Statement: $r11 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: com.mysql.cj.protocol.InternalDate getDate(byte[],int,int)>($r20, 0, $i6) 
(assert true)
(define-const var374 var398 (createFromDate/-1315473238 (cast-from-var561-to-var3880 var2189) var1665)) ; Statement: $r12 = virtualinvoke r4.<com.mysql.cj.result.OffsetTimeValueFactory: java.lang.Object createFromDate(com.mysql.cj.protocol.InternalDate)>($r11) 
(define-const var2692 var1232 (cast-from-var398-to-var1232 var374)) ; Statement: $r13 = (java.time.OffsetTime) $r12 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getEncoding/1735483214=([com.mysql.cj.result.Field], java.lang.String), var3863_toString/-1641697207=([byte[], int, int, java.lang.String], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), var2183_isDate/636203067=([java.lang.String], boolean), getLength-Arr-Int-1=([byte[]], int), var2183_getDate/-1793521473=([byte[], int, int], com.mysql.cj.protocol.InternalDate), createFromDate/-1315473238=([com.mysql.cj.result.AbstractDateTimeValueFactory, com.mysql.cj.protocol.InternalDate], java.lang.Object), cast-from-var561-to-var3880=([com.mysql.cj.result.OffsetTimeValueFactory], com.mysql.cj.result.AbstractDateTimeValueFactory), cast-from-var398-to-var1232=([java.lang.Object], java.time.OffsetTime)}
; {var561=com.mysql.cj.result.OffsetTimeValueFactory, var2189=r4, var269=r0, var2127=i1, var1342=i0, var175=com.mysql.cj.result.Field, var1078=r1, var1203=$r2, var3863=com.mysql.cj.util.StringUtils, var2970=$r19, var1322=$r20, var2183=com.mysql.cj.protocol.a.MysqlTextValueDecoder, var2391=$z0, var3914=$i6, var3519=com.mysql.cj.protocol.InternalDate, var1665=$r11, var398=java.lang.Object, var3880=com.mysql.cj.result.AbstractDateTimeValueFactory, var374=$r12, var1232=java.time.OffsetTime, var2692=$r13}
; {com.mysql.cj.result.OffsetTimeValueFactory=var561, r4=var2189, r0=var269, i1=var2127, i0=var1342, com.mysql.cj.result.Field=var175, r1=var1078, $r2=var1203, com.mysql.cj.util.StringUtils=var3863, $r19=var2970, $r20=var1322, com.mysql.cj.protocol.a.MysqlTextValueDecoder=var2183, $z0=var2391, $i6=var3914, com.mysql.cj.protocol.InternalDate=var3519, $r11=var1665, java.lang.Object=var398, com.mysql.cj.result.AbstractDateTimeValueFactory=var3880, $r12=var374, java.time.OffsetTime=var1232, $r13=var2692}
;seq <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r4 := @this: com.mysql.cj.result.OffsetTimeValueFactory;	r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: com.mysql.cj.result.Field;	if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r19 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2);	$r20 = virtualinvoke $r19.<java.lang.String: byte[] getBytes()>();	$z0 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isDate(java.lang.String)>($r19);	if $z0 == 0 goto $z1 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: boolean isTime(java.lang.String)>($r19);	$i6 = lengthof $r20;	$r11 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: com.mysql.cj.protocol.InternalDate getDate(byte[],int,int)>($r20, 0, $i6);	$r12 = virtualinvoke r4.<com.mysql.cj.result.OffsetTimeValueFactory: java.lang.Object createFromDate(com.mysql.cj.protocol.InternalDate)>($r11);	$r13 = (java.time.OffsetTime) $r12;	return $r13
;block_num 3