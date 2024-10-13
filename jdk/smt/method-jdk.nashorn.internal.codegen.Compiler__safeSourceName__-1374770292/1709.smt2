(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3233 0)
(declare-sort var3575 0)
(declare-sort var2563 0)
(declare-sort var1195 0)
(declare-sort var2577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3575-init () var3575)
(declare-fun source/-2141777069 (var3233) var2563)
(declare-fun getName/-243293101 (var2563) String)
(declare-fun <init>/-1681595970 (var3575 String) void)
(declare-fun getName/1128186653 (var3575) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun env/-2141777069 (var3233) var1195)
(declare-fun _loader_per_compile/-920435095 (var1195) Bool)
(declare-fun _verify_code/-920435095 (var1195) Bool)
(declare-fun var3233_replaceDangerChars/-1246888098 (String) String)
(declare-const null-var3233 var3233)
(declare-const null-String String)
(declare-const var406 var3233) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var406 null-var3233)))
(define-const var3726 var3575 var3575-init) ; Statement: $r16 = new java.io.File 
(define-const var903 var2563 (source/-2141777069 var406)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.Source source> 
(assert true)
(define-const var3684 String (getName/-243293101 var903)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1681595970 var3726 var3684)) ; Statement: specialinvoke $r16.<java.io.File: void <init>(java.lang.String)>($r3) 

(declare-const var3726!1 var3575)
(declare-const var3684!1 String)
(assert true)
(define-const var1457 String (getName/1128186653 var3726!1)) ; Statement: r12 = virtualinvoke $r16.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2693 Int (lastIndexOf/-618837785 var1457 ".js")) ; Statement: i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".js") 
(define-const var1561 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert (= var2693 var1561)) ; Cond: i0 == $i3 
(assert true)
(define-const var332 String (replace/1524665721 var1457 46 95)) ; Statement: $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var2655 String (replace/1524665721 var332 45 95)) ; Statement: $r11 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95) 
(define-const var926 String var2655) ; Statement: r13 = $r11 
(define-const var1691 var1195 (env/-2141777069 var406)) ; Statement: $r5 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var1323 Bool (_loader_per_compile/-920435095 var1691)) ; Statement: $z0 = $r5.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _loader_per_compile> 
 ; Statement: if $z0 != 0 goto $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert (not (= (ite var1323 1 0) 0))) ; Cond: $z0 != 0 
(define-const var9 var1195 (env/-2141777069 var406)) ; Statement: $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var176 Bool (_verify_code/-920435095 var9)) ; Statement: $z1 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _verify_code> 
 ; Statement: if $z1 == 0 goto $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13) 
(assert (not (= (ite var176 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1208 String (var3233_replaceDangerChars/-1246888098 var926)) ; Statement: $r14 = staticinvoke <jdk.nashorn.internal.codegen.Compiler: java.lang.String replaceDangerChars(java.lang.String)>(r13) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r14 == null goto $r15 = r13 
(assert (= var1208 null-String)) ; Cond: $r14 == null 
(define-const var679 String var926) ; Statement: $r15 = r13 
(assert true) ; Non Conditional
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3575-init=([], java.io.File), source/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.Source), getName/-243293101=([jdk.nashorn.internal.runtime.Source], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), replace/1524665721=([java.lang.String, char, char], java.lang.String), env/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), _loader_per_compile/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), _verify_code/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), var3233_replaceDangerChars/-1246888098=([java.lang.String], java.lang.String)}
; {var3233=jdk.nashorn.internal.codegen.Compiler, var406=r1, var3575=java.io.File, var3726=$r16, var2563=jdk.nashorn.internal.runtime.Source, var903=$r2, var3684=$r3, var1457=r12, var2693=i0, var1561=$i3, var332=$r4, var2655=$r11, var926=r13, var1195=jdk.nashorn.internal.runtime.ScriptEnvironment, var1691=$r5, var1323=$z0, var9=$r6, var176=$z1, var1208=$r14, var2577=null_type, var679=$r15}
; {jdk.nashorn.internal.codegen.Compiler=var3233, r1=var406, java.io.File=var3575, $r16=var3726, jdk.nashorn.internal.runtime.Source=var2563, $r2=var903, $r3=var3684, r12=var1457, i0=var2693, $i3=var1561, $r4=var332, $r11=var2655, r13=var926, jdk.nashorn.internal.runtime.ScriptEnvironment=var1195, $r5=var1691, $z0=var1323, $r6=var9, $z1=var176, $r14=var1208, null_type=var2577, $r15=var679}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.codegen.Compiler;	$r16 = new java.io.File;	$r2 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.Source source>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	specialinvoke $r16.<java.io.File: void <init>(java.lang.String)>($r3);	r12 = virtualinvoke $r16.<java.io.File: java.lang.String getName()>();	i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".js");	$i3 = (int) -1;	if i0 == $i3 goto $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r11 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95);	r13 = $r11;	$r5 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$z0 = $r5.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _loader_per_compile>;	if $z0 != 0 goto $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$z1 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _verify_code>;	if $z1 == 0 goto $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13);	$r14 = staticinvoke <jdk.nashorn.internal.codegen.Compiler: java.lang.String replaceDangerChars(java.lang.String)>(r13);	goto [?= (branch)];	if $r14 == null goto $r15 = r13;	$r15 = r13;	return $r15
;block_num 7