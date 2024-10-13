(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3107 0)
(declare-sort var627 0)
(declare-sort var3529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun script/1953596185 (var3107) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var627-to-var3529 (var627) var3529)
(declare-fun getValue/230161645 (var3529) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3107 var3107)
(declare-const null-var627 var627)
(declare-const var343 var3107) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase 
(assert (not (= var343 null-var3107)))
(declare-const var2629 var627) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2629 null-var627)))
(define-const var2032 Bool false) ; Statement: $z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource 
(assert (not (= (ite var2032 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3363 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3363)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3363!1 String)
(assert (= var3363!1 ""))
(define-const var3183 String (script/1953596185 var343)) ; Statement: $r12 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: java.lang.String script> 
(assert true)
(define-const var3422 String (append/672562846 var3363!1 var3183)) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3363!2 String)
(assert (= var3363!2 (str.++ var3363!1 var3183)))
(define-const var117 var3529 (cast-from-var627-to-var3529 var2629)) ; Statement: $r13 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource) r0 
(assert true)
(define-const var2672 String (getValue/230161645 var117)) ; Statement: $r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: java.lang.String getValue()>() 
(assert true)
(define-const var1960 String (append/672562846 var3422 var2672)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3422!1 String)
(assert (= var3422!1 (str.++ var3422 var2672)))
(assert true)
(define-const var3367 String (toString/-2075883882 var1960)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var343!1 var3107)
(assert (not (= var343!1 null-var3107)))
(assert (= (script/1953596185 var343!1) var3367)) ; Statement: r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: java.lang.String script> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), script/1953596185=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var627-to-var3529=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource), getValue/230161645=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3107=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, var343=r2, var627=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2629=r0, var2032=$z0, var3363=$r11, var3183=$r12, var3422=$r15, var3529=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource, var117=$r13, var2672=$r14, var1960=$r16, var3367=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase=var3107, r2=var343, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var627, r0=var2629, $z0=var2032, $r11=var3363, $r12=var3183, $r15=var3422, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource=var3529, $r13=var117, $r14=var2672, $r16=var1960, $r17=var3367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource;	if $z0 == 0 goto $z1 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: java.lang.String script>;	$r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r13 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource) r0;	$r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: java.lang.String getValue()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: java.lang.String script> = $r17;	return
;block_num 2