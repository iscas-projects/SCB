(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1044 0)
(declare-sort var1466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun code/1498274111 (var1044) var1466)
(declare-fun codeSize/1377009226 (var1466) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1044 var1044)
(declare-const var3329 var1044) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler 
(assert (not (= var3329 null-var1044)))
(define-const var78 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var78)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var78!1 String)
(assert (= var78!1 ""))
(define-const var3328 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2821 var1466 (code/1498274111 var3329)) ; Statement: $r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code> 
(define-const var3201 Int (codeSize/1377009226 var2821)) ; Statement: $i0 = $r2.<org.stringtemplate.v4.compiler.CompiledST: int codeSize> 
 ; Statement: if i3 >= $i0 goto $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3328 var3201)) ; Cond: i3 >= $i0 
(assert true)
(define-const var1809 String (toString/-2075883882 var78!1)) ; Statement: $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), code/1498274111=([org.stringtemplate.v4.compiler.BytecodeDisassembler], org.stringtemplate.v4.compiler.CompiledST), codeSize/1377009226=([org.stringtemplate.v4.compiler.CompiledST], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1044=org.stringtemplate.v4.compiler.BytecodeDisassembler, var3329=r1, var78=$r11, var3328=i3, var1466=org.stringtemplate.v4.compiler.CompiledST, var2821=$r2, var3201=$i0, var1809=$r3}
; {org.stringtemplate.v4.compiler.BytecodeDisassembler=var1044, r1=var3329, $r11=var78, i3=var3328, org.stringtemplate.v4.compiler.CompiledST=var1466, $r2=var2821, $i0=var3201, $r3=var1809}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code>;	$i0 = $r2.<org.stringtemplate.v4.compiler.CompiledST: int codeSize>;	if i3 >= $i0 goto $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3