(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2092 0)
(declare-sort var381 0)
(declare-sort var1415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun reader/-1216879079 (var2092) var381)
(declare-fun readLine/150542008 (var381) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var2092 var2092)
(declare-const null-String String)
(declare-const var560 var2092) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader 
(assert (not (= var560 null-var2092)))
(define-const var1067 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1067)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1067!1 String)
(assert (= var1067!1 ""))
(define-const var3965 var381 (reader/-1216879079 var560)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.io.BufferedReader reader> 
(assert true)
(define-const var618 String (readLine/150542008 var3965)) ; Statement: r6 = virtualinvoke $r2.<java.io.BufferedReader: java.lang.String readLine()>() 
 ; Statement: if r6 == null goto (branch) 
(assert (= var618 null-String)) ; Cond: r6 == null 
 ; Statement: if r6 == null goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var618 null-String)) ; Cond: r6 == null 
(assert true)
(define-const var2588 String (toString/-2075883882 var1067!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3350 String (trim/-847153721 var2588)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), reader/-1216879079=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader], java.io.BufferedReader), readLine/150542008=([java.io.BufferedReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var2092=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader, var560=r1, var1067=$r0, var381=java.io.BufferedReader, var3965=$r2, var618=r6, var1415=null_type, var2588=$r3, var3350=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader=var2092, r1=var560, $r0=var1067, java.io.BufferedReader=var381, $r2=var3965, r6=var618, null_type=var1415, $r3=var2588, $r4=var3350}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.io.BufferedReader reader>;	r6 = virtualinvoke $r2.<java.io.BufferedReader: java.lang.String readLine()>();	if r6 == null goto (branch);	if r6 == null goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	return $r4
;block_num 3