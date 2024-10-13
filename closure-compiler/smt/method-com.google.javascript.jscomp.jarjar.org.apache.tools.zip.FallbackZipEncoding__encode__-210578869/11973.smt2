(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2836 0)
(declare-sort var580 0)
(declare-sort var3582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/-1012305683 (var2836) String)
(declare-fun getBytes/-343950658 (String String) (Array Int Int))
(declare-fun var3582_wrap/1654484403 ((Array Int Int)) var3582)
(declare-const null-var2836 var2836)
(declare-const null-String String)
(declare-const var366 var2836) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding 
(assert (not (= var366 null-var2836)))
(declare-const var3395 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3395 null-String)))
(define-const var3533 String (charset/-1012305683 var366)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset> 
 ; Statement: if $r1 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset> 
(assert (not (= var3533 null-String))) ; Cond: $r1 != null 
(define-const var3192 String (charset/-1012305683 var366)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset> 
(assert true)
(define-const var2202 (Array Int Int) (getBytes/-343950658 var3395 var3192)) ; Statement: $r4 = virtualinvoke r2.<java.lang.String: byte[] getBytes(java.lang.String)>($r3) 
(define-const var1173 var3582 (var3582_wrap/1654484403 var2202)) ; Statement: $r5 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>($r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/-1012305683=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding], java.lang.String), getBytes/-343950658=([java.lang.String, java.lang.String], byte[]), var3582_wrap/1654484403=([byte[]], java.nio.ByteBuffer)}
; {var2836=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding, var366=r0, var3395=r2, var580=null_type, var3533=$r1, var3192=$r3, var2202=$r4, var3582=java.nio.ByteBuffer, var1173=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding=var2836, r0=var366, r2=var3395, null_type=var580, $r1=var3533, $r3=var3192, $r4=var2202, java.nio.ByteBuffer=var3582, $r5=var1173}
;seq <java.lang.String: byte[] getBytes(java.lang.String)>
;cnt {"<java.lang.String: byte[] getBytes(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset>;	if $r1 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset>;	$r4 = virtualinvoke r2.<java.lang.String: byte[] getBytes(java.lang.String)>($r3);	$r5 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>($r4);	return $r5
;block_num 2