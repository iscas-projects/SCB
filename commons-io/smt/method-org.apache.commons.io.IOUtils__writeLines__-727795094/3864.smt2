(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1161 0)
(declare-sort var1869 0)
(declare-sort var3995 0)
(declare-sort var3573 0)
(declare-sort var1567 0)
(declare-sort var558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun equals/-507840365 (var3573 var558) Bool)
(declare-fun cast-from-var3573-to-var558 (var3573) var558)
(declare-fun getBytes/-163691139 (String var3573) (Array Int Int))
(declare-fun var1161_iterator/-1617794947 (var1161) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1161 var1161)
(declare-const null-String String)
(declare-const null-var3995 var3995)
(declare-const null-var3573 var3573)
(declare-const var1567-UTF_16 var3573)
(declare-const var1567-UTF_16BE var3573)
(declare-const var1598 var1161) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var1598 null-var1161)))
(declare-const var1797 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1797 null-String)))
(declare-const var1125 var3995) ; Statement: r3 := @parameter2: java.io.OutputStream 
(assert (not (= var1125 null-var3995)))
(declare-const var3329 var3573) ; Statement: r8 := @parameter3: java.nio.charset.Charset 
(assert (not (= var3329 null-var3573)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var1598 null-var1161))) ; Cond: r0 != null 
 ; Statement: if r7 != null goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16> 
(assert (not (= var1797 null-String))) ; Cond: r7 != null 
(define-const var345 var3573 var1567-UTF_16) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16> 
(assert true)
(define-const var2026 Bool (equals/-507840365 var345 (cast-from-var3573-to-var558 var3329))) ; Statement: $z0 = virtualinvoke $r1.<java.nio.charset.Charset: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8) 
(assert (not (= (ite var2026 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3329!1 var3573 var1567-UTF_16BE) ; Statement: r8 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16BE> 
(assert true) ; Non Conditional
(assert true)
(define-const var1955 (Array Int Int) (getBytes/-163691139 var1797 var3329!1)) ; Statement: $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8) 
(define-const var238 Iterator (var1161_iterator/-1617794947 var1598)) ; Statement: $r6 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3534 Bool (Iterator_hasNext/-1669924200 var238)) ; Statement: $z1 = interfaceinvoke $r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3534 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var3573-to-var558=([java.nio.charset.Charset], java.lang.Object), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var1161_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1161=java.util.Collection, var1598=r0, var1797=r7, var1869=null_type, var3995=java.io.OutputStream, var1125=r3, var3573=java.nio.charset.Charset, var3329=r8, var1567=java.nio.charset.StandardCharsets, var345=$r1, var558=java.lang.Object, var2026=$z0, var1955=$r5, var238=$r6, var3534=$z1}
; {java.util.Collection=var1161, r0=var1598, r7=var1797, null_type=var1869, java.io.OutputStream=var3995, r3=var1125, java.nio.charset.Charset=var3573, r8=var3329, java.nio.charset.StandardCharsets=var1567, $r1=var345, java.lang.Object=var558, $z0=var2026, $r5=var1955, $r6=var238, $z1=var3534}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.util.Collection;	r7 := @parameter1: java.lang.String;	r3 := @parameter2: java.io.OutputStream;	r8 := @parameter3: java.nio.charset.Charset;	if r0 != null goto (branch);	if r7 != null goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16>;	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16>;	$z0 = virtualinvoke $r1.<java.nio.charset.Charset: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8);	r8 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16BE>;	$r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8);	$r6 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r6.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return;	return
;block_num 7