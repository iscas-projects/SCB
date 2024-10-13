(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2849 0)
(declare-sort var1818 0)
(declare-sort var2412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-var2849-to-var1818 (var2849) var1818)
(declare-fun var2412_copyReaderToBuilder/16789951 (var1818 String) Int)
(declare-const null-var2849 var2849)
(declare-const var3320 var2849) ; Statement: r1 := @parameter0: java.lang.Readable 
(assert (not (= var3320 null-var2849)))
(define-const var2906 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2906)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2906!1 String)
(assert (= var2906!1 ""))
(define-const var1739 Bool true) ; Statement: $z0 = r1 instanceof java.io.Reader 
 ; Statement: if $z0 == 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: long copy(java.lang.Readable,java.lang.Appendable)>(r1, $r0) 
(assert (not (= (ite var1739 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1650 var1818 (cast-from-var2849-to-var1818 var3320)) ; Statement: $r2 = (java.io.Reader) r1 
;(assert (var2412_copyReaderToBuilder/16789951 var1650 var2906!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: long copyReaderToBuilder(java.io.Reader,java.lang.StringBuilder)>($r2, $r0) 

(declare-const var1650!1 var1818)
(declare-const var2906!2 String)
 ; Statement: goto [?= return $r0] 
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-var2849-to-var1818=([java.lang.Readable], java.io.Reader), var2412_copyReaderToBuilder/16789951=([java.io.Reader, java.lang.StringBuilder], long)}
; {var2849=java.lang.Readable, var3320=r1, var2906=$r0, var1739=$z0, var1818=java.io.Reader, var1650=$r2, var2412=com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams}
; {java.lang.Readable=var2849, r1=var3320, $r0=var2906, $z0=var1739, java.io.Reader=var1818, $r2=var1650, com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams=var2412}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @parameter0: java.lang.Readable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = r1 instanceof java.io.Reader;	if $z0 == 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: long copy(java.lang.Readable,java.lang.Appendable)>(r1, $r0);	$r2 = (java.io.Reader) r1;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: long copyReaderToBuilder(java.io.Reader,java.lang.StringBuilder)>($r2, $r0);	goto [?= return $r0];	return $r0
;block_num 3