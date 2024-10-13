(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var141 0)
(declare-sort var1796 0)
(declare-sort var2659 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toByteArray/385686838 (var2659) (Array Int Int))
(declare-fun cast-from-var141-to-var2659 (var141) var2659)
(declare-fun <init>/-2015205558 (String (Array Int Int) var1796) void)
(declare-const null-var141 var141)
(declare-const null-var1796 var1796)
(declare-const var411 var141) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString 
(assert (not (= var411 null-var141)))
(declare-const var3038 var1796) ; Statement: r2 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3038 null-var1796)))
(define-const var2680 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var809 (Array Int Int) (toByteArray/385686838 (cast-from-var141-to-var2659 var411))) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString: byte[] toByteArray()>() 
(assert true)
;(assert (<init>/-2015205558 var2680 var809 var3038)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, r2) 

(declare-const var2680!1 String)
(declare-const var809!1 (Array Int Int))
(declare-const var3038!1 var1796)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), toByteArray/385686838=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], byte[]), cast-from-var141-to-var2659=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var141=com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString, var411=r1, var1796=java.nio.charset.Charset, var3038=r2, var2680=$r0, var2659=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var809=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString=var141, r1=var411, java.nio.charset.Charset=var1796, r2=var3038, $r0=var2680, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var2659, $r3=var809}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString;	r2 := @parameter0: java.nio.charset.Charset;	$r0 = new java.lang.String;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString: byte[] toByteArray()>();	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, r2);	return $r0
;block_num 1