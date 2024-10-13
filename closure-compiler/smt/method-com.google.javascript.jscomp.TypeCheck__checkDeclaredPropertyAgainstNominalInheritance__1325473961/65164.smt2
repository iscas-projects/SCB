(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var566 0)
(declare-sort var2087 0)
(declare-sort var3677 0)
(declare-sort var3290 0)
(declare-sort var3417 0)
(declare-sort var1929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var566 var566)
(declare-const null-var2087 var2087)
(declare-const null-var3677 var3677)
(declare-const null-String String)
(declare-const null-var3417 var3417)
(declare-const null-var1929 var1929)
(declare-const var1588 var566) ; Statement: r6 := @this: com.google.javascript.jscomp.TypeCheck 
(assert (not (= var1588 null-var566)))
(declare-const var940 var2087) ; Statement: r7 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var940 null-var2087)))
(declare-const var120 var3677) ; Statement: r3 := @parameter1: com.google.javascript.rhino.jstype.FunctionType 
(assert (not (= var120 null-var3677)))
(declare-const var3654 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3654 null-String)))
(declare-const var2441 var3417) ; Statement: r5 := @parameter3: com.google.javascript.rhino.JSDocInfo 
(assert (not (= var2441 null-var3417)))
(declare-const var3576 var1929) ; Statement: r23 := @parameter4: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var3576 null-var1929)))
(define-const var2780 String "__proto__") ; Statement: $r1 = "__proto__" 
(assert true)
(define-const var712 Bool (= var2780 var3654)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var712 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var566=com.google.javascript.jscomp.TypeCheck, var1588=r6, var2087=com.google.javascript.rhino.Node, var940=r7, var3677=com.google.javascript.rhino.jstype.FunctionType, var120=r3, var3654=r0, var3290=null_type, var3417=com.google.javascript.rhino.JSDocInfo, var2441=r5, var1929=com.google.javascript.rhino.jstype.JSType, var3576=r23, var2780=$r1, var712=$z0}
; {com.google.javascript.jscomp.TypeCheck=var566, r6=var1588, com.google.javascript.rhino.Node=var2087, r7=var940, com.google.javascript.rhino.jstype.FunctionType=var3677, r3=var120, r0=var3654, null_type=var3290, com.google.javascript.rhino.JSDocInfo=var3417, r5=var2441, com.google.javascript.rhino.jstype.JSType=var1929, r23=var3576, $r1=var2780, $z0=var712}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.TypeCheck;	r7 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.rhino.jstype.FunctionType;	r0 := @parameter2: java.lang.String;	r5 := @parameter3: com.google.javascript.rhino.JSDocInfo;	r23 := @parameter4: com.google.javascript.rhino.jstype.JSType;	$r1 = "__proto__";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto return;	return
;block_num 2