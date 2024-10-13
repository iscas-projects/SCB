(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1389 0)
(declare-sort var553 0)
(declare-sort var765 0)
(declare-sort var680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/319384515 (var680) void)
(declare-fun cast-from-var1389-to-var680 (var1389) var680)
(declare-fun isDirectory/-2122094196 (var553) Bool)
(declare-fun type/992707911 (var1389) String)
(declare-const null-var1389 var1389)
(declare-const null-var553 var553)
(declare-const null-String String)
(declare-const var2874 var1389) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector 
(assert (not (= var2874 null-var1389)))
(declare-const var3440 var553) ; Statement: r4 := @parameter0: java.io.File 
(assert (not (= var3440 null-var553)))
(declare-const var3256 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3256 null-String)))
(declare-const var2834 var553) ; Statement: r1 := @parameter2: java.io.File 
(assert (not (= var2834 null-var553)))
(assert true)
;(assert (validate/319384515 (cast-from-var1389-to-var680 var2874))) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: void validate()>() 

(declare-const var2874!1 var1389)
(assert true)
(define-const var3011 Bool (isDirectory/-2122094196 var2834)) ; Statement: $z0 = virtualinvoke r1.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type> 
(assert (not (= (ite var3011 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var264 String (type/992707911 var2874!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type> 
(assert true)
(define-const var2666 Bool (= var264 "dir")) ; Statement: $z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("dir") 
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/319384515=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelector], void), cast-from-var1389-to-var680=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelector), isDirectory/-2122094196=([java.io.File], boolean), type/992707911=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector], java.lang.String)}
; {var1389=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector, var2874=r0, var553=java.io.File, var3440=r4, var3256=r5, var765=null_type, var2834=r1, var680=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelector, var3011=$z0, var264=$r3, var2666=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector=var1389, r0=var2874, java.io.File=var553, r4=var3440, r5=var3256, null_type=var765, r1=var2834, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.BaseSelector=var680, $z0=var3011, $r3=var264, $z2=var2666}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector;	r4 := @parameter0: java.io.File;	r5 := @parameter1: java.lang.String;	r1 := @parameter2: java.io.File;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: void validate()>();	$z0 = virtualinvoke r1.<java.io.File: boolean isDirectory()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TypeSelector: java.lang.String type>;	$z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("dir");	return $z2
;block_num 2