(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3900 0)
(declare-sort var2470 0)
(declare-sort var2865 0)
(declare-sort var1025 0)
(declare-sort var2570 0)
(declare-sort var764 0)
(declare-sort var26 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun isIllegalFileNameChar/-1319771628 (var3900 Int) Bool)
(declare-fun var2865-init () var2865)
(declare-fun arr-var1025-init () (Array Int var1025))
(declare-fun cast-from-String-to-var2570 (String) var2570)
(declare-fun cast-from-var2570-to-var1025 (var2570) var1025)
(declare-fun name/1633728430 (var764) String)
(declare-fun cast-from-var3900-to-var764 (var3900) var764)
(declare-fun cast-from-String-to-var1025 (String) var1025)
(declare-fun illegalFileNameChars/1047094103 (var3900) (Array Int Int))
(declare-fun var26_toString/1240813769 ((Array Int Int)) String)
(declare-fun String_format/1339386452 (String (Array Int var1025)) String)
(declare-fun <init>/875830710 (var2865 String) void)
(declare-const null-var3900 var3900)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1025__ (Array Int var1025))
(declare-const var3873 var3900) ; Statement: r0 := @this: org.apache.commons.io.FileSystem 
(assert (not (= var3873 null-var3900)))
(declare-const var572 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var572 null-String)))
(declare-const var1693 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1693 null-Int)))
(define-const var3674 Int (cast-from-Int-to-Int var1693)) ; Statement: $i5 = (int) c0 
(assert true)
(define-const var2231 Bool (isIllegalFileNameChar/-1319771628 var3873 var3674)) ; Statement: $z0 = specialinvoke r0.<org.apache.commons.io.FileSystem: boolean isIllegalFileNameChar(int)>($i5) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= (ite var2231 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2797 var2865 var2865-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(define-const var3844 (Array Int var1025) arr-var1025-init) ; Statement: $r8 = newarray (java.lang.Object)[3] 
 ; Statement: if c0 != 0 goto $r13 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c0) 
(assert (not (not (= var1693 0)))) ; Negate: Cond: c0 != 0  
(define-const var3977 var2570 (cast-from-String-to-var2570 "\u005c0")) ; Statement: $r13 = "\\0" 
 ; Statement: goto [?= $r8[0] = $r13] 
(assert true) ; Non Conditional
(declare-const var3844!1 (Array Int var1025))
(assert (not (= var3844!1 null-__Array__Int__var1025__)))
(assert (= (select var3844!1 0) (cast-from-var2570-to-var1025 var3977))) ; Statement: $r8[0] = $r13 
(assert true)
(define-const var1502 String (name/1633728430 (cast-from-var3900-to-var764 var3873))) ; Statement: $r9 = virtualinvoke r0.<org.apache.commons.io.FileSystem: java.lang.String name()>() 
(declare-const var3844!2 (Array Int var1025))
(assert (not (= var3844!2 null-__Array__Int__var1025__)))
(assert (= (select var3844!2 1) (cast-from-String-to-var1025 var1502))) ; Statement: $r8[1] = $r9 
(define-const var1137 (Array Int Int) (illegalFileNameChars/1047094103 var3873)) ; Statement: $r10 = r0.<org.apache.commons.io.FileSystem: int[] illegalFileNameChars> 
(define-const var982 String (var26_toString/1240813769 var1137)) ; Statement: $r11 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r10) 
(declare-const var3844!3 (Array Int var1025))
(assert (not (= var3844!3 null-__Array__Int__var1025__)))
(assert (= (select var3844!3 2) (cast-from-String-to-var1025 var982))) ; Statement: $r8[2] = $r11 
(define-const var464 String (String_format/1339386452 "The replacement character \u0027%s\u0027 cannot be one of the %s illegal characters: %s" var3844!3)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The replacement character \'%s\' cannot be one of the %s illegal characters: %s", $r8) 
(assert true)
;(assert (<init>/875830710 var2797 var464)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var2797!1 var2865)
(declare-const var464!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), isIllegalFileNameChar/-1319771628=([org.apache.commons.io.FileSystem, int], boolean), var2865-init=([], java.lang.IllegalArgumentException), arr-var1025-init=([], java.lang.Object[]), cast-from-String-to-var2570=([java.lang.String], java.io.Serializable), cast-from-var2570-to-var1025=([java.io.Serializable], java.lang.Object), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var3900-to-var764=([org.apache.commons.io.FileSystem], java.lang.Enum), cast-from-String-to-var1025=([java.lang.String], java.lang.Object), illegalFileNameChars/1047094103=([org.apache.commons.io.FileSystem], int[]), var26_toString/1240813769=([int[]], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3900=org.apache.commons.io.FileSystem, var3873=r0, var572=r1, var2470=null_type, var1693=c0, var3674=$i5, var2231=$z0, var2865=java.lang.IllegalArgumentException, var2797=$r15, var1025=java.lang.Object, var3844=$r8, var2570=java.io.Serializable, var3977=$r13, var764=java.lang.Enum, var1502=$r9, var1137=$r10, var26=java.util.Arrays, var982=$r11, var464=$r12}
; {org.apache.commons.io.FileSystem=var3900, r0=var3873, r1=var572, null_type=var2470, c0=var1693, $i5=var3674, $z0=var2231, java.lang.IllegalArgumentException=var2865, $r15=var2797, java.lang.Object=var1025, $r8=var3844, java.io.Serializable=var2570, $r13=var3977, java.lang.Enum=var764, $r9=var1502, $r10=var1137, java.util.Arrays=var26, $r11=var982, $r12=var464}
;seq <java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.commons.io.FileSystem;	r1 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$i5 = (int) c0;	$z0 = specialinvoke r0.<org.apache.commons.io.FileSystem: boolean isIllegalFileNameChar(int)>($i5);	if $z0 == 0 goto $i2 = virtualinvoke r1.<java.lang.String: int length()>();	$r15 = new java.lang.IllegalArgumentException;	$r8 = newarray (java.lang.Object)[3];	if c0 != 0 goto $r13 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c0);	$r13 = "\\0";	goto [?= $r8[0] = $r13];	$r8[0] = $r13;	$r9 = virtualinvoke r0.<org.apache.commons.io.FileSystem: java.lang.String name()>();	$r8[1] = $r9;	$r10 = r0.<org.apache.commons.io.FileSystem: int[] illegalFileNameChars>;	$r11 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r10);	$r8[2] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The replacement character \'%s\' cannot be one of the %s illegal characters: %s", $r8);	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r15
;block_num 4