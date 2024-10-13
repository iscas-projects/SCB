(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2417 0)
(declare-sort var3679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun data/1026180006 (var2417) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var2417 var2417)
(declare-const null-var3679 var3679)
(declare-const var1817 var2417) ; Statement: r0 := @this: cn.hutool.core.io.resource.CharSequenceResource 
(assert (not (= var1817 null-var2417)))
(declare-const var2675 var3679) ; Statement: r3 := @parameter0: java.nio.charset.Charset 
(assert (not (= var2675 null-var3679)))
(define-const var3266 String (data/1026180006 var1817)) ; Statement: $r1 = r0.<cn.hutool.core.io.resource.CharSequenceResource: java.lang.CharSequence data> 
(define-const var2230 String (String_toString/-1426662429 var3266)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {data/1026180006=([cn.hutool.core.io.resource.CharSequenceResource], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2417=cn.hutool.core.io.resource.CharSequenceResource, var1817=r0, var3679=java.nio.charset.Charset, var2675=r3, var3266=$r1, var2230=$r2}
; {cn.hutool.core.io.resource.CharSequenceResource=var2417, r0=var1817, java.nio.charset.Charset=var3679, r3=var2675, $r1=var3266, $r2=var2230}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.io.resource.CharSequenceResource;	r3 := @parameter0: java.nio.charset.Charset;	$r1 = r0.<cn.hutool.core.io.resource.CharSequenceResource: java.lang.CharSequence data>;	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 1