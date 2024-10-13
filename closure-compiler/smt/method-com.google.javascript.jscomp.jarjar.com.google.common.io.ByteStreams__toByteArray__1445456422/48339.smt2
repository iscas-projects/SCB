(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3524 0)
(declare-sort var3152 0)
(declare-sort var2195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3152_checkArgument/-1708798671 (Bool String Int) void)
(declare-fun var2195-init () var2195)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-901862667 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-899857668 (var2195 String) void)
(declare-const null-var3524 var3524)
(declare-const null-Int Int)
(declare-const var3730 var3524) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3730 null-var3524)))
(declare-const var1780 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1780 null-Int)))
(define-const var3314 Int (ite (> var1780 0) 1 (ite (< var1780 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3705 Int (cast-from-Int-to-Int var3314)) ; Statement: $i12 = (int) $b1 
 ; Statement: if $i12 < 0 goto $z0 = 0 
(assert (not (< var3705 0))) ; Negate: Cond: $i12 < 0  
(define-const var3299 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "expectedSize (%s) must be non-negative", l0)] 
(assert true) ; Non Conditional
;(assert (var3152_checkArgument/-1708798671 var3299 "expectedSize (%s) must be non-negative" var1780)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "expectedSize (%s) must be non-negative", l0) 

(declare-const var3299!1 Bool)
(declare-const var1919 String)
(declare-const var1780!1 Int)
(define-const var444 Int (ite (> var1780!1 2147483639) 1 (ite (< var1780!1 2147483639) (- 1) 0))) ; Statement: $b2 = l0 cmp 2147483639L 
(define-const var3189 Int (cast-from-Int-to-Int var444)) ; Statement: $i13 = (int) $b2 
 ; Statement: if $i13 <= 0 goto $i3 = (int) l0 
(assert (not (<= var3189 0))) ; Negate: Cond: $i13 <= 0  
(define-const var3648 var2195 var2195-init) ; Statement: $r12 = new java.lang.OutOfMemoryError 
(define-const var2405 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2405)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2405!1 String)
(assert (= var2405!1 ""))
(assert true)
(define-const var690 String (append/-901862667 var2405!1 var1780!1)) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2405!2 String)
(assert (str.prefixof var2405!1 var2405!2))
(assert true)
(define-const var1893 String (append/672562846 var690 " bytes is too large to fit in a byte array")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes is too large to fit in a byte array") 
(declare-const var690!1 String)
(assert (= var690!1 (str.++ var690 " bytes is too large to fit in a byte array")))
(assert true)
(define-const var2995 String (toString/-2075883882 var1893)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-899857668 var3648 var2995)) ; Statement: specialinvoke $r12.<java.lang.OutOfMemoryError: void <init>(java.lang.String)>($r10) 

(declare-const var3648!1 var2195)
(declare-const var2995!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var3152_checkArgument/-1708798671=([boolean, java.lang.String, long], void), var2195-init=([], java.lang.OutOfMemoryError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-899857668=([java.lang.OutOfMemoryError, java.lang.String], void)}
; {var3524=java.io.InputStream, var3730=r1, var1780=l0, var3314=$b1, var3705=$i12, var3299=$z0, var3152=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1919="expectedSize (%s) must be non-negative", var444=$b2, var3189=$i13, var2195=java.lang.OutOfMemoryError, var3648=$r12, var2405=$r11, var690=$r8, var1893=$r9, var2995=$r10}
; {java.io.InputStream=var3524, r1=var3730, l0=var1780, $b1=var3314, $i12=var3705, $z0=var3299, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3152, "expectedSize (%s) must be non-negative"=var1919, $b2=var444, $i13=var3189, java.lang.OutOfMemoryError=var2195, $r12=var3648, $r11=var2405, $r8=var690, $r9=var1893, $r10=var2995}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i12 = (int) $b1;	if $i12 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "expectedSize (%s) must be non-negative", l0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,long)>($z0, "expectedSize (%s) must be non-negative", l0);	$b2 = l0 cmp 2147483639L;	$i13 = (int) $b2;	if $i13 <= 0 goto $i3 = (int) l0;	$r12 = new java.lang.OutOfMemoryError;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes is too large to fit in a byte array");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.OutOfMemoryError: void <init>(java.lang.String)>($r10);	throw $r12
;block_num 4