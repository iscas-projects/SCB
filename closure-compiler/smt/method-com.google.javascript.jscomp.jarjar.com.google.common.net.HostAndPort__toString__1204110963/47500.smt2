(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun host/466947347 (var238) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hasPort/-1732929353 (var238) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var238 var238)
(declare-const var2396 var238) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort 
(assert (not (= var2396 null-var238)))
(define-const var3883 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1726 String (host/466947347 var2396)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host> 
(assert true)
(define-const var3774 Int (length/-134980193 var1726)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var3971 Int (+ var3774 8)) ; Statement: $i1 = $i0 + 8 
(assert true)
;(assert (<init>/543593434 var3883 var3971)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3883!1 String)
(declare-const var3971!1 Int)
(define-const var259 String (host/466947347 var2396)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host> 
(assert true)
(define-const var3523 Int (indexOf/-1037706067 var259 58)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int indexOf(int)>(58) 
 ; Statement: if $i2 < 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host> 
(assert (< var3523 0)) ; Cond: $i2 < 0 
(define-const var5 String (host/466947347 var2396)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host> 
(assert true)
;(assert (append/672562846 var3883!1 var5)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3883!2 String)
(assert (= var3883!2 (str.++ var3883!1 var5)))
(assert true) ; Non Conditional
(assert true)
(define-const var1714 Bool (hasPort/-1732929353 var2396)) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: boolean hasPort()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1714 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var302 String (toString/-2075883882 var3883!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), host/466947347=([com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort], java.lang.String), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), indexOf/-1037706067=([java.lang.String, int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), hasPort/-1732929353=([com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var238=com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort, var2396=r1, var3883=$r0, var1726=$r2, var3774=$i0, var3971=$i1, var259=$r3, var3523=$i2, var5=$r4, var1714=$z0, var302=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort=var238, r1=var2396, $r0=var3883, $r2=var1726, $i0=var3774, $i1=var3971, $r3=var259, $i2=var3523, $r4=var5, $z0=var1714, $r5=var302}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i1 = $i0 + 8;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host>;	$i2 = virtualinvoke $r3.<java.lang.String: int indexOf(int)>(58);	if $i2 < 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: java.lang.String host>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.HostAndPort: boolean hasPort()>();	if $z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4