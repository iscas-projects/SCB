(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var594 0)
(declare-sort var1140 0)
(declare-sort var1043 0)
(declare-sort var2608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1043_size$default/-1974550375 (String Int Int Int var2608) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var594 var594)
(declare-const null-String String)
(declare-const null-var2608 var2608)
(declare-const var2966 var594) ; Statement: r1 := @this: okhttp3.internal.tls.OkHostnameVerifier 
(assert (not (= var2966 null-var594)))
(declare-const var3323 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var3323 null-String)))
(assert true)
(define-const var312 Int (length/-134980193 var3323)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var1394 Int (var1043_size$default/-1974550375 var3323 0 0 3 null-var2608)) ; Statement: $l0 = staticinvoke <okio.Utf8: long size$default(java.lang.String,int,int,int,java.lang.Object)>($r0, 0, 0, 3, null) 
(define-const var856 Int (cast-from-Int-to-Int var1394)) ; Statement: $i1 = (int) $l0 
 ; Statement: if $i2 != $i1 goto $z0 = 0 
(assert (not (not (= var312 var856)))) ; Negate: Cond: $i2 != $i1  
(define-const var2986 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1043_size$default/-1974550375=([java.lang.String, int, int, int, java.lang.Object], long), cast-from-Int-to-Int=([long], int)}
; {var594=okhttp3.internal.tls.OkHostnameVerifier, var2966=r1, var3323=$r0, var1140=null_type, var312=$i2, var1043=okio.Utf8, var2608=java.lang.Object, var1394=$l0, var856=$i1, var2986=$z0}
; {okhttp3.internal.tls.OkHostnameVerifier=var594, r1=var2966, $r0=var3323, null_type=var1140, $i2=var312, okio.Utf8=var1043, java.lang.Object=var2608, $l0=var1394, $i1=var856, $z0=var2986}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: okhttp3.internal.tls.OkHostnameVerifier;	$r0 := @parameter0: java.lang.String;	$i2 = virtualinvoke $r0.<java.lang.String: int length()>();	$l0 = staticinvoke <okio.Utf8: long size$default(java.lang.String,int,int,int,java.lang.Object)>($r0, 0, 0, 3, null);	$i1 = (int) $l0;	if $i2 != $i1 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3