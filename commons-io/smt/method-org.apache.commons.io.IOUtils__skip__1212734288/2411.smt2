(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var281 0)
(declare-sort var3773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3773-init () var3773)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3773 String) void)
(declare-const null-var281 var281)
(declare-const null-Int Int)
(declare-const var73 var281) ; Statement: r1 := @parameter0: java.io.Reader 
(assert (not (= var73 null-var281)))
(declare-const var846 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var846 null-Int)))
(define-const var1620 Int (ite (> var846 0) 1 (ite (< var846 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1301 Int (cast-from-Int-to-Int var1620)) ; Statement: $i12 = (int) $b1 
 ; Statement: if $i12 >= 0 goto l11 = l0 
(assert (not (>= var1301 0))) ; Negate: Cond: $i12 >= 0  
(define-const var1621 var3773 var3773-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var3783 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3783)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3783!1 String)
(assert (= var3783!1 ""))
(assert true)
(define-const var3388 String (append/672562846 var3783!1 "Skip count must be non-negative, actual: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skip count must be non-negative, actual: ") 
(declare-const var3783!2 String)
(assert (= var3783!2 (str.++ var3783!1 "Skip count must be non-negative, actual: ")))
(assert true)
(define-const var2525 String (append/-901862667 var3388 var846)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3388!1 String)
(assert (str.prefixof var3388 var3388!1))
(assert true)
(define-const var746 String (toString/-2075883882 var2525)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1621 var746)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1621!1 var3773)
(declare-const var746!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var3773-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var281=java.io.Reader, var73=r1, var846=l0, var1620=$b1, var1301=$i12, var3773=java.lang.IllegalArgumentException, var1621=$r8, var3783=$r7, var3388=$r4, var2525=$r5, var746=$r6}
; {java.io.Reader=var281, r1=var73, l0=var846, $b1=var1620, $i12=var1301, java.lang.IllegalArgumentException=var3773, $r8=var1621, $r7=var3783, $r4=var3388, $r5=var2525, $r6=var746}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.io.Reader;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i12 = (int) $b1;	if $i12 >= 0 goto l11 = l0;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skip count must be non-negative, actual: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2