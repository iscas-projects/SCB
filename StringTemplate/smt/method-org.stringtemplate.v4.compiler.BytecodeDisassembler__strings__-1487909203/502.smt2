(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2519 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun code/1498274111 (var2519) var755)
(declare-fun strings/1377009226 (var755) (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2519 var2519)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3940 var2519) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler 
(assert (not (= var3940 null-var2519)))
(define-const var3250 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3250)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3250!1 String)
(assert (= var3250!1 ""))
(define-const var79 Int 0) ; Statement: i1 = 0 
(define-const var2003 var755 (code/1498274111 var3940)) ; Statement: $r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code> 
(define-const var2918 (Array Int String) (strings/1377009226 var2003)) ; Statement: $r3 = $r2.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String[] strings> 
 ; Statement: if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2918 null-__Array__Int__String__)) ; Cond: $r3 == null 
(assert true)
(define-const var2570 String (toString/-2075883882 var3250!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), code/1498274111=([org.stringtemplate.v4.compiler.BytecodeDisassembler], org.stringtemplate.v4.compiler.CompiledST), strings/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2519=org.stringtemplate.v4.compiler.BytecodeDisassembler, var3940=r1, var3250=$r0, var79=i1, var755=org.stringtemplate.v4.compiler.CompiledST, var2003=$r2, var2918=$r3, var2570=$r4}
; {org.stringtemplate.v4.compiler.BytecodeDisassembler=var2519, r1=var3940, $r0=var3250, i1=var79, org.stringtemplate.v4.compiler.CompiledST=var755, $r2=var2003, $r3=var2918, $r4=var2570}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	$r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code>;	$r3 = $r2.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String[] strings>;	if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2