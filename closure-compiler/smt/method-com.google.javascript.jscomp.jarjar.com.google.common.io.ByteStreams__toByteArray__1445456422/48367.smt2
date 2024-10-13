(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2669 0)
(declare-sort var3139 0)
(declare-sort var2255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3139_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun var2255-init () var2255)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-901862667 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-899857668 (var2255 String) void)
(declare-const null-var2669 var2669)
(declare-const null-Int Int)
(declare-const var2017 var2669) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2017 null-var2669)))
(declare-const var2763 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2763 null-Int)))
(define-const var2645 Int (ite (> var2763 0) 1 (ite (< var2763 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1887 Int (cast-from-Int-to-Int var2645)) ; Statement: $i12 = (int) $b1 
 ; Statement: if $i12 < 0 goto $z0 = 0 
(assert (< var1887 0)) ; Cond: $i12 < 0 
(define-const var3057 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var3139_checkArgument/-1708798671 var3057 "expectedSize (%s) must be non-negative" var2763)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "expectedSize (%s) must be non-negative", l0) 

(declare-const var3057!1 Bool)
(declare-const var842 String)
(declare-const var2763!1 Int)
(define-const var3495 Int (ite (> var2763!1 2147483639) 1 (ite (< var2763!1 2147483639) (- 1) 0))) ; Statement: $b2 = l0 cmp 2147483639L 
(define-const var1899 Int (cast-from-Int-to-Int var3495)) ; Statement: $i13 = (int) $b2 
 ; Statement: if $i13 <= 0 goto $i3 = (int) l0 
(assert (not (<= var1899 0))) ; Negate: Cond: $i13 <= 0  
(define-const var1845 var2255 var2255-init) ; Statement: $r12 = new java.lang.OutOfMemoryError 
(define-const var717 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var717)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var717!1 String)
(assert (= var717!1 ""))
(assert true)
(define-const var3072 String (append/-901862667 var717!1 var2763!1)) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var717!2 String)
(assert (str.prefixof var717!1 var717!2))
(assert true)
(define-const var493 String (append/672562846 var3072 " bytes is too large to fit in a byte array")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes is too large to fit in a byte array") 
(declare-const var3072!1 String)
(assert (= var3072!1 (str.++ var3072 " bytes is too large to fit in a byte array")))
(assert true)
(define-const var820 String (toString/-2075883882 var493)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-899857668 var1845 var820)) ; Statement: specialinvoke $r12.<java.lang.OutOfMemoryError: void <init>(java.lang.String)>($r10) 

(declare-const var1845!1 var2255)
(declare-const var820!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var3139_checkArgument/-1708798671=([boolean, java.lang.String, long], void), var2255-init=([], java.lang.OutOfMemoryError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-899857668=([java.lang.OutOfMemoryError, java.lang.String], void)}
; {var2669=java.io.InputStream, var2017=r1, var2763=l0, var2645=$b1, var1887=$i12, var3057=$z0, var3139=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var842="expectedSize (%s) must be non-negative", var3495=$b2, var1899=$i13, var2255=java.lang.OutOfMemoryError, var1845=$r12, var717=$r11, var3072=$r8, var493=$r9, var820=$r10}
; {java.io.InputStream=var2669, r1=var2017, l0=var2763, $b1=var2645, $i12=var1887, $z0=var3057, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3139, "expectedSize (%s) must be non-negative"=var842, $b2=var3495, $i13=var1899, java.lang.OutOfMemoryError=var2255, $r12=var1845, $r11=var717, $r8=var3072, $r9=var493, $r10=var820}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i12 = (int) $b1;	if $i12 < 0 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "expectedSize (%s) must be non-negative", l0);	$b2 = l0 cmp 2147483639L;	$i13 = (int) $b2;	if $i13 <= 0 goto $i3 = (int) l0;	$r12 = new java.lang.OutOfMemoryError;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes is too large to fit in a byte array");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.OutOfMemoryError: void <init>(java.lang.String)>($r10);	throw $r12
;block_num 4