(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3325 0)
(declare-sort var1831 0)
(declare-sort var1431 0)
(declare-sort var1709 0)
(declare-sort var3014 0)
(declare-sort var2808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEncoding/1735483214 (var1831) String)
(declare-fun var1431_toString/-1641697207 ((Array Int Int) Int Int String) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1709_getDouble/459699498 ((Array Int Int) Int Int) Float64)
(declare-fun doubleValue/-2921339 (Float64) Float64)
(declare-fun createFromDouble/-781142229 (var2808 Float64) var3014)
(declare-fun cast-from-var3325-to-var2808 (var3325) var2808)
(declare-const null-var3325 var3325)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var1831 var1831)
(declare-const var618 var3325) ; Statement: r3 := @this: com.mysql.cj.result.AbstractNumericValueFactory 
(assert (not (= var618 null-var3325)))
(declare-const var1261 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1261 null-__Array__Int__Int__)))
(declare-const var1517 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1517 null-Int)))
(declare-const var442 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var442 null-Int)))
(declare-const var2758 var1831) ; Statement: r1 := @parameter3: com.mysql.cj.result.Field 
(assert (not (= var2758 null-var1831)))
 ; Statement: if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(assert (not (= var442 0))) ; Cond: i0 != 0 
(assert true)
(define-const var2436 String (getEncoding/1735483214 var2758)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>() 
(define-const var932 String (var1431_toString/-1641697207 var1261 var1517 var442 var2436)) ; Statement: $r13 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2) 
(assert true)
(define-const var2041 (Array Int Int) (getBytes/1068683673 var932)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.String: byte[] getBytes()>() 
(assert true)
(define-const var2770 Bool (contains/1009244746 var932 (cast-from-String-to-String "e"))) ; Statement: $z0 = virtualinvoke $r13.<java.lang.String: boolean contains(java.lang.CharSequence)>("e") 
 ; Statement: if $z0 != 0 goto $i7 = lengthof $r14 
(assert (not (= (ite var2770 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3246 Int (getLength-Arr-Int-1 var2041)) ; Statement: $i7 = lengthof $r14 
(define-const var988 Float64 (var1709_getDouble/459699498 var2041 0 var3246)) ; Statement: $r16 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: java.lang.Double getDouble(byte[],int,int)>($r14, 0, $i7) 
(assert true)
(define-const var3000 Float64 (doubleValue/-2921339 var988)) ; Statement: $d0 = virtualinvoke $r16.<java.lang.Double: double doubleValue()>() 
(assert true)
(define-const var3016 var3014 (createFromDouble/-781142229 (cast-from-var3325-to-var2808 var618) var3000)) ; Statement: $r17 = virtualinvoke r3.<com.mysql.cj.result.AbstractNumericValueFactory: java.lang.Object createFromDouble(double)>($d0) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getEncoding/1735483214=([com.mysql.cj.result.Field], java.lang.String), var1431_toString/-1641697207=([byte[], int, int, java.lang.String], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), getLength-Arr-Int-1=([byte[]], int), var1709_getDouble/459699498=([byte[], int, int], java.lang.Double), doubleValue/-2921339=([java.lang.Double], double), createFromDouble/-781142229=([com.mysql.cj.result.DefaultValueFactory, double], java.lang.Object), cast-from-var3325-to-var2808=([com.mysql.cj.result.AbstractNumericValueFactory], com.mysql.cj.result.DefaultValueFactory)}
; {var3325=com.mysql.cj.result.AbstractNumericValueFactory, var618=r3, var1261=r0, var1517=i1, var442=i0, var1831=com.mysql.cj.result.Field, var2758=r1, var2436=$r2, var1431=com.mysql.cj.util.StringUtils, var932=$r13, var2041=$r14, var2770=$z0, var3246=$i7, var1709=com.mysql.cj.protocol.a.MysqlTextValueDecoder, var988=$r16, var3000=$d0, var3014=java.lang.Object, var2808=com.mysql.cj.result.DefaultValueFactory, var3016=$r17}
; {com.mysql.cj.result.AbstractNumericValueFactory=var3325, r3=var618, r0=var1261, i1=var1517, i0=var442, com.mysql.cj.result.Field=var1831, r1=var2758, $r2=var2436, com.mysql.cj.util.StringUtils=var1431, $r13=var932, $r14=var2041, $z0=var2770, $i7=var3246, com.mysql.cj.protocol.a.MysqlTextValueDecoder=var1709, $r16=var988, $d0=var3000, java.lang.Object=var3014, com.mysql.cj.result.DefaultValueFactory=var2808, $r17=var3016}
;seq <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: byte[] getBytes()>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @this: com.mysql.cj.result.AbstractNumericValueFactory;	r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: com.mysql.cj.result.Field;	if i0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r2 = virtualinvoke r1.<com.mysql.cj.result.Field: java.lang.String getEncoding()>();	$r13 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toString(byte[],int,int,java.lang.String)>(r0, i1, i0, $r2);	$r14 = virtualinvoke $r13.<java.lang.String: byte[] getBytes()>();	$z0 = virtualinvoke $r13.<java.lang.String: boolean contains(java.lang.CharSequence)>("e");	if $z0 != 0 goto $i7 = lengthof $r14;	$i7 = lengthof $r14;	$r16 = staticinvoke <com.mysql.cj.protocol.a.MysqlTextValueDecoder: java.lang.Double getDouble(byte[],int,int)>($r14, 0, $i7);	$d0 = virtualinvoke $r16.<java.lang.Double: double doubleValue()>();	$r17 = virtualinvoke r3.<com.mysql.cj.result.AbstractNumericValueFactory: java.lang.Object createFromDouble(double)>($d0);	return $r17
;block_num 3