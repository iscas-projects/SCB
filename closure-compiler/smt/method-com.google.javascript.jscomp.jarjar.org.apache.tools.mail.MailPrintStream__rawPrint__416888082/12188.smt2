(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var416 0)
(declare-sort var2328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var416 var416)
(declare-const null-String String)
(declare-const var2361 var416) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream 
(assert (not (= var2361 null-var416)))
(declare-const var775 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var775 null-String)))
(assert true)
(define-const var1985 (Array Int Int) (toCharArray/415275702 var775)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2362 Int (getLength-Arr-Int-1 var1985)) ; Statement: i0 = lengthof r1 
(define-const var726 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return 
(assert (>= var726 var2362)) ; Cond: i2 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var416=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream, var2361=r2, var775=r0, var2328=null_type, var1985=r1, var2362=i0, var726=i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream=var416, r2=var2361, r0=var775, null_type=var2328, r1=var1985, i0=var2362, i2=var726}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto return;	return
;block_num 3