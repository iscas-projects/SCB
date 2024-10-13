(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1284 0)
(declare-sort var1534 0)
(declare-sort var1661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var1661_toInputStream/969831148 (String var1284) var1534)
(declare-const null-String String)
(declare-const null-var1284 var1284)
(declare-const var640 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var640 null-String)))
(declare-const var506 var1284) ; Statement: r1 := @parameter1: java.nio.charset.Charset 
(assert (not (= var506 null-var1284)))
(define-const var3650 String (String_toString/-1426662429 var640)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var1539 var1534 (var1661_toInputStream/969831148 var3650 var506)) ; Statement: $r3 = staticinvoke <org.apache.commons.io.IOUtils: java.io.InputStream toInputStream(java.lang.String,java.nio.charset.Charset)>($r2, r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var1661_toInputStream/969831148=([java.lang.String, java.nio.charset.Charset], java.io.InputStream)}
; {var640=r0, var1284=java.nio.charset.Charset, var506=r1, var3650=$r2, var1534=java.io.InputStream, var1661=org.apache.commons.io.IOUtils, var1539=$r3}
; {r0=var640, java.nio.charset.Charset=var1284, r1=var506, $r2=var3650, java.io.InputStream=var1534, org.apache.commons.io.IOUtils=var1661, $r3=var1539}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.nio.charset.Charset;	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = staticinvoke <org.apache.commons.io.IOUtils: java.io.InputStream toInputStream(java.lang.String,java.nio.charset.Charset)>($r2, r1);	return $r3
;block_num 1