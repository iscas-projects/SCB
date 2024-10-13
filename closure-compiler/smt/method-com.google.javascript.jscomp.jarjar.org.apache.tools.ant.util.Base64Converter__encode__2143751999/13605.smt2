(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2080 0)
(declare-sort var3023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun encode/-1774706620 (var2080 (Array Int Int)) String)
(declare-const null-var2080 var2080)
(declare-const null-String String)
(declare-const var356 var2080) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter 
(assert (not (= var356 null-var2080)))
(declare-const var3674 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3674 null-String)))
(assert true)
(define-const var276 (Array Int Int) (getBytes/1068683673 var3674)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: byte[] getBytes()>() 
(assert true)
(define-const var1615 String (encode/-1774706620 var356 var276)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter: java.lang.String encode(byte[])>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), encode/-1774706620=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter, byte[]], java.lang.String)}
; {var2080=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter, var356=r0, var3674=r1, var3023=null_type, var276=$r2, var1615=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter=var2080, r0=var356, r1=var3674, null_type=var3023, $r2=var276, $r3=var1615}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: byte[] getBytes()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter: java.lang.String encode(byte[])>($r2);	return $r3
;block_num 1