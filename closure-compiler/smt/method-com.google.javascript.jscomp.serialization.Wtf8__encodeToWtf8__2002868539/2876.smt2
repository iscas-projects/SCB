(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var3696 0)
(declare-sort var2261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2261_newOutput/-286841290 (Int) var3696)
(declare-fun toByteString/495270456 (var3696) var2261)
(declare-const null-String String)
(declare-const var3455 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3455 null-String)))
(assert true)
(define-const var3287 Int (length/-134980193 var3455)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3623 var3696 (var2261_newOutput/-286841290 var3287)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output newOutput(int)>(i0) 
(define-const var3764 Int 0) ; Statement: i26 = 0 
(assert true) ; Non Conditional
 ; Statement: if i26 >= i0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString toByteString()>() 
(assert (>= var3764 var3287)) ; Cond: i26 >= i0 
(assert true)
(define-const var864 var2261 (toByteString/495270456 var3623)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString toByteString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2261_newOutput/-286841290=([int], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output), toByteString/495270456=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)}
; {var3455=r0, var1725=null_type, var3287=i0, var3696=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output, var2261=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var3623=r1, var3764=i26, var864=$r2}
; {r0=var3455, null_type=var1725, i0=var3287, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output=var3696, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var2261, r1=var3623, i26=var3764, $r2=var864}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output newOutput(int)>(i0);	i26 = 0;	if i26 >= i0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString toByteString()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$Output: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString toByteString()>();	return $r2
;block_num 3