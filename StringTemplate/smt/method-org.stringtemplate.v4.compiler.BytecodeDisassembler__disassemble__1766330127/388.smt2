(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3460 0)
(declare-sort var1408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun code/1498274111 (var3460) var1408)
(declare-fun codeSize/1377009226 (var1408) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3460 var3460)
(declare-const var1584 var3460) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler 
(assert (not (= var1584 null-var3460)))
(define-const var1498 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1498)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1498!1 String)
(assert (= var1498!1 ""))
(define-const var1477 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3515 var1408 (code/1498274111 var1584)) ; Statement: $r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code> 
(define-const var2812 Int (codeSize/1377009226 var3515)) ; Statement: $i0 = $r2.<org.stringtemplate.v4.compiler.CompiledST: int codeSize> 
 ; Statement: if i1 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1477 var2812)) ; Cond: i1 >= $i0 
(assert true)
(define-const var1167 String (toString/-2075883882 var1498!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), code/1498274111=([org.stringtemplate.v4.compiler.BytecodeDisassembler], org.stringtemplate.v4.compiler.CompiledST), codeSize/1377009226=([org.stringtemplate.v4.compiler.CompiledST], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3460=org.stringtemplate.v4.compiler.BytecodeDisassembler, var1584=r1, var1498=$r0, var1477=i1, var1408=org.stringtemplate.v4.compiler.CompiledST, var3515=$r2, var2812=$i0, var1167=$r3}
; {org.stringtemplate.v4.compiler.BytecodeDisassembler=var3460, r1=var1584, $r0=var1498, i1=var1477, org.stringtemplate.v4.compiler.CompiledST=var1408, $r2=var3515, $i0=var2812, $r3=var1167}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	$r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code>;	$i0 = $r2.<org.stringtemplate.v4.compiler.CompiledST: int codeSize>;	if i1 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3