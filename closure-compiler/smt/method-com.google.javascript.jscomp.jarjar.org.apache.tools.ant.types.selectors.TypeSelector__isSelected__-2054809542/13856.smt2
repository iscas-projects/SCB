(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var561 0)
(declare-sort var1017 0)
(declare-sort var3118 0)
(declare-sort var3876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/319384515 (var3876) void)
(declare-fun cast-from-var561-to-var3876 (var561) var3876)
(declare-fun isDirectory/-2122094196 (var1017) Bool)
(declare-fun type/992707911 (var561) String)
(declare-const null-var561 var561)
(declare-const null-var1017 var1017)
(declare-const null-String String)
(declare-const var2716 var561) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector 
(assert (not (= var2716 null-var561)))
(declare-const var663 var1017) ; Statement: r4 := @parameter0: java.io.File 
(assert (not (= var663 null-var1017)))
(declare-const var3518 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3518 null-String)))
(declare-const var2070 var1017) ; Statement: r1 := @parameter2: java.io.File 
(assert (not (= var2070 null-var1017)))
(assert true)
;(assert (validate/319384515 (cast-from-var561-to-var3876 var2716))) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: void validate()>() 

(declare-const var2716!1 var561)
(assert true)
(define-const var735 Bool (isDirectory/-2122094196 var2070)) ; Statement: $z0 = virtualinvoke r1.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type> 
(assert (= (ite var735 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2402 String (type/992707911 var2716!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type> 
(assert true)
(define-const var2770 Bool (= var2402 "file")) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("file") 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/319384515=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelector], void), cast-from-var561-to-var3876=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelector), isDirectory/-2122094196=([java.io.File], boolean), type/992707911=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector], java.lang.String)}
; {var561=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector, var2716=r0, var1017=java.io.File, var663=r4, var3518=r5, var3118=null_type, var2070=r1, var3876=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelector, var735=$z0, var2402=$r2, var2770=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector=var561, r0=var2716, java.io.File=var1017, r4=var663, r5=var3518, null_type=var3118, r1=var2070, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelector=var3876, $z0=var735, $r2=var2402, $z1=var2770}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector;	r4 := @parameter0: java.io.File;	r5 := @parameter1: java.lang.String;	r1 := @parameter2: java.io.File;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: void validate()>();	$z0 = virtualinvoke r1.<java.io.File: boolean isDirectory()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type>;	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("file");	return $z1
;block_num 2