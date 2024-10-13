(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2065 0)
(declare-sort var3056 0)
(declare-sort var2009 0)
(declare-sort var538 0)
(declare-sort var2536 0)
(declare-sort var1845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun equals/-507840365 (var538 var1845) Bool)
(declare-fun cast-from-var538-to-var1845 (var538) var1845)
(declare-fun getBytes/-163691139 (String var538) (Array Int Int))
(declare-fun var2065_iterator/-1617794947 (var2065) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2065 var2065)
(declare-const null-String String)
(declare-const null-var2009 var2009)
(declare-const null-var538 var538)
(declare-const var2536-UTF_16 var538)
(declare-const var937 var2065) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var937 null-var2065)))
(declare-const var1376 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1376 null-String)))
(declare-const var1655 var2009) ; Statement: r3 := @parameter2: java.io.OutputStream 
(assert (not (= var1655 null-var2009)))
(declare-const var1247 var538) ; Statement: r8 := @parameter3: java.nio.charset.Charset 
(assert (not (= var1247 null-var538)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var937 null-var2065))) ; Cond: r0 != null 
 ; Statement: if r7 != null goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16> 
(assert (not (= var1376 null-String))) ; Cond: r7 != null 
(define-const var2047 var538 var2536-UTF_16) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16> 
(assert true)
(define-const var3903 Bool (equals/-507840365 var2047 (cast-from-var538-to-var1845 var1247))) ; Statement: $z0 = virtualinvoke $r1.<java.nio.charset.Charset: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8) 
(assert (= (ite var3903 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3971 (Array Int Int) (getBytes/-163691139 var1376 var1247)) ; Statement: $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8) 
(define-const var1011 Iterator (var2065_iterator/-1617794947 var937)) ; Statement: $r6 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var992 Bool (Iterator_hasNext/-1669924200 var1011)) ; Statement: $z1 = interfaceinvoke $r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var992 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var538-to-var1845=([java.nio.charset.Charset], java.lang.Object), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var2065_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2065=java.util.Collection, var937=r0, var1376=r7, var3056=null_type, var2009=java.io.OutputStream, var1655=r3, var538=java.nio.charset.Charset, var1247=r8, var2536=java.nio.charset.StandardCharsets, var2047=$r1, var1845=java.lang.Object, var3903=$z0, var3971=$r5, var1011=$r6, var992=$z1}
; {java.util.Collection=var2065, r0=var937, r7=var1376, null_type=var3056, java.io.OutputStream=var2009, r3=var1655, java.nio.charset.Charset=var538, r8=var1247, java.nio.charset.StandardCharsets=var2536, $r1=var2047, java.lang.Object=var1845, $z0=var3903, $r5=var3971, $r6=var1011, $z1=var992}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.util.Collection;	r7 := @parameter1: java.lang.String;	r3 := @parameter2: java.io.OutputStream;	r8 := @parameter3: java.nio.charset.Charset;	if r0 != null goto (branch);	if r7 != null goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16>;	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16>;	$z0 = virtualinvoke $r1.<java.nio.charset.Charset: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8);	$r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8);	$r6 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r6.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return;	return
;block_num 6