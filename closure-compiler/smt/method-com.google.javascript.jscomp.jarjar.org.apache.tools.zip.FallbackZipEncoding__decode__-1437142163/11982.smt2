(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2401 0)
(declare-sort var3162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/-1012305683 (var2401) String)
(declare-fun String-init () String)
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-var2401 var2401)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var211 var2401) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding 
(assert (not (= var211 null-var2401)))
(declare-const var3295 (Array Int Int)) ; Statement: r3 := @parameter0: byte[] 
(assert (not (= var3295 null-__Array__Int__Int__)))
(define-const var3915 String (charset/-1012305683 var211)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.String 
(assert (not (not (= var3915 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2418 String String-init) ; Statement: $r5 = new java.lang.String 
(assert true)
;(assert (<init>/76075152 var2418 var3295)) ; Statement: specialinvoke $r5.<java.lang.String: void <init>(byte[])>(r3) 

(declare-const var2418!1 String)
(declare-const var3295!1 (Array Int Int))
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/-1012305683=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding], java.lang.String), String-init=([], java.lang.String), <init>/76075152=([java.lang.String, byte[]], void)}
; {var2401=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding, var211=r0, var3295=r3, var3915=$r1, var3162=null_type, var2418=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding=var2401, r0=var211, r3=var3295, $r1=var3915, null_type=var3162, $r5=var2418}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding;	r3 := @parameter0: byte[];	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset>;	if $r1 != null goto $r2 = new java.lang.String;	$r5 = new java.lang.String;	specialinvoke $r5.<java.lang.String: void <init>(byte[])>(r3);	return $r5
;block_num 2