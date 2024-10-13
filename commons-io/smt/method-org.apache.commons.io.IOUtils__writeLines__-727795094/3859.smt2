(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1845 0)
(declare-sort var3404 0)
(declare-sort var2708 0)
(declare-sort var2455 0)
(declare-sort var1666 0)
(declare-sort var2111 0)
(declare-sort var2456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1666_lineSeparator/-342590142 () String)
(declare-fun equals/-507840365 (var2455 var2456) Bool)
(declare-fun cast-from-var2455-to-var2456 (var2455) var2456)
(declare-fun getBytes/-163691139 (String var2455) (Array Int Int))
(declare-fun var1845_iterator/-1617794947 (var1845) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1845 var1845)
(declare-const null-String String)
(declare-const null-var2708 var2708)
(declare-const null-var2455 var2455)
(declare-const var2111-UTF_16 var2455)
(declare-const var166 var1845) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var166 null-var1845)))
(declare-const var880 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var880 null-String)))
(declare-const var3839 var2708) ; Statement: r3 := @parameter2: java.io.OutputStream 
(assert (not (= var3839 null-var2708)))
(declare-const var3738 var2455) ; Statement: r8 := @parameter3: java.nio.charset.Charset 
(assert (not (= var3738 null-var2455)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var166 null-var1845))) ; Cond: r0 != null 
 ; Statement: if r7 != null goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16> 
(assert (not (not (= var880 null-String)))) ; Negate: Cond: r7 != null  
(define-const var880!1 String var1666_lineSeparator/-342590142) ; Statement: r7 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true) ; Non Conditional
(define-const var1705 var2455 var2111-UTF_16) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16> 
(assert true)
(define-const var3865 Bool (equals/-507840365 var1705 (cast-from-var2455-to-var2456 var3738))) ; Statement: $z0 = virtualinvoke $r1.<java.nio.charset.Charset: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8) 
(assert (= (ite var3865 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3460 (Array Int Int) (getBytes/-163691139 var880!1 var3738)) ; Statement: $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8) 
(define-const var676 Iterator (var1845_iterator/-1617794947 var166)) ; Statement: $r6 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3177 Bool (Iterator_hasNext/-1669924200 var676)) ; Statement: $z1 = interfaceinvoke $r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3177 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1666_lineSeparator/-342590142=([], java.lang.String), equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var2455-to-var2456=([java.nio.charset.Charset], java.lang.Object), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var1845_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1845=java.util.Collection, var166=r0, var880=r7, var3404=null_type, var2708=java.io.OutputStream, var3839=r3, var2455=java.nio.charset.Charset, var3738=r8, var1666=java.lang.System, var2111=java.nio.charset.StandardCharsets, var1705=$r1, var2456=java.lang.Object, var3865=$z0, var3460=$r5, var676=$r6, var3177=$z1}
; {java.util.Collection=var1845, r0=var166, r7=var880, null_type=var3404, java.io.OutputStream=var2708, r3=var3839, java.nio.charset.Charset=var2455, r8=var3738, java.lang.System=var1666, java.nio.charset.StandardCharsets=var2111, $r1=var1705, java.lang.Object=var2456, $z0=var3865, $r5=var3460, $r6=var676, $z1=var3177}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.util.Collection;	r7 := @parameter1: java.lang.String;	r3 := @parameter2: java.io.OutputStream;	r8 := @parameter3: java.nio.charset.Charset;	if r0 != null goto (branch);	if r7 != null goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16>;	r7 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16>;	$z0 = virtualinvoke $r1.<java.nio.charset.Charset: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8);	$r5 = virtualinvoke r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r8);	$r6 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r6.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return;	return
;block_num 7