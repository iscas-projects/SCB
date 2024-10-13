(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var624 0)
(declare-sort var3754 0)
(declare-sort var2255 0)
(declare-sort var2316 0)
(declare-sort var1366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/-1850189368 (var624) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun nameCount/-1850189368 (var624) Int)
(declare-fun generateSuffix/-6805418 (var624 Int Int) String)
(declare-fun var3754_isKeyword/786132939 (String) Bool)
(declare-fun reservedNames/-1850189368 (var624) var2255)
(declare-fun contains/-1788778657 (var2316 var1366) Bool)
(declare-fun cast-from-var2255-to-var2316 (var2255) var2316)
(declare-fun cast-from-String-to-var1366 (String) var1366)
(declare-const null-var624 var624)
(declare-const var2480 var624) ; Statement: r0 := @this: com.google.javascript.jscomp.RandomNameGenerator 
(assert (not (= var2480 null-var624)))
(assert true) ; Non Conditional
(define-const var1829 String (prefix/-1850189368 var2480)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String prefix> 
(define-const var2450 String (prefix/-1850189368 var2480)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String prefix> 
(assert true)
(define-const var498 Int (length/-134980193 var2450)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var523 Int (nameCount/-1850189368 var2480)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.RandomNameGenerator: int nameCount> 
(define-const var244 Int (+ var523 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var2480!1 var624)
(assert (not (= var2480!1 null-var624)))
(assert (= (nameCount/-1850189368 var2480!1) var244)) ; Statement: r0.<com.google.javascript.jscomp.RandomNameGenerator: int nameCount> = $i2 
(assert true)
(define-const var1267 String (generateSuffix/-6805418 var2480!1 var498 var523)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String generateSuffix(int,int)>($i0, $i1) 
(define-const var3332 String (str.++ "\u0001\u0001" var1829 var1267)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r2, $r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(define-const var2338 Bool (var3754_isKeyword/786132939 var3332)) ; Statement: $z1 = staticinvoke <com.google.javascript.rhino.TokenStream: boolean isKeyword(java.lang.String)>($r5) 
 ; Statement: if $z1 != 0 goto $r2 = r0.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String prefix> 
(assert (not (not (= (ite var2338 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var189 var2255 (reservedNames/-1850189368 var2480!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.RandomNameGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet reservedNames> 
(assert true)
(define-const var999 Bool (contains/-1788778657 (cast-from-var2255-to-var2316 var189) (cast-from-String-to-var1366 var3332))) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: boolean contains(java.lang.Object)>($r5) 
 ; Statement: if $z0 == 0 goto return $r5 
(assert (= (ite var999 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/-1850189368=([com.google.javascript.jscomp.RandomNameGenerator], java.lang.String), length/-134980193=([java.lang.String], int), nameCount/-1850189368=([com.google.javascript.jscomp.RandomNameGenerator], int), generateSuffix/-6805418=([com.google.javascript.jscomp.RandomNameGenerator, int, int], java.lang.String), var3754_isKeyword/786132939=([java.lang.String], boolean), reservedNames/-1850189368=([com.google.javascript.jscomp.RandomNameGenerator], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), contains/-1788778657=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection, java.lang.Object], boolean), cast-from-var2255-to-var2316=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection), cast-from-String-to-var1366=([java.lang.String], java.lang.Object)}
; {var624=com.google.javascript.jscomp.RandomNameGenerator, var2480=r0, var1829=$r2, var2450=$r3, var498=$i0, var523=$i1, var244=$i2, var1267=$r4, var3332=$r5, var3754=com.google.javascript.rhino.TokenStream, var2338=$z1, var2255=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var189=$r1, var2316=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection, var1366=java.lang.Object, var999=$z0}
; {com.google.javascript.jscomp.RandomNameGenerator=var624, r0=var2480, $r2=var1829, $r3=var2450, $i0=var498, $i1=var523, $i2=var244, $r4=var1267, $r5=var3332, com.google.javascript.rhino.TokenStream=var3754, $z1=var2338, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2255, $r1=var189, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection=var2316, java.lang.Object=var1366, $z0=var999}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.RandomNameGenerator;	$r2 = r0.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String prefix>;	$r3 = r0.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String prefix>;	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	$i1 = r0.<com.google.javascript.jscomp.RandomNameGenerator: int nameCount>;	$i2 = $i1 + 1;	r0.<com.google.javascript.jscomp.RandomNameGenerator: int nameCount> = $i2;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String generateSuffix(int,int)>($i0, $i1);	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r2, $r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	$z1 = staticinvoke <com.google.javascript.rhino.TokenStream: boolean isKeyword(java.lang.String)>($r5);	if $z1 != 0 goto $r2 = r0.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String prefix>;	$r1 = r0.<com.google.javascript.jscomp.RandomNameGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet reservedNames>;	$z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: boolean contains(java.lang.Object)>($r5);	if $z0 == 0 goto return $r5;	return $r5
;block_num 4