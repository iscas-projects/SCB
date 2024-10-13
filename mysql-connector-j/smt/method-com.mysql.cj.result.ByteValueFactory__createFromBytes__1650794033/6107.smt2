(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1365 0)
(declare-sort var3314 0)
(declare-sort var195 0)
(declare-sort var2750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEncoding/1735483214 (var3314) String)
(declare-fun var195_toString/-1641697207 ((Array Int Int) Int Int String) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun jdbcCompliantTruncationForReads/-950792329 (var2750) Bool)
(declare-fun cast-from-var1365-to-var2750 (var1365) var2750)
(declare-fun Int_valueOf/-1256543613 (Int) Int)
(declare-const null-var1365 var1365)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var3314 var3314)
(declare-const var368 var1365) ; Statement: r3 := @this: com.mysql.cj.result.ByteValueFactory 
(assert (not (= var368 null-var1365)))
(declare-const var2722 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2722 null-__Array__Int__Int__)))
(declare-const var1512 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1512 null-Int)))
(declare-const var3002 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3002 null-Int)))
(declare-const var1932 var3314) ; Statement: r1 := @parameter3: com.mysql.cj.result.Field 
(assert (not (= var1932 null-var3314)))
 ; Statement: if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(assert (not (= var3002 0))) ; Cond: i0 != 0 
(assert true)
(define-const var3069 String (getEncoding/1735483214 var1932)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(define-const var3596 String (var195_toString/-1641697207 var2722 var1512 var3002 var3069)) ; Statement: $r14 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2) 
(assert true)
(define-const var1750 (Array Int Int) (getBytes/1068683673 var3596)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.String: byte[] getBytes()>() 
(define-const var2256 Bool (jdbcCompliantTruncationForReads/-950792329 (cast-from-var1365-to-var2750 var368))) ; Statement: $z0 = r3.<com.mysql.cj.result.ByteValueFactory: boolean jdbcCompliantTruncationForReads> 
 ; Statement: if $z0 == 0 goto $b2 = $r15[0] 
(assert (= (ite var2256 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2367 Int (select var1750 0)) ; Statement: $b2 = $r15[0] 
(define-const var1569 Int (Int_valueOf/-1256543613 var2367)) ; Statement: $r4 = staticinvoke <java.lang.Byte: java.lang.Byte valueOf(byte)>($b2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getEncoding/1735483214=([com.mysql.cj.result.Field], java.lang.String), var195_toString/-1641697207=([byte[], int, int, java.lang.String], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), jdbcCompliantTruncationForReads/-950792329=([com.mysql.cj.result.DefaultValueFactory], boolean), cast-from-var1365-to-var2750=([com.mysql.cj.result.ByteValueFactory], com.mysql.cj.result.DefaultValueFactory), Int_valueOf/-1256543613=([byte], java.lang.Byte)}
; {var1365=com.mysql.cj.result.ByteValueFactory, var368=r3, var2722=r0, var1512=i1, var3002=i0, var3314=com.mysql.cj.result.Field, var1932=r1, var3069=$r2, var195=com.mysql.cj.util.StringUtils, var3596=$r14, var1750=$r15, var2750=com.mysql.cj.result.DefaultValueFactory, var2256=$z0, var2367=$b2, var1569=$r4}
; {com.mysql.cj.result.ByteValueFactory=var1365, r3=var368, r0=var2722, i1=var1512, i0=var3002, com.mysql.cj.result.Field=var3314, r1=var1932, $r2=var3069, com.mysql.cj.util.StringUtils=var195, $r14=var3596, $r15=var1750, com.mysql.cj.result.DefaultValueFactory=var2750, $z0=var2256, $b2=var2367, $r4=var1569}
;seq <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r3 := @this: com.mysql.cj.result.ByteValueFactory;	r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: com.mysql.cj.result.Field;	if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r14 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2);	$r15 = virtualinvoke $r14.<java.lang.String: byte[] getBytes()>();	$z0 = r3.<com.mysql.cj.result.ByteValueFactory: boolean jdbcCompliantTruncationForReads>;	if $z0 == 0 goto $b2 = $r15[0];	$b2 = $r15[0];	$r4 = staticinvoke <java.lang.Byte: java.lang.Byte valueOf(byte)>($b2);	return $r4
;block_num 3