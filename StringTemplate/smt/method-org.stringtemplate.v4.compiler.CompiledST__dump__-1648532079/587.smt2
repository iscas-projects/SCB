(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var8 0)
(declare-sort var1577 0)
(declare-sort var1262 0)
(declare-sort var1339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1577-init () var1577)
(declare-fun <init>/-169064116 (var1577 var8) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1377009226 (var8) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1262 String) void)
(declare-fun disassemble/1766330127 (var1577) String)
(declare-fun strings/-1487909203 (var1577) String)
(declare-fun sourceMap/557169934 (var1577) String)
(declare-const null-var8 var8)
(declare-const var1339-out var1262)
(declare-const var3032 var8) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.CompiledST 
(assert (not (= var3032 null-var8)))
(define-const var3524 var1577 var1577-init) ; Statement: $r0 = new org.stringtemplate.v4.compiler.BytecodeDisassembler 
(assert true)
;(assert (<init>/-169064116 var3524 var3032)) ; Statement: specialinvoke $r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>(r1) 

(declare-const var3524!1 var1577)
(declare-const var3032!1 var8)
(define-const var2930 var1262 var1339-out) ; Statement: $r3 = <java.lang.System: java.io.PrintStream out> 
(define-const var3427 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3427)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3427!1 String)
(assert (= var3427!1 ""))
(define-const var3208 String (name/1377009226 var3032!1)) ; Statement: $r4 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(assert true)
(define-const var1273 String (append/672562846 var3427!1 var3208)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3427!2 String)
(assert (= var3427!2 (str.++ var3427!1 var3208)))
(assert true)
(define-const var3821 String (append/672562846 var1273 ":")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1273!1 String)
(assert (= var1273!1 (str.++ var1273 ":")))
(assert true)
(define-const var3061 String (toString/-2075883882 var3821)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2930 var3061)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r7) 

(declare-const var2930!1 var1262)
(declare-const var3061!1 String)
(define-const var3865 var1262 var1339-out) ; Statement: $r8 = <java.lang.System: java.io.PrintStream out> 
(assert true)
(define-const var903 String (disassemble/1766330127 var3524!1)) ; Statement: $r9 = virtualinvoke $r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: java.lang.String disassemble()>() 
(assert true)
;(assert (println/1773605060 var3865 var903)) ; Statement: virtualinvoke $r8.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var3865!1 var1262)
(declare-const var903!1 String)
(define-const var1980 var1262 var1339-out) ; Statement: $r10 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var1980 "Strings:")) ; Statement: virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>("Strings:") 

(declare-const var1980!1 var1262)
(declare-const var3078 String)
(define-const var2350 var1262 var1339-out) ; Statement: $r11 = <java.lang.System: java.io.PrintStream out> 
(assert true)
(define-const var1542 String (strings/-1487909203 var3524!1)) ; Statement: $r12 = virtualinvoke $r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: java.lang.String strings()>() 
(assert true)
;(assert (println/1773605060 var2350 var1542)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>($r12) 

(declare-const var2350!1 var1262)
(declare-const var1542!1 String)
(define-const var3575 var1262 var1339-out) ; Statement: $r13 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var3575 "Bytecode to template map:")) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>("Bytecode to template map:") 

(declare-const var3575!1 var1262)
(declare-const var553 String)
(define-const var3699 var1262 var1339-out) ; Statement: $r14 = <java.lang.System: java.io.PrintStream out> 
(assert true)
(define-const var2999 String (sourceMap/557169934 var3524!1)) ; Statement: $r15 = virtualinvoke $r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: java.lang.String sourceMap()>() 
(assert true)
;(assert (println/1773605060 var3699 var2999)) ; Statement: virtualinvoke $r14.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var3699!1 var1262)
(declare-const var2999!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1577-init=([], org.stringtemplate.v4.compiler.BytecodeDisassembler), <init>/-169064116=([org.stringtemplate.v4.compiler.BytecodeDisassembler, org.stringtemplate.v4.compiler.CompiledST], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), disassemble/1766330127=([org.stringtemplate.v4.compiler.BytecodeDisassembler], java.lang.String), strings/-1487909203=([org.stringtemplate.v4.compiler.BytecodeDisassembler], java.lang.String), sourceMap/557169934=([org.stringtemplate.v4.compiler.BytecodeDisassembler], java.lang.String)}
; {var8=org.stringtemplate.v4.compiler.CompiledST, var3032=r1, var1577=org.stringtemplate.v4.compiler.BytecodeDisassembler, var3524=$r0, var1262=java.io.PrintStream, var1339=java.lang.System, var2930=$r3, var3427=$r2, var3208=$r4, var1273=$r5, var3821=$r6, var3061=$r7, var3865=$r8, var903=$r9, var1980=$r10, var3078="Strings:", var2350=$r11, var1542=$r12, var3575=$r13, var553="Bytecode to template map:", var3699=$r14, var2999=$r15}
; {org.stringtemplate.v4.compiler.CompiledST=var8, r1=var3032, org.stringtemplate.v4.compiler.BytecodeDisassembler=var1577, $r0=var3524, java.io.PrintStream=var1262, java.lang.System=var1339, $r3=var2930, $r2=var3427, $r4=var3208, $r5=var1273, $r6=var3821, $r7=var3061, $r8=var3865, $r9=var903, $r10=var1980, "Strings:"=var3078, $r11=var2350, $r12=var1542, $r13=var3575, "Bytecode to template map:"=var553, $r14=var3699, $r15=var2999}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.CompiledST;	$r0 = new org.stringtemplate.v4.compiler.BytecodeDisassembler;	specialinvoke $r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>(r1);	$r3 = <java.lang.System: java.io.PrintStream out>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r7);	$r8 = <java.lang.System: java.io.PrintStream out>;	$r9 = virtualinvoke $r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: java.lang.String disassemble()>();	virtualinvoke $r8.<java.io.PrintStream: void println(java.lang.String)>($r9);	$r10 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>("Strings:");	$r11 = <java.lang.System: java.io.PrintStream out>;	$r12 = virtualinvoke $r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: java.lang.String strings()>();	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>($r12);	$r13 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>("Bytecode to template map:");	$r14 = <java.lang.System: java.io.PrintStream out>;	$r15 = virtualinvoke $r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: java.lang.String sourceMap()>();	virtualinvoke $r14.<java.io.PrintStream: void println(java.lang.String)>($r15);	return
;block_num 1