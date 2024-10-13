(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var377 0)
(declare-sort var2969 0)
(declare-sort var2452 0)
(declare-sort var1939 0)
(declare-sort var2820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var377_isArray/1467062028 (var2452) Bool)
(declare-fun cast-from-var377-to-var2452 (var377) var2452)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2820_getDebuggerValueDescs/-43421265 (var377 Bool var2969) (Array Int var1939))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var377 var377)
(declare-const null-Bool Bool)
(declare-const null-var2969 var2969)
(declare-const null-__Array__Int__var1939__ (Array Int var1939))
(declare-const var3642 var377) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var3642 null-var377)))
(declare-const var2199 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2199 null-Bool)))
(declare-const var3014 var2969) ; Statement: r2 := @parameter2: java.util.Set 
(assert (not (= var3014 null-var2969)))
(define-const var1536 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1536)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1536!1 String)
(assert (= var1536!1 ""))
(define-const var83 Bool (var377_isArray/1467062028 (cast-from-var377-to-var2452 var3642))) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: boolean isArray(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(assert (= (ite var83 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var1536!1 123)) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var1536!2 String)
(assert (str.prefixof var1536!1 var1536!2))
(define-const var1131 (Array Int var1939) (var2820_getDebuggerValueDescs/-43421265 var3642 var2199 var3014)) ; Statement: r13 = staticinvoke <jdk.nashorn.internal.runtime.DebuggerSupport: jdk.nashorn.internal.runtime.DebuggerSupport$DebuggerValueDesc[] getDebuggerValueDescs(jdk.nashorn.internal.runtime.ScriptObject,boolean,java.util.Set)>(r1, z1, r2) 
 ; Statement: if r13 == null goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= var1131 null-__Array__Int__var1939__)) ; Cond: r13 == null 
(assert true)
;(assert (append/-1166366385 var1536!2 125)) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var1536!3 String)
(assert (str.prefixof var1536!2 var1536!3))
(assert true) ; Non Conditional
(assert true)
(define-const var1281 String (toString/-2075883882 var1536!3)) ; Statement: $r14 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var377_isArray/1467062028=([java.lang.Object], boolean), cast-from-var377-to-var2452=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2820_getDebuggerValueDescs/-43421265=([jdk.nashorn.internal.runtime.ScriptObject, boolean, java.util.Set], jdk.nashorn.internal.runtime.DebuggerSupport$DebuggerValueDesc[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var377=jdk.nashorn.internal.runtime.ScriptObject, var3642=r1, var2199=z1, var2969=java.util.Set, var3014=r2, var1536=$r15, var2452=java.lang.Object, var83=$z0, var1939=jdk.nashorn.internal.runtime.DebuggerSupport$DebuggerValueDesc, var2820=jdk.nashorn.internal.runtime.DebuggerSupport, var1131=r13, var1281=$r14}
; {jdk.nashorn.internal.runtime.ScriptObject=var377, r1=var3642, z1=var2199, java.util.Set=var2969, r2=var3014, $r15=var1536, java.lang.Object=var2452, $z0=var83, jdk.nashorn.internal.runtime.DebuggerSupport$DebuggerValueDesc=var1939, jdk.nashorn.internal.runtime.DebuggerSupport=var2820, r13=var1131, $r14=var1281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject;	z1 := @parameter1: boolean;	r2 := @parameter2: java.util.Set;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: boolean isArray(java.lang.Object)>(r1);	if $z0 == 0 goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	r13 = staticinvoke <jdk.nashorn.internal.runtime.DebuggerSupport: jdk.nashorn.internal.runtime.DebuggerSupport$DebuggerValueDesc[] getDebuggerValueDescs(jdk.nashorn.internal.runtime.ScriptObject,boolean,java.util.Set)>(r1, z1, r2);	if r13 == null goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r14 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 4