(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun devMajor/2033466638 (var3875) Int)
(declare-const null-var3875 var3875)
(declare-const null-Int Int)
(declare-const var621 var3875) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var621 null-var3875)))
(declare-const var3432 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3432 null-Int)))
 ; Statement: if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = i0 
(assert (>= var3432 0)) ; Cond: i0 >= 0 
(declare-const var621!1 var3875)
(assert (not (= var621!1 null-var3875)))
(assert (= (devMajor/2033466638 var621!1) var3432)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {devMajor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int)}
; {var3875=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var621=r0, var3432=i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var3875, r0=var621, i0=var3432}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	i0 := @parameter0: int;	if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = i0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = i0;	return
;block_num 2