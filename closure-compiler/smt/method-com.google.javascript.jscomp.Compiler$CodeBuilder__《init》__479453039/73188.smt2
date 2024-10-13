(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var787 0)
(declare-sort var3903 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3903) void)
(declare-fun cast-from-var787-to-var3903 (var787) var3903)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sb/-1774502042 (var787) String)
(declare-fun lineCount/-1774502042 (var787) Int)
(declare-fun colCount/-1774502042 (var787) Int)
(declare-const null-var787 var787)
(declare-const var1290 var787) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var1290 null-var787)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var787-to-var3903 var1290))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1290!1 var787)
(define-const var3663 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3663)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3663!1 String)
(assert (= var3663!1 ""))
(declare-const var1290!2 var787)
(assert (not (= var1290!2 null-var787)))
(assert (= (sb/-1774502042 var1290!2) var3663!1)) ; Statement: r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb> = $r1 
(declare-const var1290!3 var787)
(assert (not (= var1290!3 null-var787)))
(assert (= (lineCount/-1774502042 var1290!3) 0)) ; Statement: r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int lineCount> = 0 
(declare-const var1290!4 var787)
(assert (not (= var1290!4 null-var787)))
(assert (= (colCount/-1774502042 var1290!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int colCount> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var787-to-var3903=([com.google.javascript.jscomp.Compiler$CodeBuilder], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sb/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], java.lang.StringBuilder), lineCount/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], int), colCount/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], int)}
; {var787=com.google.javascript.jscomp.Compiler$CodeBuilder, var1290=r0, var3903=java.lang.Object, var3663=$r1}
; {com.google.javascript.jscomp.Compiler$CodeBuilder=var787, r0=var1290, java.lang.Object=var3903, $r1=var3663}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb> = $r1;	r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int lineCount> = 0;	r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int colCount> = 0;	return
;block_num 1