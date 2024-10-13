(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun devMinor/2033466638 (var3195) Int)
(declare-const null-var3195 var3195)
(declare-const null-Int Int)
(declare-const var3090 var3195) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var3090 null-var3195)))
(declare-const var1759 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1759 null-Int)))
 ; Statement: if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = i0 
(assert (>= var1759 0)) ; Cond: i0 >= 0 
(declare-const var3090!1 var3195)
(assert (not (= var3090!1 null-var3195)))
(assert (= (devMinor/2033466638 var3090!1) var1759)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {devMinor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int)}
; {var3195=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var3090=r0, var1759=i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var3195, r0=var3090, i0=var1759}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	i0 := @parameter0: int;	if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = i0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = i0;	return
;block_num 2