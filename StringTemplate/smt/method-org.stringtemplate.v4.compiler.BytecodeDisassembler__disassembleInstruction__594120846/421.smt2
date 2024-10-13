(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var261 0)
(declare-sort var3174 0)
(declare-sort var3754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/1498274111 (var261) var3174)
(declare-fun instrs/1377009226 (var3174) (Array Int Int))
(declare-fun codeSize/1377009226 (var3174) Int)
(declare-fun var3754-init () var3754)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3754 String) void)
(declare-const null-var261 var261)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2623 var261) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler 
(assert (not (= var2623 null-var261)))
(declare-const var3472 String) ; Statement: r7 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3472 null-String)))
(declare-const var2420 Int) ; Statement: i7 := @parameter1: int 
(assert (not (= var2420 null-Int)))
(define-const var2183 var3174 (code/1498274111 var2623)) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code> 
(define-const var893 (Array Int Int) (instrs/1377009226 var2183)) ; Statement: $r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: byte[] instrs> 
(define-const var2112 Int (select var893 var2420)) ; Statement: b0 = $r2[i7] 
(define-const var3029 var3174 (code/1498274111 var2623)) ; Statement: $r3 = r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code> 
(define-const var1014 Int (codeSize/1377009226 var3029)) ; Statement: $i1 = $r3.<org.stringtemplate.v4.compiler.CompiledST: int codeSize> 
 ; Statement: if i7 < $i1 goto $r4 = <org.stringtemplate.v4.compiler.Bytecode: org.stringtemplate.v4.compiler.Bytecode$Instruction[] instructions> 
(assert (not (< var2420 var1014))) ; Negate: Cond: i7 < $i1  
(define-const var2640 var3754 var3754-init) ; Statement: $r35 = new java.lang.IllegalArgumentException 
(define-const var1943 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1943)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1943!1 String)
(assert (= var1943!1 ""))
(assert true)
(define-const var3689 String (append/672562846 var1943!1 "ip out of range: ")) ; Statement: $r30 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ip out of range: ") 
(declare-const var1943!2 String)
(assert (= var1943!2 (str.++ var1943!1 "ip out of range: ")))
(assert true)
(define-const var317 String (append/-1001720160 var3689 var2420)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var3689!1 String)
(assert (str.prefixof var3689 var3689!1))
(assert true)
(define-const var2811 String (toString/-2075883882 var317)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2640 var2811)) ; Statement: specialinvoke $r35.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r32) 

(declare-const var2640!1 var3754)
(declare-const var2811!1 String)
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {code/1498274111=([org.stringtemplate.v4.compiler.BytecodeDisassembler], org.stringtemplate.v4.compiler.CompiledST), instrs/1377009226=([org.stringtemplate.v4.compiler.CompiledST], byte[]), codeSize/1377009226=([org.stringtemplate.v4.compiler.CompiledST], int), var3754-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var261=org.stringtemplate.v4.compiler.BytecodeDisassembler, var2623=r0, var3472=r7, var2420=i7, var3174=org.stringtemplate.v4.compiler.CompiledST, var2183=$r1, var893=$r2, var2112=b0, var3029=$r3, var1014=$i1, var3754=java.lang.IllegalArgumentException, var2640=$r35, var1943=$r34, var3689=$r30, var317=$r31, var2811=$r32}
; {org.stringtemplate.v4.compiler.BytecodeDisassembler=var261, r0=var2623, r7=var3472, i7=var2420, org.stringtemplate.v4.compiler.CompiledST=var3174, $r1=var2183, $r2=var893, b0=var2112, $r3=var3029, $i1=var1014, java.lang.IllegalArgumentException=var3754, $r35=var2640, $r34=var1943, $r30=var3689, $r31=var317, $r32=var2811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler;	r7 := @parameter0: java.lang.StringBuilder;	i7 := @parameter1: int;	$r1 = r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code>;	$r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: byte[] instrs>;	b0 = $r2[i7];	$r3 = r0.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code>;	$i1 = $r3.<org.stringtemplate.v4.compiler.CompiledST: int codeSize>;	if i7 < $i1 goto $r4 = <org.stringtemplate.v4.compiler.Bytecode: org.stringtemplate.v4.compiler.Bytecode$Instruction[] instructions>;	$r35 = new java.lang.IllegalArgumentException;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ip out of range: ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r35.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r32);	throw $r35
;block_num 2