(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort var2924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun data/1026180006 (var2948) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun charset/1026180006 (var2948) var2924)
(declare-fun getBytes/-163691139 (String var2924) (Array Int Int))
(declare-const null-var2948 var2948)
(declare-const var1859 var2948) ; Statement: r0 := @this: cn.hutool.core.io.resource.CharSequenceResource 
(assert (not (= var1859 null-var2948)))
(define-const var3026 String (data/1026180006 var1859)) ; Statement: $r1 = r0.<cn.hutool.core.io.resource.CharSequenceResource: java.lang.CharSequence data> 
(define-const var2242 String (String_toString/-1426662429 var3026)) ; Statement: $r3 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var641 var2924 (charset/1026180006 var1859)) ; Statement: $r2 = r0.<cn.hutool.core.io.resource.CharSequenceResource: java.nio.charset.Charset charset> 
(assert true)
(define-const var3440 (Array Int Int) (getBytes/-163691139 var2242 var641)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {data/1026180006=([cn.hutool.core.io.resource.CharSequenceResource], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), charset/1026180006=([cn.hutool.core.io.resource.CharSequenceResource], java.nio.charset.Charset), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var2948=cn.hutool.core.io.resource.CharSequenceResource, var1859=r0, var3026=$r1, var2242=$r3, var2924=java.nio.charset.Charset, var641=$r2, var3440=$r4}
; {cn.hutool.core.io.resource.CharSequenceResource=var2948, r0=var1859, $r1=var3026, $r3=var2242, java.nio.charset.Charset=var2924, $r2=var641, $r4=var3440}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: cn.hutool.core.io.resource.CharSequenceResource;	$r1 = r0.<cn.hutool.core.io.resource.CharSequenceResource: java.lang.CharSequence data>;	$r3 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = r0.<cn.hutool.core.io.resource.CharSequenceResource: java.nio.charset.Charset charset>;	$r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2);	return $r4
;block_num 1