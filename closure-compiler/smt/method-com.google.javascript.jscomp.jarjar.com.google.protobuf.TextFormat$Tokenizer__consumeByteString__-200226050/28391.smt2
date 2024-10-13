(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var776 0)
(declare-sort var678 0)
(declare-sort var457 0)
(declare-sort var98 0)
(declare-sort var1818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var678-init () var678)
(declare-fun <init>/-325640736 (var678) void)
(declare-fun consumeByteString/-1926040947 (var776 var457) void)
(declare-fun cast-from-var678-to-var457 (var678) var457)
(declare-fun currentToken/-2092270909 (var776) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var98_copyFrom/-809976368 (var1818) var98)
(declare-fun cast-from-var678-to-var1818 (var678) var1818)
(declare-const null-var776 var776)
(declare-const var2162 var776) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var2162 null-var776)))
(define-const var2958 var678 var678-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2958)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var2958!1 var678)
(assert true)
;(assert (consumeByteString/-1926040947 var2162 (cast-from-var678-to-var457 var2958!1))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void consumeByteString(java.util.List)>($r0) 

(declare-const var2162!1 var776)
(declare-const var2958!2 var678)
(assert true) ; Non Conditional
(define-const var2542 String (currentToken/-2092270909 var2162!1)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var1122 Bool (startsWith/-1785782452 var2542 "\u0027")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("\'") 
 ; Statement: if $z0 != 0 goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void consumeByteString(java.util.List)>($r0) 
(assert (not (not (= (ite var1122 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var416 String (currentToken/-2092270909 var2162!1)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken> 
(assert true)
(define-const var2597 Bool (startsWith/-1785782452 var416 "\u0022")) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("\"") 
 ; Statement: if $z1 == 0 goto $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(java.lang.Iterable)>($r0) 
(assert (= (ite var2597 1 0) 0)) ; Cond: $z1 == 0 
(define-const var490 var98 (var98_copyFrom/-809976368 (cast-from-var678-to-var1818 var2958!2))) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(java.lang.Iterable)>($r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var678-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), consumeByteString/-1926040947=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.util.List], void), cast-from-var678-to-var457=([java.util.ArrayList], java.util.List), currentToken/-2092270909=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var98_copyFrom/-809976368=([java.lang.Iterable], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), cast-from-var678-to-var1818=([java.util.ArrayList], java.lang.Iterable)}
; {var776=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var2162=r1, var678=java.util.ArrayList, var2958=$r0, var457=java.util.List, var2542=$r2, var1122=$z0, var416=$r3, var2597=$z1, var98=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var1818=java.lang.Iterable, var490=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var776, r1=var2162, java.util.ArrayList=var678, $r0=var2958, java.util.List=var457, $r2=var2542, $z0=var1122, $r3=var416, $z1=var2597, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var98, java.lang.Iterable=var1818, $r4=var490}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void consumeByteString(java.util.List)>($r0);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("\'");	if $z0 != 0 goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: void consumeByteString(java.util.List)>($r0);	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: java.lang.String currentToken>;	$z1 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("\"");	if $z1 == 0 goto $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(java.lang.Iterable)>($r0);	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(java.lang.Iterable)>($r0);	return $r4
;block_num 4