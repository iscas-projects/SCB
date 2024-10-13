(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2907 0)
(declare-sort var660 0)
(declare-sort var1359 0)
(declare-sort var2916 0)
(declare-sort var2242 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1359-init () var1359)
(declare-fun data/1026180006 (var2907) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun <init>/814598262 (var1359 String) void)
(declare-fun var2242_getReader/-185918756 (var3850) var2916)
(declare-fun cast-from-var1359-to-var3850 (var1359) var3850)
(declare-const null-var2907 var2907)
(declare-const null-var660 var660)
(declare-const var943 var2907) ; Statement: r1 := @this: cn.hutool.core.io.resource.CharSequenceResource 
(assert (not (= var943 null-var2907)))
(declare-const var3705 var660) ; Statement: r5 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3705 null-var660)))
(define-const var2336 var1359 var1359-init) ; Statement: $r0 = new java.io.StringReader 
(define-const var2625 String (data/1026180006 var943)) ; Statement: $r2 = r1.<cn.hutool.core.io.resource.CharSequenceResource: java.lang.CharSequence data> 
(define-const var2044 String (String_toString/-1426662429 var2625)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
;(assert (<init>/814598262 var2336 var2044)) ; Statement: specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>($r3) 

(declare-const var2336!1 var1359)
(declare-const var2044!1 String)
(define-const var1259 var2916 (var2242_getReader/-185918756 (cast-from-var1359-to-var3850 var2336!1))) ; Statement: $r4 = staticinvoke <cn.hutool.core.io.IoUtil: java.io.BufferedReader getReader(java.io.Reader)>($r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1359-init=([], java.io.StringReader), data/1026180006=([cn.hutool.core.io.resource.CharSequenceResource], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), <init>/814598262=([java.io.StringReader, java.lang.String], void), var2242_getReader/-185918756=([java.io.Reader], java.io.BufferedReader), cast-from-var1359-to-var3850=([java.io.StringReader], java.io.Reader)}
; {var2907=cn.hutool.core.io.resource.CharSequenceResource, var943=r1, var660=java.nio.charset.Charset, var3705=r5, var1359=java.io.StringReader, var2336=$r0, var2625=$r2, var2044=$r3, var2916=java.io.BufferedReader, var2242=cn.hutool.core.io.IoUtil, var3850=java.io.Reader, var1259=$r4}
; {cn.hutool.core.io.resource.CharSequenceResource=var2907, r1=var943, java.nio.charset.Charset=var660, r5=var3705, java.io.StringReader=var1359, $r0=var2336, $r2=var2625, $r3=var2044, java.io.BufferedReader=var2916, cn.hutool.core.io.IoUtil=var2242, java.io.Reader=var3850, $r4=var1259}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.io.resource.CharSequenceResource;	r5 := @parameter0: java.nio.charset.Charset;	$r0 = new java.io.StringReader;	$r2 = r1.<cn.hutool.core.io.resource.CharSequenceResource: java.lang.CharSequence data>;	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>($r3);	$r4 = staticinvoke <cn.hutool.core.io.IoUtil: java.io.BufferedReader getReader(java.io.Reader)>($r0);	return $r4
;block_num 1