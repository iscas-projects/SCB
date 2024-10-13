(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2305 0)
(declare-sort var395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var395-init () var395)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var395 String) void)
(declare-const null-var2305 var2305)
(declare-const null-Int Int)
(declare-const var3923 var2305) ; Statement: r1 := @parameter0: java.nio.channels.ReadableByteChannel 
(assert (not (= var3923 null-var2305)))
(declare-const var2000 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2000 null-Int)))
(define-const var445 Int (ite (> var2000 0) 1 (ite (< var2000 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3655 Int (cast-from-Int-to-Int var445)) ; Statement: $i11 = (int) $b1 
 ; Statement: if $i11 >= 0 goto $l2 = staticinvoke <java.lang.Math: long min(long,long)>(l0, 8192L) 
(assert (not (>= var3655 0))) ; Negate: Cond: $i11 >= 0  
(define-const var2759 var395 var395-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var96 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var96)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var96!1 String)
(assert (= var96!1 ""))
(assert true)
(define-const var2936 String (append/672562846 var96!1 "Skip count must be non-negative, actual: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skip count must be non-negative, actual: ") 
(declare-const var96!2 String)
(assert (= var96!2 (str.++ var96!1 "Skip count must be non-negative, actual: ")))
(assert true)
(define-const var2234 String (append/-901862667 var2936 var2000)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2936!1 String)
(assert (str.prefixof var2936 var2936!1))
(assert true)
(define-const var2939 String (toString/-2075883882 var2234)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2759 var2939)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2759!1 var395)
(declare-const var2939!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var395-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2305=java.nio.channels.ReadableByteChannel, var3923=r1, var2000=l0, var445=$b1, var3655=$i11, var395=java.lang.IllegalArgumentException, var2759=$r8, var96=$r7, var2936=$r4, var2234=$r5, var2939=$r6}
; {java.nio.channels.ReadableByteChannel=var2305, r1=var3923, l0=var2000, $b1=var445, $i11=var3655, java.lang.IllegalArgumentException=var395, $r8=var2759, $r7=var96, $r4=var2936, $r5=var2234, $r6=var2939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.nio.channels.ReadableByteChannel;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i11 = (int) $b1;	if $i11 >= 0 goto $l2 = staticinvoke <java.lang.Math: long min(long,long)>(l0, 8192L);	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skip count must be non-negative, actual: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2