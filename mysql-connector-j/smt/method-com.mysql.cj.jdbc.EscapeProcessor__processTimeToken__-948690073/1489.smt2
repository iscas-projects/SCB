(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2686 0)
(declare-sort var606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var606 var606)
(declare-const var3708 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3708 null-String)))
(declare-const var2778 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2778 null-String)))
(declare-const var3290 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3290 null-Bool)))
(declare-const var218 var606) ; Statement: r13 := @parameter3: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var218 null-var606)))
(assert true)
(define-const var3927 Int (indexOf/-1037706067 var2778 39)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39) 
(define-const var614 Int (+ var3927 1)) ; Statement: i1 = $i0 + 1 
(assert true)
(define-const var2754 Int (lastIndexOf/-1292097097 var2778 39)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(39) 
(define-const var472 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i1 == $i4 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (= var614 var472)) ; Cond: i1 == $i4 
(assert true)
;(assert (append/672562846 var3708 var2778)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3708!1 String)
(assert (= var3708!1 (str.++ var3708 var2778)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3708=r1, var2778=r0, var2686=null_type, var3290=z0, var606=com.mysql.cj.exceptions.ExceptionInterceptor, var218=r13, var3927=$i0, var614=i1, var2754=i2, var472=$i4}
; {r1=var3708, r0=var2778, null_type=var2686, z0=var3290, com.mysql.cj.exceptions.ExceptionInterceptor=var606, r13=var218, $i0=var3927, i1=var614, i2=var2754, $i4=var472}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r13 := @parameter3: com.mysql.cj.exceptions.ExceptionInterceptor;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39);	i1 = $i0 + 1;	i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(39);	$i4 = (int) -1;	if i1 == $i4 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	goto [?= return];	return
;block_num 3