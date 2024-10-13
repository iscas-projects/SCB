(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1608 0)
(declare-sort var2913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun issuerName/-201483263 (var1608) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun serialNumber/-201483263 (var1608) var2913)
(declare-fun hashCode/-1797022729 (var2913) Int)
(declare-const null-var1608 var1608)
(declare-const var1805 var1608) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial 
(assert (not (= var1805 null-var1608)))
(define-const var3250 String (issuerName/-201483263 var1805)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial: java.lang.String issuerName> 
(assert true)
(define-const var2158 Int (hashCode/-467973558 var3250)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var609 Int (+ 527 var2158)) ; Statement: i3 = 527 + $i0 
(define-const var878 Int (* 31 var609)) ; Statement: $i2 = 31 * i3 
(define-const var540 var2913 (serialNumber/-201483263 var1805)) ; Statement: $r2 = r0.<org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial: java.math.BigInteger serialNumber> 
(assert true)
(define-const var1601 Int (hashCode/-1797022729 var540)) ; Statement: $i1 = virtualinvoke $r2.<java.math.BigInteger: int hashCode()>() 
(define-const var2985 Int (+ var878 var1601)) ; Statement: i4 = $i2 + $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {issuerName/-201483263=([org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial], java.lang.String), hashCode/-467973558=([java.lang.String], int), serialNumber/-201483263=([org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial], java.math.BigInteger), hashCode/-1797022729=([java.math.BigInteger], int)}
; {var1608=org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial, var1805=r0, var3250=$r1, var2158=$i0, var609=i3, var878=$i2, var2913=java.math.BigInteger, var540=$r2, var1601=$i1, var2985=i4}
; {org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial=var1608, r0=var1805, $r1=var3250, $i0=var2158, i3=var609, $i2=var878, java.math.BigInteger=var2913, $r2=var540, $i1=var1601, i4=var2985}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial: java.lang.String issuerName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 527 + $i0;	$i2 = 31 * i3;	$r2 = r0.<org.jcp.xml.dsig.internal.dom.DOMX509IssuerSerial: java.math.BigInteger serialNumber>;	$i1 = virtualinvoke $r2.<java.math.BigInteger: int hashCode()>();	i4 = $i2 + $i1;	return i4
;block_num 1