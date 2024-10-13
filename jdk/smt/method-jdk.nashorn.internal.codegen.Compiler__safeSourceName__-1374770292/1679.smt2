(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var495 0)
(declare-sort var3156 0)
(declare-sort var1153 0)
(declare-sort var871 0)
(declare-sort var1319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3156-init () var3156)
(declare-fun source/-2141777069 (var495) var1153)
(declare-fun getName/-243293101 (var1153) String)
(declare-fun <init>/-1681595970 (var3156 String) void)
(declare-fun getName/1128186653 (var3156) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun env/-2141777069 (var495) var871)
(declare-fun _loader_per_compile/-920435095 (var871) Bool)
(declare-fun _verify_code/-920435095 (var871) Bool)
(declare-fun var495_replaceDangerChars/-1246888098 (String) String)
(declare-const null-var495 var495)
(declare-const null-String String)
(declare-const var2706 var495) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var2706 null-var495)))
(define-const var2434 var3156 var3156-init) ; Statement: $r16 = new java.io.File 
(define-const var3301 var1153 (source/-2141777069 var2706)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.Source source> 
(assert true)
(define-const var2914 String (getName/-243293101 var3301)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1681595970 var2434 var2914)) ; Statement: specialinvoke $r16.<java.io.File: void <init>(java.lang.String)>($r3) 

(declare-const var2434!1 var3156)
(declare-const var2914!1 String)
(assert true)
(define-const var258 String (getName/1128186653 var2434!1)) ; Statement: r12 = virtualinvoke $r16.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1746 Int (lastIndexOf/-618837785 var258 ".js")) ; Statement: i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".js") 
(define-const var993 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert (= var1746 var993)) ; Cond: i0 == $i3 
(assert true)
(define-const var429 String (replace/1524665721 var258 46 95)) ; Statement: $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var2110 String (replace/1524665721 var429 45 95)) ; Statement: $r11 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95) 
(define-const var3149 String var2110) ; Statement: r13 = $r11 
(define-const var3361 var871 (env/-2141777069 var2706)) ; Statement: $r5 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var986 Bool (_loader_per_compile/-920435095 var3361)) ; Statement: $z0 = $r5.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _loader_per_compile> 
 ; Statement: if $z0 != 0 goto $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert (not (= (ite var986 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2755 var871 (env/-2141777069 var2706)) ; Statement: $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var2011 Bool (_verify_code/-920435095 var2755)) ; Statement: $z1 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _verify_code> 
 ; Statement: if $z1 == 0 goto $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13) 
(assert (not (= (ite var2011 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2950 String (var495_replaceDangerChars/-1246888098 var3149)) ; Statement: $r14 = staticinvoke <jdk.nashorn.internal.codegen.Compiler: java.lang.String replaceDangerChars(java.lang.String)>(r13) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r14 == null goto $r15 = r13 
(assert (not (= var2950 null-String))) ; Negate: Cond: $r14 == null  
(define-const var1377 String var2950) ; Statement: $r15 = $r14 
 ; Statement: goto [?= return $r15] 
(assert true) ; Non Conditional
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3156-init=([], java.io.File), source/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.Source), getName/-243293101=([jdk.nashorn.internal.runtime.Source], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), replace/1524665721=([java.lang.String, char, char], java.lang.String), env/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), _loader_per_compile/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), _verify_code/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), var495_replaceDangerChars/-1246888098=([java.lang.String], java.lang.String)}
; {var495=jdk.nashorn.internal.codegen.Compiler, var2706=r1, var3156=java.io.File, var2434=$r16, var1153=jdk.nashorn.internal.runtime.Source, var3301=$r2, var2914=$r3, var258=r12, var1746=i0, var993=$i3, var429=$r4, var2110=$r11, var3149=r13, var871=jdk.nashorn.internal.runtime.ScriptEnvironment, var3361=$r5, var986=$z0, var2755=$r6, var2011=$z1, var2950=$r14, var1319=null_type, var1377=$r15}
; {jdk.nashorn.internal.codegen.Compiler=var495, r1=var2706, java.io.File=var3156, $r16=var2434, jdk.nashorn.internal.runtime.Source=var1153, $r2=var3301, $r3=var2914, r12=var258, i0=var1746, $i3=var993, $r4=var429, $r11=var2110, r13=var3149, jdk.nashorn.internal.runtime.ScriptEnvironment=var871, $r5=var3361, $z0=var986, $r6=var2755, $z1=var2011, $r14=var2950, null_type=var1319, $r15=var1377}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.codegen.Compiler;	$r16 = new java.io.File;	$r2 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.Source source>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	specialinvoke $r16.<java.io.File: void <init>(java.lang.String)>($r3);	r12 = virtualinvoke $r16.<java.io.File: java.lang.String getName()>();	i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".js");	$i3 = (int) -1;	if i0 == $i3 goto $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r11 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95);	r13 = $r11;	$r5 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$z0 = $r5.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _loader_per_compile>;	if $z0 != 0 goto $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$z1 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _verify_code>;	if $z1 == 0 goto $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13);	$r14 = staticinvoke <jdk.nashorn.internal.codegen.Compiler: java.lang.String replaceDangerChars(java.lang.String)>(r13);	goto [?= (branch)];	if $r14 == null goto $r15 = r13;	$r15 = $r14;	goto [?= return $r15];	return $r15
;block_num 7