(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2444 0)
(declare-sort var1751 0)
(declare-sort var3430 0)
(declare-sort var1488 0)
(declare-sort var2924 0)
(declare-sort var2441 0)
(declare-sort var1969 0)
(declare-sort var144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun isIllegalFileNameChar/-1319771628 (var2444 Int) Bool)
(declare-fun var3430-init () var3430)
(declare-fun arr-var1488-init () (Array Int var1488))
(declare-fun cast-from-var2441-to-var2924 (var2441) var2924)
(declare-fun var2441_valueOf/-1186540555 (Int) var2441)
(declare-fun cast-from-var2924-to-var1488 (var2924) var1488)
(declare-fun name/1633728430 (var1969) String)
(declare-fun cast-from-var2444-to-var1969 (var2444) var1969)
(declare-fun cast-from-String-to-var1488 (String) var1488)
(declare-fun illegalFileNameChars/1047094103 (var2444) (Array Int Int))
(declare-fun var144_toString/1240813769 ((Array Int Int)) String)
(declare-fun String_format/1339386452 (String (Array Int var1488)) String)
(declare-fun <init>/875830710 (var3430 String) void)
(declare-const null-var2444 var2444)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1488__ (Array Int var1488))
(declare-const var1912 var2444) ; Statement: r0 := @this: org.apache.commons.io.FileSystem 
(assert (not (= var1912 null-var2444)))
(declare-const var3887 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3887 null-String)))
(declare-const var1996 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1996 null-Int)))
(define-const var1972 Int (cast-from-Int-to-Int var1996)) ; Statement: $i5 = (int) c0 
(assert true)
(define-const var474 Bool (isIllegalFileNameChar/-1319771628 var1912 var1972)) ; Statement: $z0 = specialinvoke r0.<org.apache.commons.io.FileSystem: boolean isIllegalFileNameChar(int)>($i5) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= (ite var474 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2313 var3430 var3430-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(define-const var3559 (Array Int var1488) arr-var1488-init) ; Statement: $r8 = newarray (java.lang.Object)[3] 
 ; Statement: if c0 != 0 goto $r13 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c0) 
(assert (not (= var1996 0))) ; Cond: c0 != 0 
(define-const var2038 var2924 (cast-from-var2441-to-var2924 (var2441_valueOf/-1186540555 var1996))) ; Statement: $r13 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c0) 
(assert true) ; Non Conditional
(declare-const var3559!1 (Array Int var1488))
(assert (not (= var3559!1 null-__Array__Int__var1488__)))
(assert (= (select var3559!1 0) (cast-from-var2924-to-var1488 var2038))) ; Statement: $r8[0] = $r13 
(assert true)
(define-const var1349 String (name/1633728430 (cast-from-var2444-to-var1969 var1912))) ; Statement: $r9 = virtualinvoke r0.<org.apache.commons.io.FileSystem: java.lang.String name()>() 
(declare-const var3559!2 (Array Int var1488))
(assert (not (= var3559!2 null-__Array__Int__var1488__)))
(assert (= (select var3559!2 1) (cast-from-String-to-var1488 var1349))) ; Statement: $r8[1] = $r9 
(define-const var1698 (Array Int Int) (illegalFileNameChars/1047094103 var1912)) ; Statement: $r10 = r0.<org.apache.commons.io.FileSystem: int[] illegalFileNameChars> 
(define-const var3553 String (var144_toString/1240813769 var1698)) ; Statement: $r11 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r10) 
(declare-const var3559!3 (Array Int var1488))
(assert (not (= var3559!3 null-__Array__Int__var1488__)))
(assert (= (select var3559!3 2) (cast-from-String-to-var1488 var3553))) ; Statement: $r8[2] = $r11 
(define-const var862 String (String_format/1339386452 "The replacement character \u0027%s\u0027 cannot be one of the %s illegal characters: %s" var3559!3)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The replacement character \'%s\' cannot be one of the %s illegal characters: %s", $r8) 
(assert true)
;(assert (<init>/875830710 var2313 var862)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var2313!1 var3430)
(declare-const var862!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), isIllegalFileNameChar/-1319771628=([org.apache.commons.io.FileSystem, int], boolean), var3430-init=([], java.lang.IllegalArgumentException), arr-var1488-init=([], java.lang.Object[]), cast-from-var2441-to-var2924=([java.lang.Character], java.io.Serializable), var2441_valueOf/-1186540555=([char], java.lang.Character), cast-from-var2924-to-var1488=([java.io.Serializable], java.lang.Object), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2444-to-var1969=([org.apache.commons.io.FileSystem], java.lang.Enum), cast-from-String-to-var1488=([java.lang.String], java.lang.Object), illegalFileNameChars/1047094103=([org.apache.commons.io.FileSystem], int[]), var144_toString/1240813769=([int[]], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2444=org.apache.commons.io.FileSystem, var1912=r0, var3887=r1, var1751=null_type, var1996=c0, var1972=$i5, var474=$z0, var3430=java.lang.IllegalArgumentException, var2313=$r15, var1488=java.lang.Object, var3559=$r8, var2924=java.io.Serializable, var2441=java.lang.Character, var2038=$r13, var1969=java.lang.Enum, var1349=$r9, var1698=$r10, var144=java.util.Arrays, var3553=$r11, var862=$r12}
; {org.apache.commons.io.FileSystem=var2444, r0=var1912, r1=var3887, null_type=var1751, c0=var1996, $i5=var1972, $z0=var474, java.lang.IllegalArgumentException=var3430, $r15=var2313, java.lang.Object=var1488, $r8=var3559, java.io.Serializable=var2924, java.lang.Character=var2441, $r13=var2038, java.lang.Enum=var1969, $r9=var1349, $r10=var1698, java.util.Arrays=var144, $r11=var3553, $r12=var862}
;seq <java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.commons.io.FileSystem;	r1 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$i5 = (int) c0;	$z0 = specialinvoke r0.<org.apache.commons.io.FileSystem: boolean isIllegalFileNameChar(int)>($i5);	if $z0 == 0 goto $i2 = virtualinvoke r1.<java.lang.String: int length()>();	$r15 = new java.lang.IllegalArgumentException;	$r8 = newarray (java.lang.Object)[3];	if c0 != 0 goto $r13 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c0);	$r13 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(c0);	$r8[0] = $r13;	$r9 = virtualinvoke r0.<org.apache.commons.io.FileSystem: java.lang.String name()>();	$r8[1] = $r9;	$r10 = r0.<org.apache.commons.io.FileSystem: int[] illegalFileNameChars>;	$r11 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r10);	$r8[2] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The replacement character \'%s\' cannot be one of the %s illegal characters: %s", $r8);	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r15
;block_num 4