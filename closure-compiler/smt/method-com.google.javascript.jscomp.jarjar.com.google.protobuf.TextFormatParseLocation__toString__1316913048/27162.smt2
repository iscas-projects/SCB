(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var135 0)
(declare-sort var2918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2918-init () (Array Int var2918))
(declare-fun line/-2049955336 (var135) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2918 (Int) var2918)
(declare-fun column/-2049955336 (var135) Int)
(declare-fun String_format/1339386452 (String (Array Int var2918)) String)
(declare-const null-var135 var135)
(declare-const null-__Array__Int__var2918__ (Array Int var2918))
(declare-const var2857 var135) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation 
(assert (not (= var2857 null-var135)))
(define-const var2955 (Array Int var2918) arr-var2918-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var3616 Int (line/-2049955336 var2857)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation: int line> 
(define-const var1263 Int (Int_valueOf/-1371140006 var3616)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2955!1 (Array Int var2918))
(assert (not (= var2955!1 null-__Array__Int__var2918__)))
(assert (= (select var2955!1 0) (cast-from-Int-to-var2918 var1263))) ; Statement: $r0[0] = $r2 
(define-const var3686 Int (column/-2049955336 var2857)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation: int column> 
(define-const var2335 Int (Int_valueOf/-1371140006 var3686)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var2955!2 (Array Int var2918))
(assert (not (= var2955!2 null-__Array__Int__var2918__)))
(assert (= (select var2955!2 1) (cast-from-Int-to-var2918 var2335))) ; Statement: $r0[1] = $r3 
(define-const var1940 String (String_format/1339386452 "ParseLocation{line=%d, column=%d}" var2955!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("ParseLocation{line=%d, column=%d}", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2918-init=([], java.lang.Object[]), line/-2049955336=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2918=([java.lang.Integer], java.lang.Object), column/-2049955336=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var135=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation, var2857=r1, var2918=java.lang.Object, var2955=$r0, var3616=$i0, var1263=$r2, var3686=$i1, var2335=$r3, var1940=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation=var135, r1=var2857, java.lang.Object=var2918, $r0=var2955, $i0=var3616, $r2=var1263, $i1=var3686, $r3=var2335, $r4=var1940}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation;	$r0 = newarray (java.lang.Object)[2];	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation: int line>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatParseLocation: int column>;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("ParseLocation{line=%d, column=%d}", $r0);	return $r4
;block_num 1