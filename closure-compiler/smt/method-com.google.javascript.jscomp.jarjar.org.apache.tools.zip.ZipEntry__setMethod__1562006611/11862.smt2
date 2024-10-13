(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/2030044950 (var935) Int)
(declare-const null-var935 var935)
(declare-const null-Int Int)
(declare-const var1558 var935) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry 
(assert (not (= var1558 null-var935)))
(declare-const var3868 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3868 null-Int)))
 ; Statement: if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: int method> = i0 
(assert (>= var3868 0)) ; Cond: i0 >= 0 
(declare-const var1558!1 var935)
(assert (not (= var1558!1 null-var935)))
(assert (= (method/2030044950 var1558!1) var3868)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: int method> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {method/2030044950=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry], int)}
; {var935=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var1558=r0, var3868=i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var935, r0=var1558, i0=var3868}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry;	i0 := @parameter0: int;	if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: int method> = i0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: int method> = i0;	return
;block_num 2