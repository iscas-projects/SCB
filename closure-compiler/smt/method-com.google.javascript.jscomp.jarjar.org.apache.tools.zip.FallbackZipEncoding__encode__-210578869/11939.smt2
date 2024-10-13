(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3892 0)
(declare-sort var3446 0)
(declare-sort var1784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/-1012305683 (var3892) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var1784_wrap/1654484403 ((Array Int Int)) var1784)
(declare-const null-var3892 var3892)
(declare-const null-String String)
(declare-const var3643 var3892) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding 
(assert (not (= var3643 null-var3892)))
(declare-const var2324 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2324 null-String)))
(define-const var2113 String (charset/-1012305683 var3643)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset> 
 ; Statement: if $r1 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset> 
(assert (not (not (= var2113 null-String)))) ; Negate: Cond: $r1 != null  
(assert true)
(define-const var1694 (Array Int Int) (getBytes/1068683673 var2324)) ; Statement: $r6 = virtualinvoke r2.<java.lang.String: byte[] getBytes()>() 
(define-const var3124 var1784 (var1784_wrap/1654484403 var1694)) ; Statement: $r7 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/-1012305683=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), var1784_wrap/1654484403=([byte[]], java.nio.ByteBuffer)}
; {var3892=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding, var3643=r0, var2324=r2, var3446=null_type, var2113=$r1, var1694=$r6, var1784=java.nio.ByteBuffer, var3124=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding=var3892, r0=var3643, r2=var2324, null_type=var3446, $r1=var2113, $r6=var1694, java.nio.ByteBuffer=var1784, $r7=var3124}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset>;	if $r1 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset>;	$r6 = virtualinvoke r2.<java.lang.String: byte[] getBytes()>();	$r7 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>($r6);	return $r7
;block_num 2