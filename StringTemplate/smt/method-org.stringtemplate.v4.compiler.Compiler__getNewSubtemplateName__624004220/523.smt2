(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1697 0)
(declare-sort var2489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun incrementAndGet/613115697 (var1697) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var2489-subtemplateCount var1697)
(define-const var3480 var1697 var2489-subtemplateCount) ; Statement: $r0 = <org.stringtemplate.v4.compiler.Compiler: java.util.concurrent.atomic.AtomicInteger subtemplateCount> 
(assert true)
(define-const var3534 Int (incrementAndGet/613115697 var3480)) ; Statement: i0 = virtualinvoke $r0.<java.util.concurrent.atomic.AtomicInteger: int incrementAndGet()>() 
(define-const var3499 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3499)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3499!1 String)
(assert (= var3499!1 ""))
(assert true)
(define-const var1380 String (append/672562846 var3499!1 "_sub")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_sub") 
(declare-const var3499!2 String)
(assert (= var3499!2 (str.++ var3499!1 "_sub")))
(assert true)
(define-const var1607 String (append/-1001720160 var1380 var3534)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1380!1 String)
(assert (str.prefixof var1380 var1380!1))
(assert true)
(define-const var2688 String (toString/-2075883882 var1607)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {incrementAndGet/613115697=([java.util.concurrent.atomic.AtomicInteger], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1697=java.util.concurrent.atomic.AtomicInteger, var2489=org.stringtemplate.v4.compiler.Compiler, var3480=$r0, var3534=i0, var3499=$r1, var1380=$r2, var1607=$r3, var2688=$r4}
; {java.util.concurrent.atomic.AtomicInteger=var1697, org.stringtemplate.v4.compiler.Compiler=var2489, $r0=var3480, i0=var3534, $r1=var3499, $r2=var1380, $r3=var1607, $r4=var2688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = <org.stringtemplate.v4.compiler.Compiler: java.util.concurrent.atomic.AtomicInteger subtemplateCount>;	i0 = virtualinvoke $r0.<java.util.concurrent.atomic.AtomicInteger: int incrementAndGet()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_sub");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1