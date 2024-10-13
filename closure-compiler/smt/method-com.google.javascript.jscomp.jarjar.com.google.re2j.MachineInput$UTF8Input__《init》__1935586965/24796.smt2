(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var1303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1177731024 (var1303) void)
(declare-fun cast-from-var478-to-var1303 (var478) var1303)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun b/909628708 (var478) (Array Int Int))
(declare-fun start/909628708 (var478) Int)
(declare-fun end/909628708 (var478) Int)
(declare-const null-var478 var478)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3213 var478) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input 
(assert (not (= var3213 null-var478)))
(declare-const var2239 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2239 null-__Array__Int__Int__)))
(declare-const var2016 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2016 null-Int)))
(declare-const var1515 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1515 null-Int)))
(assert true)
;(assert (<init>/1177731024 (cast-from-var478-to-var1303 var3213))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput: void <init>()>() 

(declare-const var3213!1 var478)
(define-const var902 Int (getLength-Arr-Int-1 var2239)) ; Statement: $i1 = lengthof r1 
 ; Statement: if i0 <= $i1 goto r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: byte[] b> = r1 
(assert (<= var1515 var902)) ; Cond: i0 <= $i1 
(declare-const var3213!2 var478)
(assert (not (= var3213!2 null-var478)))
(assert (= (b/909628708 var3213!2) var2239)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: byte[] b> = r1 
(declare-const var3213!3 var478)
(assert (not (= var3213!3 null-var478)))
(assert (= (start/909628708 var3213!3) var2016)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: int start> = i2 
(declare-const var3213!4 var478)
(assert (not (= var3213!4 null-var478)))
(assert (= (end/909628708 var3213!4) var1515)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: int end> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1177731024=([com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput], void), cast-from-var478-to-var1303=([com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input], com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput), getLength-Arr-Int-1=([byte[]], int), b/909628708=([com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input], byte[]), start/909628708=([com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input], int), end/909628708=([com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input], int)}
; {var478=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input, var3213=r0, var2239=r1, var2016=i2, var1515=i0, var1303=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput, var902=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input=var478, r0=var3213, r1=var2239, i2=var2016, i0=var1515, com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput=var1303, $i1=var902}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input;	r1 := @parameter0: byte[];	i2 := @parameter1: int;	i0 := @parameter2: int;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput: void <init>()>();	$i1 = lengthof r1;	if i0 <= $i1 goto r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: byte[] b> = r1;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: byte[] b> = r1;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: int start> = i2;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF8Input: int end> = i0;	return
;block_num 2