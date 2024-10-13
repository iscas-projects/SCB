(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1059 0)
(declare-sort var1583 0)
(declare-sort var2539 0)
(declare-sort var154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun impl/55375992 (var1059) var2539)
(declare-fun formalArguments/1377009226 (var2539) var154)
(declare-fun hasFormalArgs/1377009226 (var2539) Bool)
(declare-const null-var1059 var1059)
(declare-const null-String String)
(declare-const null-var154 var154)
(declare-const var2302 var1059) ; Statement: r0 := @this: org.stringtemplate.v4.ST 
(assert (not (= var2302 null-var1059)))
(declare-const var3828 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3828 null-String)))
(define-const var3787 var2539 (impl/55375992 var2302)) ; Statement: $r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var3748 var154 (formalArguments/1377009226 var3787)) ; Statement: $r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert (not (not (= var3748 null-var154)))) ; Negate: Cond: $r2 != null  
(define-const var540 var2539 (impl/55375992 var2302)) ; Statement: $r15 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var932 Bool (hasFormalArgs/1377009226 var540)) ; Statement: $z0 = $r15.<org.stringtemplate.v4.compiler.CompiledST: boolean hasFormalArgs> 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var932 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), formalArguments/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.util.Map), hasFormalArgs/1377009226=([org.stringtemplate.v4.compiler.CompiledST], boolean)}
; {var1059=org.stringtemplate.v4.ST, var2302=r0, var3828=r4, var1583=null_type, var2539=org.stringtemplate.v4.compiler.CompiledST, var3787=$r1, var154=java.util.Map, var3748=$r2, var540=$r15, var932=$z0}
; {org.stringtemplate.v4.ST=var1059, r0=var2302, r4=var3828, null_type=var1583, org.stringtemplate.v4.compiler.CompiledST=var2539, $r1=var3787, java.util.Map=var154, $r2=var3748, $r15=var540, $z0=var932}
;seq 
;cnt {}
;stmts r0 := @this: org.stringtemplate.v4.ST;	r4 := @parameter0: java.lang.String;	$r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r15 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$z0 = $r15.<org.stringtemplate.v4.compiler.CompiledST: boolean hasFormalArgs>;	if $z0 == 0 goto return;	return
;block_num 3