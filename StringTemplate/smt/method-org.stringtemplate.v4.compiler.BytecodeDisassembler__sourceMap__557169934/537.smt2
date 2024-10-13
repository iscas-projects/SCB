(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2322 0)
(declare-sort var1624 0)
(declare-sort var3420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun code/1498274111 (var2322) var1624)
(declare-fun sourceMap/1377009226 (var1624) (Array Int var3420))
(declare-fun getLength-Arr-var3420-1 ((Array Int var3420)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2322 var2322)
(declare-const var3615 var2322) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler 
(assert (not (= var3615 null-var2322)))
(define-const var2588 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2588)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2588!1 String)
(assert (= var2588!1 ""))
(define-const var3199 Int 0) ; Statement: i4 = 0 
(define-const var3515 var1624 (code/1498274111 var3615)) ; Statement: $r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code> 
(define-const var1118 (Array Int var3420) (sourceMap/1377009226 var3515)) ; Statement: r3 = $r2.<org.stringtemplate.v4.compiler.CompiledST: org.stringtemplate.v4.misc.Interval[] sourceMap> 
(define-const var1758 Int (getLength-Arr-var3420-1 var1118)) ; Statement: i0 = lengthof r3 
(define-const var1530 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1530 var1758)) ; Cond: i5 >= i0 
(assert true)
(define-const var3268 String (toString/-2075883882 var2588!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), code/1498274111=([org.stringtemplate.v4.compiler.BytecodeDisassembler], org.stringtemplate.v4.compiler.CompiledST), sourceMap/1377009226=([org.stringtemplate.v4.compiler.CompiledST], org.stringtemplate.v4.misc.Interval[]), getLength-Arr-var3420-1=([org.stringtemplate.v4.misc.Interval[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2322=org.stringtemplate.v4.compiler.BytecodeDisassembler, var3615=r1, var2588=$r0, var3199=i4, var1624=org.stringtemplate.v4.compiler.CompiledST, var3515=$r2, var3420=org.stringtemplate.v4.misc.Interval, var1118=r3, var1758=i0, var1530=i5, var3268=$r4}
; {org.stringtemplate.v4.compiler.BytecodeDisassembler=var2322, r1=var3615, $r0=var2588, i4=var3199, org.stringtemplate.v4.compiler.CompiledST=var1624, $r2=var3515, org.stringtemplate.v4.misc.Interval=var3420, r3=var1118, i0=var1758, i5=var1530, $r4=var3268}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i4 = 0;	$r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code>;	r3 = $r2.<org.stringtemplate.v4.compiler.CompiledST: org.stringtemplate.v4.misc.Interval[] sourceMap>;	i0 = lengthof r3;	i5 = 0;	if i5 >= i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3