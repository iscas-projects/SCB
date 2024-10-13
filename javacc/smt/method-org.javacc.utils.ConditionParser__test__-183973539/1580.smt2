(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1171 0)
(declare-sort var722 0)
(declare-sort var3095 0)
(declare-sort var2329 0)
(declare-sort var1229 0)
(declare-sort var1776 0)
(declare-sort var1926 0)
(declare-sort var2740 0)
(declare-sort var2528 0)
(declare-sort var2849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var722-init () var722)
(declare-fun var3095-init () var3095)
(declare-fun <init>/814598262 (var3095 String) void)
(declare-fun <init>/702780027 (var722 var2329) void)
(declare-fun cast-from-var3095-to-var2329 (var3095) var2329)
(declare-fun var1229-init () var1229)
(declare-fun <init>/-201242697 (var1229) void)
(declare-fun var1926_put/1464166817 (var1926 var2740 var2740) var2740)
(declare-fun cast-from-var1229-to-var1926 (var1229) var1926)
(declare-fun cast-from-String-to-var2740 (String) var2740)
(declare-fun cast-from-var1776-to-var2740 (var1776) var2740)
(declare-fun CompilationUnit/1027580571 (var722 var1926) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2528 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1776-FALSE var1776)
(declare-const var1776-TRUE var1776)
(declare-const var2849-out var2528)
(declare-const var1169 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1169 null-String)))
(declare-const var2090 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2090 null-Bool)))
(define-const var952 var722 var722-init) ; Statement: $r0 = new org.javacc.utils.ConditionParser 
(define-const var621 var3095 var3095-init) ; Statement: $r1 = new java.io.StringReader 
(assert true)
;(assert (<init>/814598262 var621 var1169)) ; Statement: specialinvoke $r1.<java.io.StringReader: void <init>(java.lang.String)>(r2) 

(declare-const var621!1 var3095)
(declare-const var1169!1 String)
(assert true)
;(assert (<init>/702780027 var952 (cast-from-var3095-to-var2329 var621!1))) ; Statement: specialinvoke $r0.<org.javacc.utils.ConditionParser: void <init>(java.io.Reader)>($r1) 

(declare-const var952!1 var722)
(declare-const var621!2 var3095)
(define-const var3546 var1229 var1229-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3546)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var3546!1 var1229)
(define-const var1497 var1776 var1776-FALSE) ; Statement: $r4 = <java.lang.Boolean: java.lang.Boolean FALSE> 
;(assert (var1926_put/1464166817 (cast-from-var1229-to-var1926 var3546!1) (cast-from-String-to-var2740 "F") (cast-from-var1776-to-var2740 var1497))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("F", $r4) 

(declare-const var3546!2 var1229)
(declare-const var319 String)
(declare-const var1497!1 var1776)
(define-const var2939 var1776 var1776-TRUE) ; Statement: $r5 = <java.lang.Boolean: java.lang.Boolean TRUE> 
;(assert (var1926_put/1464166817 (cast-from-var1229-to-var1926 var3546!2) (cast-from-String-to-var2740 "T") (cast-from-var1776-to-var2740 var2939))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("T", $r5) 

(declare-const var3546!3 var1229)
(declare-const var1567 String)
(declare-const var2939!1 var1776)
(assert true)
(define-const var3619 Bool (CompilationUnit/1027580571 var952!1 (cast-from-var1229-to-var1926 var3546!3))) ; Statement: z0 = virtualinvoke $r0.<org.javacc.utils.ConditionParser: boolean CompilationUnit(java.util.Map)>($r3) 
(define-const var2897 var2528 var2849-out) ; Statement: $r7 = <java.lang.System: java.io.PrintStream out> 
(define-const var2222 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2222)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2222!1 String)
(assert (= var2222!1 ""))
(assert true)
(define-const var1094 String (append/672562846 var2222!1 var1169!1)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2222!2 String)
(assert (= var2222!2 (str.++ var2222!1 var1169!1)))
(assert true)
(define-const var1800 String (append/672562846 var1094 " = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var1094!1 String)
(assert (= var1094!1 (str.++ var1094 " = ")))
(assert true)
(define-const var3692 String (append/-388390247 var1800 var3619)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var1800!1 String)
(assert (str.prefixof var1800 var1800!1))
(assert true)
(define-const var3551 String (toString/-2075883882 var3692)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2897 var3551)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var2897!1 var2528)
(declare-const var3551!1 String)
 ; Statement: if z0 == z1 goto return 
(assert (= var3619 var2090)) ; Cond: z0 == z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var722-init=([], org.javacc.utils.ConditionParser), var3095-init=([], java.io.StringReader), <init>/814598262=([java.io.StringReader, java.lang.String], void), <init>/702780027=([org.javacc.utils.ConditionParser, java.io.Reader], void), cast-from-var3095-to-var2329=([java.io.StringReader], java.io.Reader), var1229-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var1926_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1229-to-var1926=([java.util.HashMap], java.util.Map), cast-from-String-to-var2740=([java.lang.String], java.lang.Object), cast-from-var1776-to-var2740=([java.lang.Boolean], java.lang.Object), CompilationUnit/1027580571=([org.javacc.utils.ConditionParser, java.util.Map], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1169=r2, var1171=null_type, var2090=z1, var722=org.javacc.utils.ConditionParser, var952=$r0, var3095=java.io.StringReader, var621=$r1, var2329=java.io.Reader, var1229=java.util.HashMap, var3546=$r3, var1776=java.lang.Boolean, var1497=$r4, var1926=java.util.Map, var2740=java.lang.Object, var319="F", var2939=$r5, var1567="T", var3619=z0, var2528=java.io.PrintStream, var2849=java.lang.System, var2897=$r7, var2222=$r6, var1094=$r8, var1800=$r9, var3692=$r10, var3551=$r11}
; {r2=var1169, null_type=var1171, z1=var2090, org.javacc.utils.ConditionParser=var722, $r0=var952, java.io.StringReader=var3095, $r1=var621, java.io.Reader=var2329, java.util.HashMap=var1229, $r3=var3546, java.lang.Boolean=var1776, $r4=var1497, java.util.Map=var1926, java.lang.Object=var2740, "F"=var319, $r5=var2939, "T"=var1567, z0=var3619, java.io.PrintStream=var2528, java.lang.System=var2849, $r7=var2897, $r6=var2222, $r8=var1094, $r9=var1800, $r10=var3692, $r11=var3551}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$r0 = new org.javacc.utils.ConditionParser;	$r1 = new java.io.StringReader;	specialinvoke $r1.<java.io.StringReader: void <init>(java.lang.String)>(r2);	specialinvoke $r0.<org.javacc.utils.ConditionParser: void <init>(java.io.Reader)>($r1);	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	$r4 = <java.lang.Boolean: java.lang.Boolean FALSE>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("F", $r4);	$r5 = <java.lang.Boolean: java.lang.Boolean TRUE>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("T", $r5);	z0 = virtualinvoke $r0.<org.javacc.utils.ConditionParser: boolean CompilationUnit(java.util.Map)>($r3);	$r7 = <java.lang.System: java.io.PrintStream out>;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r11);	if z0 == z1 goto return;	return
;block_num 2