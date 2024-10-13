(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3927 0)
(declare-sort var673 0)
(declare-sort var3734 0)
(declare-sort var3235 0)
(declare-sort var811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3235_shouldUseKaffe/754946033 () Bool)
(declare-fun var811-init () var811)
(declare-fun <init>/-177554424 (var811) void)
(declare-const null-String String)
(declare-const null-var673 var673)
(declare-const null-var3734 var3734)
(declare-const var3542 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3542 null-String)))
(declare-const var2441 var673) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent 
(assert (not (= var2441 null-var673)))
(declare-const var258 var3734) ; Statement: r6 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var258 null-var3734)))
(define-const var2138 Bool var3235_shouldUseKaffe/754946033) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.Native2AsciiAdapterFactory: boolean shouldUseKaffe()>() 
 ; Statement: if $z0 == 0 goto $r1 = "kaffe" 
(assert (= (ite var2138 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1834 String "kaffe") ; Statement: $r1 = "kaffe" 
(assert true)
(define-const var1748 Bool (= var1834 var3542)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $r2 = "sun" 
(assert (not (= (ite var1748 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var746 var811 var811-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.KaffeNative2Ascii 
(assert true)
;(assert (<init>/-177554424 var746)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.KaffeNative2Ascii: void <init>()>() 

(declare-const var746!1 var811)
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3235_shouldUseKaffe/754946033=([], boolean), var811-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.KaffeNative2Ascii), <init>/-177554424=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.KaffeNative2Ascii], void)}
; {var3542=r0, var3927=null_type, var673=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2441=r5, var3734=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var258=r6, var3235=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.Native2AsciiAdapterFactory, var2138=$z0, var1834=$r1, var1748=$z1, var811=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.KaffeNative2Ascii, var746=$r12}
; {r0=var3542, null_type=var3927, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var673, r5=var2441, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var3734, r6=var258, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.Native2AsciiAdapterFactory=var3235, $z0=var2138, $r1=var1834, $z1=var1748, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.KaffeNative2Ascii=var811, $r12=var746}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent;	r6 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.Native2AsciiAdapterFactory: boolean shouldUseKaffe()>();	if $z0 == 0 goto $r1 = "kaffe";	$r1 = "kaffe";	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 == 0 goto $r2 = "sun";	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.KaffeNative2Ascii;	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.KaffeNative2Ascii: void <init>()>();	return $r12
;block_num 3