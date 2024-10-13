(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var937 0)
(declare-sort var922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var922-init () var922)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var922 String) void)
(declare-const null-var937 var937)
(declare-const null-Int Int)
(declare-const var1987 var937) ; Statement: r0 := @this: org.hibernate.internal.util.io.CharSequenceReader 
(assert (not (= var1987 null-var937)))
(declare-const var2731 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2731 null-Int)))
(define-const var3400 Int (ite (> var2731 0) 1 (ite (< var2731 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var747 Int (cast-from-Int-to-Int var3400)) ; Statement: $i14 = (int) $b1 
 ; Statement: if $i14 >= 0 goto $i3 = r0.<org.hibernate.internal.util.io.CharSequenceReader: int position> 
(assert (not (>= var747 0))) ; Negate: Cond: $i14 >= 0  
(define-const var479 var922 var922-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var869 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var869)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var869!1 String)
(assert (= var869!1 ""))
(assert true)
(define-const var245 String (append/672562846 var869!1 "Number of characters to skip must be greater than zero: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of characters to skip must be greater than zero: ") 
(declare-const var869!2 String)
(assert (= var869!2 (str.++ var869!1 "Number of characters to skip must be greater than zero: ")))
(assert true)
(define-const var380 String (append/-901862667 var245 var2731)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var245!1 String)
(assert (str.prefixof var245 var245!1))
(assert true)
(define-const var2297 String (toString/-2075883882 var380)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var479 var2297)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var479!1 var922)
(declare-const var2297!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var922-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var937=org.hibernate.internal.util.io.CharSequenceReader, var1987=r0, var2731=l0, var3400=$b1, var747=$i14, var922=java.lang.IllegalArgumentException, var479=$r8, var869=$r7, var245=$r4, var380=$r5, var2297=$r6}
; {org.hibernate.internal.util.io.CharSequenceReader=var937, r0=var1987, l0=var2731, $b1=var3400, $i14=var747, java.lang.IllegalArgumentException=var922, $r8=var479, $r7=var869, $r4=var245, $r5=var380, $r6=var2297}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.util.io.CharSequenceReader;	l0 := @parameter0: long;	$b1 = l0 cmp 0L;	$i14 = (int) $b1;	if $i14 >= 0 goto $i3 = r0.<org.hibernate.internal.util.io.CharSequenceReader: int position>;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of characters to skip must be greater than zero: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2