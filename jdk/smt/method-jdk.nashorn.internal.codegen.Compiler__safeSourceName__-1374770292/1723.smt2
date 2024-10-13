(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3683 0)
(declare-sort var954 0)
(declare-sort var3112 0)
(declare-sort var845 0)
(declare-sort var161 0)
(declare-sort var580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var954-init () var954)
(declare-fun source/-2141777069 (var3683) var3112)
(declare-fun getName/-243293101 (var3112) String)
(declare-fun <init>/-1681595970 (var954 String) void)
(declare-fun getName/1128186653 (var954) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun env/-2141777069 (var3683) var845)
(declare-fun _loader_per_compile/-920435095 (var845) Bool)
(declare-fun _verify_code/-920435095 (var845) Bool)
(declare-fun var161_encode/-966502321 (String) String)
(declare-const null-var3683 var3683)
(declare-const null-String String)
(declare-const var3925 var3683) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var3925 null-var3683)))
(define-const var1688 var954 var954-init) ; Statement: $r16 = new java.io.File 
(define-const var523 var3112 (source/-2141777069 var3925)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.Source source> 
(assert true)
(define-const var953 String (getName/-243293101 var523)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1681595970 var1688 var953)) ; Statement: specialinvoke $r16.<java.io.File: void <init>(java.lang.String)>($r3) 

(declare-const var1688!1 var954)
(declare-const var953!1 String)
(assert true)
(define-const var3920 String (getName/1128186653 var1688!1)) ; Statement: r12 = virtualinvoke $r16.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var880 Int (lastIndexOf/-618837785 var3920 ".js")) ; Statement: i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".js") 
(define-const var1852 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert (= var880 var1852)) ; Cond: i0 == $i3 
(assert true)
(define-const var3256 String (replace/1524665721 var3920 46 95)) ; Statement: $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var631 String (replace/1524665721 var3256 45 95)) ; Statement: $r11 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95) 
(define-const var3541 String var631) ; Statement: r13 = $r11 
(define-const var3243 var845 (env/-2141777069 var3925)) ; Statement: $r5 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var2674 Bool (_loader_per_compile/-920435095 var3243)) ; Statement: $z0 = $r5.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _loader_per_compile> 
 ; Statement: if $z0 != 0 goto $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert (not (= (ite var2674 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3472 var845 (env/-2141777069 var3925)) ; Statement: $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var137 Bool (_verify_code/-920435095 var3472)) ; Statement: $z1 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _verify_code> 
 ; Statement: if $z1 == 0 goto $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13) 
(assert (= (ite var137 1 0) 0)) ; Cond: $z1 == 0 
(define-const var439 String (var161_encode/-966502321 var3541)) ; Statement: $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13) 
(assert true) ; Non Conditional
 ; Statement: if $r14 == null goto $r15 = r13 
(assert (= var439 null-String)) ; Cond: $r14 == null 
(define-const var1250 String var3541) ; Statement: $r15 = r13 
(assert true) ; Non Conditional
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var954-init=([], java.io.File), source/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.Source), getName/-243293101=([jdk.nashorn.internal.runtime.Source], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), replace/1524665721=([java.lang.String, char, char], java.lang.String), env/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), _loader_per_compile/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), _verify_code/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), var161_encode/-966502321=([java.lang.String], java.lang.String)}
; {var3683=jdk.nashorn.internal.codegen.Compiler, var3925=r1, var954=java.io.File, var1688=$r16, var3112=jdk.nashorn.internal.runtime.Source, var523=$r2, var953=$r3, var3920=r12, var880=i0, var1852=$i3, var3256=$r4, var631=$r11, var3541=r13, var845=jdk.nashorn.internal.runtime.ScriptEnvironment, var3243=$r5, var2674=$z0, var3472=$r6, var137=$z1, var161=jdk.internal.dynalink.support.NameCodec, var439=$r14, var580=null_type, var1250=$r15}
; {jdk.nashorn.internal.codegen.Compiler=var3683, r1=var3925, java.io.File=var954, $r16=var1688, jdk.nashorn.internal.runtime.Source=var3112, $r2=var523, $r3=var953, r12=var3920, i0=var880, $i3=var1852, $r4=var3256, $r11=var631, r13=var3541, jdk.nashorn.internal.runtime.ScriptEnvironment=var845, $r5=var3243, $z0=var2674, $r6=var3472, $z1=var137, jdk.internal.dynalink.support.NameCodec=var161, $r14=var439, null_type=var580, $r15=var1250}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.codegen.Compiler;	$r16 = new java.io.File;	$r2 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.Source source>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	specialinvoke $r16.<java.io.File: void <init>(java.lang.String)>($r3);	r12 = virtualinvoke $r16.<java.io.File: java.lang.String getName()>();	i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".js");	$i3 = (int) -1;	if i0 == $i3 goto $r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r4 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r11 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95);	r13 = $r11;	$r5 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$z0 = $r5.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _loader_per_compile>;	if $z0 != 0 goto $r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r6 = r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$z1 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _verify_code>;	if $z1 == 0 goto $r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13);	$r14 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>(r13);	if $r14 == null goto $r15 = r13;	$r15 = r13;	return $r15
;block_num 7