(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2722 0)
(declare-sort var3141 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3141-init () (Array Int var3141))
(declare-fun var2437_notNull/515149844 (var3141 String (Array Int var3141)) var3141)
(declare-fun cast-from-String-to-var3141 (String) var3141)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-const null-String String)
(declare-const var1876 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1876 null-String)))
(define-const var2776 (Array Int var3141) arr-var3141-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var2437_notNull/515149844 (cast-from-String-to-var3141 var1876) "ASCII must not be null!" var2776)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r6, "ASCII must not be null!", $r0) 

(declare-const var1876!1 String)
(declare-const var940 String)
(declare-const var2776!1 (Array Int var3141))
(assert true)
(define-const var1535 Int (length/-134980193 var1876!1)) ; Statement: i37 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var2519 Int (mod var1535 2)) ; Statement: i0 = i37 % 2 
 ; Statement: if i0 == 0 goto (branch) 
(assert (= var2519 0)) ; Cond: i0 == 0 
 ; Statement: if i37 < 2 goto $r1 = newarray (byte)[i37] 
(assert (< var1535 2)) ; Cond: i37 < 2 
(define-const var3671 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (byte)[i37] 
(assert true)
(define-const var878 (Array Int Int) (getBytes/1068683673 var1876!1)) ; Statement: $r2 = virtualinvoke r6.<java.lang.String: byte[] getBytes()>() 
(define-const var2326 Int 0) ; Statement: i38 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var115 Int (length/-134980193 var1876!1)) ; Statement: $i39 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var3145 Int (div var115 2)) ; Statement: $i40 = $i39 / 2 
 ; Statement: if i38 >= $i40 goto return $r1 
(assert (>= var2326 var3145)) ; Cond: i38 >= $i40 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3141-init=([], java.lang.Object[]), var2437_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3141=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), arr-Int-init=([], byte[]), getBytes/1068683673=([java.lang.String], byte[])}
; {var1876=r6, var2722=null_type, var3141=java.lang.Object, var2776=$r0, var2437=cn.hutool.core.lang.Assert, var940="ASCII must not be null!", var1535=i37, var2519=i0, var3671=$r1, var878=$r2, var2326=i38, var115=$i39, var3145=$i40}
; {r6=var1876, null_type=var2722, java.lang.Object=var3141, $r0=var2776, cn.hutool.core.lang.Assert=var2437, "ASCII must not be null!"=var940, i37=var1535, i0=var2519, $r1=var3671, $r2=var878, i38=var2326, $i39=var115, $i40=var3145}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r6 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r6, "ASCII must not be null!", $r0);	i37 = virtualinvoke r6.<java.lang.String: int length()>();	i0 = i37 % 2;	if i0 == 0 goto (branch);	if i37 < 2 goto $r1 = newarray (byte)[i37];	$r1 = newarray (byte)[i37];	$r2 = virtualinvoke r6.<java.lang.String: byte[] getBytes()>();	i38 = 0;	$i39 = virtualinvoke r6.<java.lang.String: int length()>();	$i40 = $i39 / 2;	if i38 >= $i40 goto return $r1;	return $r1
;block_num 5