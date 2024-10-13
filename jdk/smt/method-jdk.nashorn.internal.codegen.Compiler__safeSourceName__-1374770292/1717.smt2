(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var923 0)
(declare-sort var3530 0)
(declare-sort var1516 0)
(declare-sort var235 0)
(declare-sort var3904 0)
(declare-sort var525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3530-init () var3530)
(declare-fun source/-2141777069 (var923) var1516)
(declare-fun getName/-243293101 (var1516) String)
(declare-fun <init>/-1681595970 (var3530 String) void)
(declare-fun getName/1128186653 (var3530) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun env/-2141777069 (var923) var235)
(declare-fun _loader_per_compile/-920435095 (var235) Bool)
(declare-fun _verify_code/-920435095 (var235) Bool)
(declare-fun var3904_encode/-966502321 (String) String)
(declare-const null-var923 var923)
(declare-const null-String String)
(declare-const var3018 var923) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var3018 null-var923)))
(define-const var3850 var3530 var3530-init) ; Statement: $r16 = new java.io.File 
(define-const var2655 var1516 (source/-2141777069 var3018)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.Source source> 
(assert true)
(define-const var1809 String (getName/-243293101 var2655)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1681595970 var3850 var1809)) ; Statement: specialinvoke $r16.<java.io.File: void <init>(java.lang.String)>($r3) 

(declare-const var3850!1 var3530)
(declare-const var1809!1 String)
(assert true)
(define-const var2932 String (getName/1128186653 var3850!1)) ; Statement: r12 = virtualinvoke $r16.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var3113 Int (lastIndexOf/-618837785 var2932 ".js")) ; Statement: i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".js") 
(define-const var966 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert (= var3113 var966)) ; Cond: i0 == $i3 
(assert true)
(define-const var2543 String (replace/1524665721 var2932 46 95)) ; Statement: $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var3161 String (replace/1524665721 var2543 45 95)) ; Statement: $r11 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95) 
(define-const var3012 String var3161) ; Statement: r13 = $r11 
(define-const var2938 var235 (env/-2141777069 var3018)) ; Statement: $r5 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var1055 Bool (_loader_per_compile/-920435095 var2938)) ; Statement: $z0 = $r5.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _loader_per_compile> 
 ; Statement: if $z0 != 0 goto $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert (not (= (ite var1055 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2094 var235 (env/-2141777069 var3018)) ; Statement: $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var762 Bool (_verify_code/-920435095 var2094)) ; Statement: $z1 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _verify_code> 
 ; Statement: if $z1 == 0 goto $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13) 
(assert (= (ite var762 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2826 String (var3904_encode/-966502321 var3012)) ; Statement: $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13) 
(assert true) ; Non Conditional
 ; Statement: if $r14 == null goto $r15 = r13 
(assert (not (= var2826 null-String))) ; Negate: Cond: $r14 == null  
(define-const var2912 String var2826) ; Statement: $r15 = $r14 
 ; Statement: goto [?= return $r15] 
(assert true) ; Non Conditional
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3530-init=([], java.io.File), source/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.Source), getName/-243293101=([jdk.nashorn.internal.runtime.Source], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), replace/1524665721=([java.lang.String, char, char], java.lang.String), env/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), _loader_per_compile/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), _verify_code/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), var3904_encode/-966502321=([java.lang.String], java.lang.String)}
; {var923=jdk.nashorn.internal.codegen.Compiler, var3018=r1, var3530=java.io.File, var3850=$r16, var1516=jdk.nashorn.internal.runtime.Source, var2655=$r2, var1809=$r3, var2932=r12, var3113=i0, var966=$i3, var2543=$r4, var3161=$r11, var3012=r13, var235=jdk.nashorn.internal.runtime.ScriptEnvironment, var2938=$r5, var1055=$z0, var2094=$r6, var762=$z1, var3904=jdk.internal.dynalink.support.NameCodec, var2826=$r14, var525=null_type, var2912=$r15}
; {jdk.nashorn.internal.codegen.Compiler=var923, r1=var3018, java.io.File=var3530, $r16=var3850, jdk.nashorn.internal.runtime.Source=var1516, $r2=var2655, $r3=var1809, r12=var2932, i0=var3113, $i3=var966, $r4=var2543, $r11=var3161, r13=var3012, jdk.nashorn.internal.runtime.ScriptEnvironment=var235, $r5=var2938, $z0=var1055, $r6=var2094, $z1=var762, jdk.internal.dynalink.support.NameCodec=var3904, $r14=var2826, null_type=var525, $r15=var2912}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.codegen.Compiler;	$r16 = new java.io.File;	$r2 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.Source source>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	specialinvoke $r16.<java.io.File: void <init>(java.lang.String)>($r3);	r12 = virtualinvoke $r16.<java.io.File: java.lang.String getName()>();	i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".js");	$i3 = (int) -1;	if i0 == $i3 goto $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r11 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95);	r13 = $r11;	$r5 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$z0 = $r5.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _loader_per_compile>;	if $z0 != 0 goto $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$z1 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _verify_code>;	if $z1 == 0 goto $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13);	$r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13);	if $r14 == null goto $r15 = r13;	$r15 = $r14;	goto [?= return $r15];	return $r15
;block_num 7