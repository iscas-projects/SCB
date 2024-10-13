(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort var130 0)
(declare-sort var931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var931_writeGarbageCollectionStats/1082175102 (var3547 Bool Bool) void)
(declare-fun var931_writeMemoryMetrics/-1551806692 (var3547 Bool Bool) void)
(declare-fun var931_writeJitMetrics/-850728128 (var3547 Bool Bool) void)
(declare-const null-var3547 var3547)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1289 var3547) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var1289 null-var3547)))
(declare-const var1737 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1737 null-String)))
(declare-const var2935 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2935 null-Bool)))
(declare-const var3935 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3935 null-Bool)))
(assert true)
(define-const var1642 Bool (= var1737 "gc")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc") 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var1642 1 0) 0))) ; Cond: $z0 != 0 
;(assert (var931_writeGarbageCollectionStats/1082175102 var1289 var2935 var3935)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var1289!1 var3547)
(declare-const var2935!1 Bool)
(declare-const var3935!1 Bool)
(assert true) ; Non Conditional
(assert true)
(define-const var1159 Bool (= var1737 "mem")) ; Statement: $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
 ; Statement: if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var1159 1 0) 0))) ; Cond: $z6 != 0 
;(assert (var931_writeMemoryMetrics/-1551806692 var1289!1 var2935!1 var3935!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var1289!2 var3547)
(declare-const var2935!2 Bool)
(declare-const var3935!2 Bool)
(assert true) ; Non Conditional
(assert true)
(define-const var1612 Bool (= var1737 "jit")) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
 ; Statement: if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var1612 1 0) 0))) ; Cond: $z7 != 0 
;(assert (var931_writeJitMetrics/-850728128 var1289!2 var2935!2 var3935!2)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var1289!3 var3547)
(declare-const var2935!3 Bool)
(declare-const var3935!3 Bool)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var931_writeGarbageCollectionStats/1082175102=([java.io.PrintStream, boolean, boolean], void), var931_writeMemoryMetrics/-1551806692=([java.io.PrintStream, boolean, boolean], void), var931_writeJitMetrics/-850728128=([java.io.PrintStream, boolean, boolean], void)}
; {var3547=java.io.PrintStream, var1289=r1, var1737=r0, var130=null_type, var2935=z1, var3935=z2, var1642=$z0, var931=com.google.javascript.jscomp.JvmMetrics, var1159=$z6, var1612=$z7}
; {java.io.PrintStream=var3547, r1=var1289, r0=var1737, null_type=var130, z1=var2935, z2=var3935, $z0=var1642, com.google.javascript.jscomp.JvmMetrics=var931, $z6=var1159, $z7=var1612}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc");	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	return
;block_num 7