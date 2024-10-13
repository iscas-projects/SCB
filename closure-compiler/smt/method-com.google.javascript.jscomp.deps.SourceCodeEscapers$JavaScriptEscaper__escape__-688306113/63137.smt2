(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2495 0)
(declare-sort var2539 0)
(declare-sort var1101 0)
(declare-sort var2928 0)
(declare-sort var1635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2928-init () var2928)
(declare-fun <init>/-1447874194 (var2928 String var1635) void)
(declare-fun cast-from-var1101-to-var1635 (var1101) var1635)
(declare-const null-var2495 var2495)
(declare-const null-String String)
(declare-const null-var1101 var1101)
(declare-const var3152 var2495) ; Statement: r1 := @this: com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper 
(assert (not (= var3152 null-var2495)))
(declare-const var340 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var340 null-String)))
(define-const var839 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var839)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var839!1 String)
(assert (= var839!1 ""))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var952 var1101) ; Statement: $r4 := @caughtexception 
(assert (not (= var952 null-var1101)))
(define-const var3049 var2928 var2928-init) ; Statement: $r5 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1447874194 var3049 "This should never throw - StringBuilder.append doesn\u0027t actually throw IOException" (cast-from-var1101-to-var1635 var952))) ; Statement: specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>("This should never throw - StringBuilder.append doesn\'t actually throw IOException", $r4) 

(declare-const var3049!1 var2928)
(declare-const var3718 String)
(declare-const var952!1 var1101)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2928-init=([], java.lang.IllegalStateException), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var1101-to-var1635=([java.io.IOException], java.lang.Throwable)}
; {var2495=com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper, var3152=r1, var340=r2, var2539=null_type, var839=$r0, var1101=java.io.IOException, var952=$r4, var2928=java.lang.IllegalStateException, var3049=$r5, var1635=java.lang.Throwable, var3718="This should never throw - StringBuilder.append doesn\'t actually throw IOException"}
; {com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper=var2495, r1=var3152, r2=var340, null_type=var2539, $r0=var839, java.io.IOException=var1101, $r4=var952, java.lang.IllegalStateException=var2928, $r5=var3049, java.lang.Throwable=var1635, "This should never throw - StringBuilder.append doesn\'t actually throw IOException"=var3718}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 := @caughtexception;	$r5 = new java.lang.IllegalStateException;	specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>("This should never throw - StringBuilder.append doesn\'t actually throw IOException", $r4);	throw $r5
;block_num 2