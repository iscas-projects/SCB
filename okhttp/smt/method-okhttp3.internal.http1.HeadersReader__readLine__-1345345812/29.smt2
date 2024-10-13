(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var274 0)
(declare-sort var3887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun source/-1071850542 (var274) var3887)
(declare-fun headerLimit/-1071850542 (var274) Int)
(declare-fun var3887_readUtf8LineStrict/1326340938 (var3887 Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var274 var274)
(declare-const var1840 var274) ; Statement: r0 := @this: okhttp3.internal.http1.HeadersReader 
(assert (not (= var1840 null-var274)))
(define-const var1774 var3887 (source/-1071850542 var1840)) ; Statement: $r1 = r0.<okhttp3.internal.http1.HeadersReader: okio.BufferedSource source> 
(define-const var920 Int (headerLimit/-1071850542 var1840)) ; Statement: $l0 = r0.<okhttp3.internal.http1.HeadersReader: long headerLimit> 
(define-const var875 String (var3887_readUtf8LineStrict/1326340938 var1774 var920)) ; Statement: r2 = interfaceinvoke $r1.<okio.BufferedSource: java.lang.String readUtf8LineStrict(long)>($l0) 
(define-const var474 Int (headerLimit/-1071850542 var1840)) ; Statement: $l1 = r0.<okhttp3.internal.http1.HeadersReader: long headerLimit> 
(assert true)
(define-const var793 Int (length/-134980193 var875)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var411 Int (cast-from-Int-to-Int var793)) ; Statement: $l3 = (long) $i2 
(define-const var3536 Int (- var474 var411)) ; Statement: $l4 = $l1 - $l3 
(declare-const var1840!1 var274)
(assert (not (= var1840!1 null-var274)))
(assert (= (headerLimit/-1071850542 var1840!1) var3536)) ; Statement: r0.<okhttp3.internal.http1.HeadersReader: long headerLimit> = $l4 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {source/-1071850542=([okhttp3.internal.http1.HeadersReader], okio.BufferedSource), headerLimit/-1071850542=([okhttp3.internal.http1.HeadersReader], long), var3887_readUtf8LineStrict/1326340938=([okio.BufferedSource, long], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long)}
; {var274=okhttp3.internal.http1.HeadersReader, var1840=r0, var3887=okio.BufferedSource, var1774=$r1, var920=$l0, var875=r2, var474=$l1, var793=$i2, var411=$l3, var3536=$l4}
; {okhttp3.internal.http1.HeadersReader=var274, r0=var1840, okio.BufferedSource=var3887, $r1=var1774, $l0=var920, r2=var875, $l1=var474, $i2=var793, $l3=var411, $l4=var3536}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: okhttp3.internal.http1.HeadersReader;	$r1 = r0.<okhttp3.internal.http1.HeadersReader: okio.BufferedSource source>;	$l0 = r0.<okhttp3.internal.http1.HeadersReader: long headerLimit>;	r2 = interfaceinvoke $r1.<okio.BufferedSource: java.lang.String readUtf8LineStrict(long)>($l0);	$l1 = r0.<okhttp3.internal.http1.HeadersReader: long headerLimit>;	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	$l3 = (long) $i2;	$l4 = $l1 - $l3;	r0.<okhttp3.internal.http1.HeadersReader: long headerLimit> = $l4;	return r2
;block_num 1