(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var822 0)
(declare-sort var2999 0)
(declare-sort var1665 0)
(declare-sort var2742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1665-init () (Array Int var1665))
(declare-fun var2742_identityHashCode/1096208673 (var1665) Int)
(declare-fun cast-from-var822-to-var1665 (var822) var1665)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun cast-from-String-to-var1665 (String) var1665)
(declare-fun size/716358372 (var822) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1665 (Int) var1665)
(declare-fun truncateAndEscapeForDisplay/-339981658 (var822) String)
(declare-fun String_format/-647569892 (var2999 String (Array Int var1665)) String)
(declare-const null-var822 var822)
(declare-const var2999-ROOT var2999)
(declare-const null-__Array__Int__var1665__ (Array Int var1665))
(declare-const var3350 var822) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var3350 null-var822)))
(define-const var765 var2999 var2999-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1343 (Array Int var1665) arr-var1665-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var3436 Int (var2742_identityHashCode/1096208673 (cast-from-var822-to-var1665 var3350))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(define-const var2328 String (Int_toHexString/1865784998 var3436)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0) 
(declare-const var1343!1 (Array Int var1665))
(assert (not (= var1343!1 null-__Array__Int__var1665__)))
(assert (= (select var1343!1 0) (cast-from-String-to-var1665 var2328))) ; Statement: $r0[0] = $r3 
(assert true)
(define-const var231 Int (size/716358372 var3350)) ; Statement: $i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(define-const var3463 Int (Int_valueOf/-1371140006 var231)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var1343!2 (Array Int var1665))
(assert (not (= var1343!2 null-__Array__Int__var1665__)))
(assert (= (select var1343!2 1) (cast-from-Int-to-var1665 var3463))) ; Statement: $r0[1] = $r4 
(assert true)
(define-const var787 String (truncateAndEscapeForDisplay/-339981658 var3350)) ; Statement: $r5 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: java.lang.String truncateAndEscapeForDisplay()>() 
(declare-const var1343!3 (Array Int var1665))
(assert (not (= var1343!3 null-__Array__Int__var1665__)))
(assert (= (select var1343!3 2) (cast-from-String-to-var1665 var787))) ; Statement: $r0[2] = $r5 
(define-const var1767 String (String_format/-647569892 var765 "<ByteString@%s size=%d contents=\u0022%s\u0022>" var1343!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "<ByteString@%s size=%d contents=\"%s\">", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1665-init=([], java.lang.Object[]), var2742_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var822-to-var1665=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], java.lang.Object), Int_toHexString/1865784998=([int], java.lang.String), cast-from-String-to-var1665=([java.lang.String], java.lang.Object), size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1665=([java.lang.Integer], java.lang.Object), truncateAndEscapeForDisplay/-339981658=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var822=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var3350=r1, var2999=java.util.Locale, var765=$r2, var1665=java.lang.Object, var1343=$r0, var2742=java.lang.System, var3436=$i0, var2328=$r3, var231=$i1, var3463=$r4, var787=$r5, var1767=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var822, r1=var3350, java.util.Locale=var2999, $r2=var765, java.lang.Object=var1665, $r0=var1343, java.lang.System=var2742, $i0=var3436, $r3=var2328, $i1=var231, $r4=var3463, $r5=var787, $r6=var1767}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[3];	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r3 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0);	$r0[0] = $r3;	$i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[1] = $r4;	$r5 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: java.lang.String truncateAndEscapeForDisplay()>();	$r0[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "<ByteString@%s size=%d contents=\"%s\">", $r0);	return $r6
;block_num 1