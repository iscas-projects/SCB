(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var274 0)
(declare-sort var2751 0)
(declare-sort var711 0)
(declare-sort var958 0)
(declare-sort var3424 0)
(declare-sort var2734 0)
(declare-sort var3225 0)
(declare-sort var2460 0)
(declare-sort var751 0)
(declare-sort var12 0)
(declare-sort var2350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2751-init () var2751)
(declare-fun var711-init () var711)
(declare-fun <init>/814598262 (var711 String) void)
(declare-fun <init>/702780027 (var2751 var958) void)
(declare-fun cast-from-var711-to-var958 (var711) var958)
(declare-fun var3424-init () var3424)
(declare-fun <init>/-201242697 (var3424) void)
(declare-fun var3225_put/1464166817 (var3225 var2460 var2460) var2460)
(declare-fun cast-from-var3424-to-var3225 (var3424) var3225)
(declare-fun cast-from-String-to-var2460 (String) var2460)
(declare-fun cast-from-var2734-to-var2460 (var2734) var2460)
(declare-fun CompilationUnit/1027580571 (var2751 var3225) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var751 String) void)
(declare-fun var2350-init () var2350)
(declare-fun <init>/2073162924 (var2350) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2734-FALSE var2734)
(declare-const var2734-TRUE var2734)
(declare-const var12-out var751)
(declare-const var3143 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3143 null-String)))
(declare-const var2368 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2368 null-Bool)))
(define-const var3617 var2751 var2751-init) ; Statement: $r0 = new org.javacc.utils.ConditionParser 
(define-const var2930 var711 var711-init) ; Statement: $r1 = new java.io.StringReader 
(assert true)
;(assert (<init>/814598262 var2930 var3143)) ; Statement: specialinvoke $r1.<java.io.StringReader: void <init>(java.lang.String)>(r2) 

(declare-const var2930!1 var711)
(declare-const var3143!1 String)
(assert true)
;(assert (<init>/702780027 var3617 (cast-from-var711-to-var958 var2930!1))) ; Statement: specialinvoke $r0.<org.javacc.utils.ConditionParser: void <init>(java.io.Reader)>($r1) 

(declare-const var3617!1 var2751)
(declare-const var2930!2 var711)
(define-const var1792 var3424 var3424-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1792)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var1792!1 var3424)
(define-const var50 var2734 var2734-FALSE) ; Statement: $r4 = <java.lang.Boolean: java.lang.Boolean FALSE> 
;(assert (var3225_put/1464166817 (cast-from-var3424-to-var3225 var1792!1) (cast-from-String-to-var2460 "F") (cast-from-var2734-to-var2460 var50))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("F", $r4) 

(declare-const var1792!2 var3424)
(declare-const var2093 String)
(declare-const var50!1 var2734)
(define-const var3855 var2734 var2734-TRUE) ; Statement: $r5 = <java.lang.Boolean: java.lang.Boolean TRUE> 
;(assert (var3225_put/1464166817 (cast-from-var3424-to-var3225 var1792!2) (cast-from-String-to-var2460 "T") (cast-from-var2734-to-var2460 var3855))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("T", $r5) 

(declare-const var1792!3 var3424)
(declare-const var1149 String)
(declare-const var3855!1 var2734)
(assert true)
(define-const var1267 Bool (CompilationUnit/1027580571 var3617!1 (cast-from-var3424-to-var3225 var1792!3))) ; Statement: z0 = virtualinvoke $r0.<org.javacc.utils.ConditionParser: boolean CompilationUnit(java.util.Map)>($r3) 
(define-const var1333 var751 var12-out) ; Statement: $r7 = <java.lang.System: java.io.PrintStream out> 
(define-const var3510 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3510)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3510!1 String)
(assert (= var3510!1 ""))
(assert true)
(define-const var1029 String (append/672562846 var3510!1 var3143!1)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3510!2 String)
(assert (= var3510!2 (str.++ var3510!1 var3143!1)))
(assert true)
(define-const var817 String (append/672562846 var1029 " = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var1029!1 String)
(assert (= var1029!1 (str.++ var1029 " = ")))
(assert true)
(define-const var1522 String (append/-388390247 var817 var1267)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var817!1 String)
(assert (str.prefixof var817 var817!1))
(assert true)
(define-const var3690 String (toString/-2075883882 var1522)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1333 var3690)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var1333!1 var751)
(declare-const var3690!1 String)
 ; Statement: if z0 == z1 goto return 
(assert (not (= var1267 var2368))) ; Negate: Cond: z0 == z1  
(define-const var3648 var2350 var2350-init) ; Statement: $r12 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/2073162924 var3648)) ; Statement: specialinvoke $r12.<java.lang.RuntimeException: void <init>()>() 

