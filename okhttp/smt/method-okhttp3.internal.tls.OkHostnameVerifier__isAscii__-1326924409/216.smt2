(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2469 0)
(declare-sort var338 0)
(declare-sort var1713 0)
(declare-sort var2293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1713_size$default/-1974550375 (String Int Int Int var2293) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2469 var2469)
(declare-const null-String String)
(declare-const null-var2293 var2293)
(declare-const var2846 var2469) ; Statement: r1 := @this: okhttp3.internal.tls.OkHostnameVerifier 
(assert (not (= var2846 null-var2469)))
(declare-const var1299 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var1299 null-String)))
(assert true)
(define-const var569 Int (length/-134980193 var1299)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var2370 Int (var1713_size$default/-1974550375 var1299 0 0 3 null-var2293)) ; Statement: $l0 = staticinvoke <okio.Utf8: long size$default(java.lang.String,int,int,int,java.lang.Object)>($r0, 0, 0, 3, null) 
(define-const var753 Int (cast-from-Int-to-Int var2370)) ; Statement: $i1 = (int) $l0 
 ; Statement: if $i2 != $i1 goto $z0 = 0 
(assert (not (= var569 var753))) ; Cond: $i2 != $i1 
(define-const var175 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1713_size$default/-1974550375=([java.lang.String, int, int, int, java.lang.Object], long), cast-from-Int-to-Int=([long], int)}
; {var2469=okhttp3.internal.tls.OkHostnameVerifier, var2846=r1, var1299=$r0, var338=null_type, var569=$i2, var1713=okio.Utf8, var2293=java.lang.Object, var2370=$l0, var753=$i1, var175=$z0}
; {okhttp3.internal.tls.OkHostnameVerifier=var2469, r1=var2846, $r0=var1299, null_type=var338, $i2=var569, okio.Utf8=var1713, java.lang.Object=var2293, $l0=var2370, $i1=var753, $z0=var175}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: okhttp3.internal.tls.OkHostnameVerifier;	$r0 := @parameter0: java.lang.String;	$i2 = virtualinvoke $r0.<java.lang.String: int length()>();	$l0 = staticinvoke <okio.Utf8: long size$default(java.lang.String,int,int,int,java.lang.Object)>($r0, 0, 0, 3, null);	$i1 = (int) $l0;	if $i2 != $i1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3