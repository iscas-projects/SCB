(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1929 0)
(declare-sort var1582 0)
(declare-sort var3363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1929 var1929)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3363 var3363)
(declare-const var3375 var1929) ; Statement: r3 := @parameter0: java.util.TimeZone 
(assert (not (= var3375 null-var1929)))
(declare-const var523 String) ; Statement: r1 := @parameter1: java.lang.StringBuilder 
(assert (not (= var523 null-String)))
(declare-const var2124 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2124 null-String)))
(declare-const var2482 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2482 null-Bool)))
(declare-const var850 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var850 null-Bool)))
(declare-const var2221 var3363) ; Statement: r10 := @parameter5: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var2221 null-var3363)))
(assert true)
(define-const var3962 Int (indexOf/-1037706067 var2124 39)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39) 
(define-const var2104 Int (+ var3962 1)) ; Statement: i1 = $i0 + 1 
(assert true)
(define-const var2207 Int (lastIndexOf/-1292097097 var2124 39)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(39) 
(define-const var292 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i1 == $i6 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= var2104 var292)) ; Cond: i1 == $i6 
(assert true)
;(assert (append/672562846 var523 var2124)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var523!1 String)
(assert (= var523!1 (str.++ var523 var2124)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1929=java.util.TimeZone, var3375=r3, var523=r1, var2124=r0, var1582=null_type, var2482=z1, var850=z0, var3363=com.mysql.cj.exceptions.ExceptionInterceptor, var2221=r10, var3962=$i0, var2104=i1, var2207=i2, var292=$i6}
; {java.util.TimeZone=var1929, r3=var3375, r1=var523, r0=var2124, null_type=var1582, z1=var2482, z0=var850, com.mysql.cj.exceptions.ExceptionInterceptor=var3363, r10=var2221, $i0=var3962, i1=var2104, i2=var2207, $i6=var292}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @parameter0: java.util.TimeZone;	r1 := @parameter1: java.lang.StringBuilder;	r0 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z0 := @parameter4: boolean;	r10 := @parameter5: com.mysql.cj.exceptions.ExceptionInterceptor;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39);	i1 = $i0 + 1;	i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(39);	$i6 = (int) -1;	if i1 == $i6 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	goto [?= return];	return
;block_num 3