(declare-const var3648!1 var2350)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2751-init=([], org.javacc.utils.ConditionParser), var711-init=([], java.io.StringReader), <init>/814598262=([java.io.StringReader, java.lang.String], void), <init>/702780027=([org.javacc.utils.ConditionParser, java.io.Reader], void), cast-from-var711-to-var958=([java.io.StringReader], java.io.Reader), var3424-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var3225_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3424-to-var3225=([java.util.HashMap], java.util.Map), cast-from-String-to-var2460=([java.lang.String], java.lang.Object), cast-from-var2734-to-var2460=([java.lang.Boolean], java.lang.Object), CompilationUnit/1027580571=([org.javacc.utils.ConditionParser, java.util.Map], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2350-init=([], java.lang.RuntimeException), <init>/2073162924=([java.lang.RuntimeException], void)}
; {var3143=r2, var274=null_type, var2368=z1, var2751=org.javacc.utils.ConditionParser, var3617=$r0, var711=java.io.StringReader, var2930=$r1, var958=java.io.Reader, var3424=java.util.HashMap, var1792=$r3, var2734=java.lang.Boolean, var50=$r4, var3225=java.util.Map, var2460=java.lang.Object, var2093="F", var3855=$r5, var1149="T", var1267=z0, var751=java.io.PrintStream, var12=java.lang.System, var1333=$r7, var3510=$r6, var1029=$r8, var817=$r9, var1522=$r10, var3690=$r11, var2350=java.lang.RuntimeException, var3648=$r12}
; {r2=var3143, null_type=var274, z1=var2368, org.javacc.utils.ConditionParser=var2751, $r0=var3617, java.io.StringReader=var711, $r1=var2930, java.io.Reader=var958, java.util.HashMap=var3424, $r3=var1792, java.lang.Boolean=var2734, $r4=var50, java.util.Map=var3225, java.lang.Object=var2460, "F"=var2093, $r5=var3855, "T"=var1149, z0=var1267, java.io.PrintStream=var751, java.lang.System=var12, $r7=var1333, $r6=var3510, $r8=var1029, $r9=var817, $r10=var1522, $r11=var3690, java.lang.RuntimeException=var2350, $r12=var3648}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$r0 = new org.javacc.utils.ConditionParser;	$r1 = new java.io.StringReader;	specialinvoke $r1.<java.io.StringReader: void <init>(java.lang.String)>(r2);	specialinvoke $r0.<org.javacc.utils.ConditionParser: void <init>(java.io.Reader)>($r1);	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	$r4 = <java.lang.Boolean: java.lang.Boolean FALSE>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("F", $r4);	$r5 = <java.lang.Boolean: java.lang.Boolean TRUE>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("T", $r5);	z0 = virtualinvoke $r0.<org.javacc.utils.ConditionParser: boolean CompilationUnit(java.util.Map)>($r3);	$r7 = <java.lang.System: java.io.PrintStream out>;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r11);	if z0 == z1 goto return;	$r12 = new java.lang.RuntimeException;	specialinvoke $r12.<java.lang.RuntimeException: void <init>()>();	throw $r12
;block_num 2