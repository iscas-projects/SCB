(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1931 0)
(declare-sort var2160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/487783471 (var1931) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashAlgorithm/487783471 (var1931) String)
(declare-fun hash/487783471 (var1931) var2160)
(declare-fun hashCode/-1360646942 (var2160) Int)
(declare-const null-var1931 var1931)
(declare-const var2166 var1931) ; Statement: r0 := @this: okhttp3.CertificatePinner$Pin 
(assert (not (= var2166 null-var1931)))
(define-const var3786 String (pattern/487783471 var2166)) ; Statement: $r1 = r0.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(assert true)
(define-const var3371 Int (hashCode/-467973558 var3786)) ; Statement: i4 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3996 Int (* 31 var3371)) ; Statement: $i1 = 31 * i4 
(define-const var945 String (hashAlgorithm/487783471 var2166)) ; Statement: $r2 = r0.<okhttp3.CertificatePinner$Pin: java.lang.String hashAlgorithm> 
(assert true)
(define-const var3132 Int (hashCode/-467973558 var945)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1912 Int (+ var3996 var3132)) ; Statement: i5 = $i1 + $i0 
(define-const var3948 Int (* 31 var1912)) ; Statement: $i3 = 31 * i5 
(define-const var3221 var2160 (hash/487783471 var2166)) ; Statement: $r3 = r0.<okhttp3.CertificatePinner$Pin: okio.ByteString hash> 
(assert true)
(define-const var2454 Int (hashCode/-1360646942 var3221)) ; Statement: $i2 = virtualinvoke $r3.<okio.ByteString: int hashCode()>() 
(define-const var2188 Int (+ var3948 var2454)) ; Statement: i6 = $i3 + $i2 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/487783471=([okhttp3.CertificatePinner$Pin], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashAlgorithm/487783471=([okhttp3.CertificatePinner$Pin], java.lang.String), hash/487783471=([okhttp3.CertificatePinner$Pin], okio.ByteString), hashCode/-1360646942=([okio.ByteString], int)}
; {var1931=okhttp3.CertificatePinner$Pin, var2166=r0, var3786=$r1, var3371=i4, var3996=$i1, var945=$r2, var3132=$i0, var1912=i5, var3948=$i3, var2160=okio.ByteString, var3221=$r3, var2454=$i2, var2188=i6}
; {okhttp3.CertificatePinner$Pin=var1931, r0=var2166, $r1=var3786, i4=var3371, $i1=var3996, $r2=var945, $i0=var3132, i5=var1912, $i3=var3948, okio.ByteString=var2160, $r3=var3221, $i2=var2454, i6=var2188}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: okhttp3.CertificatePinner$Pin;	$r1 = r0.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	i4 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$i1 = 31 * i4;	$r2 = r0.<okhttp3.CertificatePinner$Pin: java.lang.String hashAlgorithm>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i5 = $i1 + $i0;	$i3 = 31 * i5;	$r3 = r0.<okhttp3.CertificatePinner$Pin: okio.ByteString hash>;	$i2 = virtualinvoke $r3.<okio.ByteString: int hashCode()>();	i6 = $i3 + $i2;	return i6
;block_num 1