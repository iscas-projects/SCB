(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3007 0)
(declare-sort var2293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun close/-1531513968 (var3007) void)
(declare-const null-var3007 var3007)
(declare-const null-var2293 var2293)
(declare-const var2017 var3007) ; Statement: r2 := @parameter0: java.io.Reader 
(assert (not (= var2017 null-var3007)))
(define-const var1373 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[8192] 
(define-const var1698 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1698)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1698!1 String)
(assert (= var1698!1 ""))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3803 var2293) ; Statement: $r5 := @caughtexception 
(assert (not (= var3803 null-var2293)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-1531513968 var2017)) ; Statement: virtualinvoke r2.<java.io.Reader: void close()>() 

(declare-const var2017!1 var3007)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), close/-1531513968=([java.io.Reader], void)}
; {var3007=java.io.Reader, var2017=r2, var1373=r0, var1698=$r1, var2293=java.lang.Throwable, var3803=$r5}
; {java.io.Reader=var3007, r2=var2017, r0=var1373, $r1=var1698, java.lang.Throwable=var2293, $r5=var3803}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r2 := @parameter0: java.io.Reader;	r0 = newarray (char)[8192];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 := @caughtexception;	virtualinvoke r2.<java.io.Reader: void close()>();	throw $r5
;block_num 3