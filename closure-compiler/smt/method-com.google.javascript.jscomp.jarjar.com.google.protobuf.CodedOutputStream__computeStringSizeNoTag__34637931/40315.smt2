(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3136 0)
(declare-sort var3391 0)
(declare-sort var198 0)
(declare-sort var1144 0)
(declare-sort var3448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var198) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3448_computeLengthDelimitedFieldSize/356521140 (Int) Int)
(declare-const null-String String)
(declare-const null-var3391 var3391)
(declare-const var1144-UTF_8 var198)
(declare-const var395 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var395 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1577 var3391) ; Statement: $r1 := @caughtexception 
(assert (not (= var1577 null-var3391)))
(define-const var1241 var198 var1144-UTF_8) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var3237 (Array Int Int) (getBytes/-163691139 var395 var1241)) ; Statement: r3 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2) 
(define-const var720 Int (getLength-Arr-Int-1 var3237)) ; Statement: i1 = lengthof r3 
(assert true) ; Non Conditional
(define-const var691 Int (var3448_computeLengthDelimitedFieldSize/356521140 var720)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: int computeLengthDelimitedFieldSize(int)>(i1) 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int), var3448_computeLengthDelimitedFieldSize/356521140=([int], int)}
; {var395=r0, var3136=null_type, var3391=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException, var1577=$r1, var198=java.nio.charset.Charset, var1144=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var1241=$r2, var3237=r3, var720=i1, var3448=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream, var691=$i0}
; {r0=var395, null_type=var3136, com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException=var3391, $r1=var1577, java.nio.charset.Charset=var198, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var1144, $r2=var1241, r3=var3237, i1=var720, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream=var3448, $i0=var691}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 := @caughtexception;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	r3 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2);	i1 = lengthof r3;	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: int computeLengthDelimitedFieldSize(int)>(i1);	return $i0
;block_num 3