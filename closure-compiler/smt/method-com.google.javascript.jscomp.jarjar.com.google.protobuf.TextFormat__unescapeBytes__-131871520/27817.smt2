(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2197 0)
(declare-sort var3341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var2197_copyFromUtf8/1183034942 (String) var2197)
(declare-fun size/716358372 (var2197) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun byteAt/-2049474296 (var2197 Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3341-init () var3341)
(declare-fun <init>/-1914218472 (var3341 String) void)
(declare-const null-String String)
(declare-const var2994 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2994 null-String)))
(define-const var822 String (String_toString/-1426662429 var2994)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var2444 var2197 (var2197_copyFromUtf8/1183034942 var822)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFromUtf8(java.lang.String)>($r1) 
(assert true)
(define-const var2940 Int (size/716358372 var2444)) ; Statement: $i0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(define-const var1993 (Array Int Int) arr-Int-init) ; Statement: r3 = newarray (byte)[$i0] 
(define-const var2990 Int 0) ; Statement: i77 = 0 
(define-const var2297 Int 0) ; Statement: i78 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3900 Int (size/716358372 var2444)) ; Statement: $i1 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
 ; Statement: if i78 >= $i1 goto $i2 = lengthof r3 
(assert (not (>= var2297 var3900))) ; Negate: Cond: i78 >= $i1  
(assert true)
(define-const var2501 Int (byteAt/-2049474296 var2444 var2297)) ; Statement: b79 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: byte byteAt(int)>(i78) 
(define-const var1870 Int (cast-from-Int-to-Int var2501)) ; Statement: $i96 = (int) b79 
 ; Statement: if $i96 != 92 goto $i3 = i77 
(assert (not (not (= var1870 92)))) ; Negate: Cond: $i96 != 92  
(define-const var3819 Int (+ var2297 1)) ; Statement: $i5 = i78 + 1 
(assert true)
(define-const var3362 Int (size/716358372 var2444)) ; Statement: $i4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
 ; Statement: if $i5 >= $i4 goto $r56 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException 
(assert (>= var3819 var3362)) ; Cond: $i5 >= $i4 
(define-const var1634 var3341 var3341-init) ; Statement: $r56 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException 
(assert true)
;(assert (<init>/-1914218472 var1634 "Invalid escape sequence: \u0027\u005c\u0027 at end of string.")) ; Statement: specialinvoke $r56.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException: void <init>(java.lang.String)>("Invalid escape sequence: \'\\\' at end of string.") 

(declare-const var1634!1 var3341)
(declare-const var2435 String)
 ; Statement: throw $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var2197_copyFromUtf8/1183034942=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), arr-Int-init=([], byte[]), byteAt/-2049474296=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, int], byte), cast-from-Int-to-Int=([byte], int), var3341-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException), <init>/-1914218472=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException, java.lang.String], void)}
; {var2994=r0, var822=$r1, var2197=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var2444=r2, var2940=$i0, var1993=r3, var2990=i77, var2297=i78, var3900=$i1, var2501=b79, var1870=$i96, var3819=$i5, var3362=$i4, var3341=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException, var1634=$r56, var2435="Invalid escape sequence: \'\\\' at end of string."}
; {r0=var2994, $r1=var822, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var2197, r2=var2444, $i0=var2940, r3=var1993, i77=var2990, i78=var2297, $i1=var3900, b79=var2501, $i96=var1870, $i5=var3819, $i4=var3362, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException=var3341, $r56=var1634, "Invalid escape sequence: \'\\\' at end of string."=var2435}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFromUtf8(java.lang.String)>($r1);	$i0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	r3 = newarray (byte)[$i0];	i77 = 0;	i78 = 0;	$i1 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	if i78 >= $i1 goto $i2 = lengthof r3;	b79 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: byte byteAt(int)>(i78);	$i96 = (int) b79;	if $i96 != 92 goto $i3 = i77;	$i5 = i78 + 1;	$i4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	if $i5 >= $i4 goto $r56 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException;	$r56 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException;	specialinvoke $r56.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$InvalidEscapeSequenceException: void <init>(java.lang.String)>("Invalid escape sequence: \'\\\' at end of string.");	throw $r56
;block_num 5