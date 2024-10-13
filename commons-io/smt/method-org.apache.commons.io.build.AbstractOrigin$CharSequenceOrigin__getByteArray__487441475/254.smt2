(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2913 0)
(declare-sort var3729 0)
(declare-sort var3973 0)
(declare-sort var1560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun origin/-439761164 (var3973) var3729)
(declare-fun cast-from-var2913-to-var3973 (var2913) var3973)
(declare-fun cast-from-var3729-to-String (var3729) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var1560_defaultCharset/657962044 () var1560)
(declare-fun getBytes/-163691139 (String var1560) (Array Int Int))
(declare-const null-var2913 var2913)
(declare-const var2292 var2913) ; Statement: r0 := @this: org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin 
(assert (not (= var2292 null-var2913)))
(define-const var2314 var3729 (origin/-439761164 (cast-from-var2913-to-var3973 var2292))) ; Statement: $r1 = r0.<org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin: java.lang.Object origin> 
(define-const var3102 String (cast-from-var3729-to-String var2314)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var2579 String (String_toString/-1426662429 var3102)) ; Statement: $r4 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var2060 var1560 var1560_defaultCharset/657962044) ; Statement: $r3 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>() 
(assert true)
(define-const var13 (Array Int Int) (getBytes/-163691139 var2579 var2060)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {origin/-439761164=([org.apache.commons.io.build.AbstractOrigin], java.lang.Object), cast-from-var2913-to-var3973=([org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin], org.apache.commons.io.build.AbstractOrigin), cast-from-var3729-to-String=([java.lang.Object], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var1560_defaultCharset/657962044=([], java.nio.charset.Charset), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var2913=org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin, var2292=r0, var3729=java.lang.Object, var3973=org.apache.commons.io.build.AbstractOrigin, var2314=$r1, var3102=$r2, var2579=$r4, var1560=java.nio.charset.Charset, var2060=$r3, var13=$r5}
; {org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin=var2913, r0=var2292, java.lang.Object=var3729, org.apache.commons.io.build.AbstractOrigin=var3973, $r1=var2314, $r2=var3102, $r4=var2579, java.nio.charset.Charset=var1560, $r3=var2060, $r5=var13}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin;	$r1 = r0.<org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin: java.lang.Object origin>;	$r2 = (java.lang.CharSequence) $r1;	$r4 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>();	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	return $r5
;block_num 1