(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1690 0)
(declare-sort var379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/-1012305683 (var1690) String)
(declare-fun String-init () String)
(declare-fun <init>/-193660533 (String (Array Int Int) String) void)
(declare-const null-var1690 var1690)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var1249 var1690) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding 
(assert (not (= var1249 null-var1690)))
(declare-const var1127 (Array Int Int)) ; Statement: r3 := @parameter0: byte[] 
(assert (not (= var1127 null-__Array__Int__Int__)))
(define-const var2498 String (charset/-1012305683 var1249)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.String 
(assert (not (= var2498 null-String))) ; Cond: $r1 != null 
(define-const var3892 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var900 String (charset/-1012305683 var1249)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset> 
(assert true)
;(assert (<init>/-193660533 var3892 var1127 var900)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],java.lang.String)>(r3, $r4) 

(declare-const var3892!1 String)
(declare-const var1127!1 (Array Int Int))
(declare-const var900!1 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/-1012305683=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding], java.lang.String), String-init=([], java.lang.String), <init>/-193660533=([java.lang.String, byte[], java.lang.String], void)}
; {var1690=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding, var1249=r0, var1127=r3, var2498=$r1, var379=null_type, var3892=$r2, var900=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding=var1690, r0=var1249, r3=var1127, $r1=var2498, null_type=var379, $r2=var3892, $r4=var900}
;seq <java.lang.String: void <init>(byte[],java.lang.String)>
;cnt {"<java.lang.String: void <init>(byte[],java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding;	r3 := @parameter0: byte[];	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset>;	if $r1 != null goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.FallbackZipEncoding: java.lang.String charset>;	specialinvoke $r2.<java.lang.String: void <init>(byte[],java.lang.String)>(r3, $r4);	return $r2
;block_num 2