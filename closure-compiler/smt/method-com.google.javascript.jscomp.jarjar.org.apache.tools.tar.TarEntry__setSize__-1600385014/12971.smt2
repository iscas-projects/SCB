(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2609 0)
(declare-sort var1635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1635-init () var1635)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1635 String) void)
(declare-const null-var2609 var2609)
(declare-const null-Int Int)
(declare-const var797 var2609) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var797 null-var2609)))
(declare-const var117 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var117 null-Int)))
(define-const var3766 Int (ite (> var117 0) 1 (ite (< var117 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3179 Int (cast-from-Int-to-Int var3766)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = l0 
(assert (not (>= var3179 0))) ; Negate: Cond: $i2 >= 0  
(define-const var1544 var1635 var1635-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var3762 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3762)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3762!1 String)
(assert (= var3762!1 ""))
(assert true)
(define-const var2338 String (append/672562846 var3762!1 "Size is out of range: ")) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size is out of range: ") 
(declare-const var3762!2 String)
(assert (= var3762!2 (str.++ var3762!1 "Size is out of range: ")))
(assert true)
(define-const var3745 String (append/-901862667 var2338 var117)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2338!1 String)
(assert (str.prefixof var2338 var2338!1))
(assert true)
(define-const var1883 String (toString/-2075883882 var3745)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1544 var1883)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1544!1 var1635)
(declare-const var1883!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1635-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2609=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var797=r0, var117=l0, var3766=$b1, var3179=$i2, var1635=java.lang.IllegalArgumentException, var1544=$r7, var3762=$r6, var2338=$r3, var3745=$r4, var1883=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var2609, r0=var797, l0=var117, $b1=var3766, $i2=var3179, java.lang.IllegalArgumentException=var1635, $r7=var1544, $r6=var3762, $r3=var2338, $r4=var3745, $r5=var1883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	l0 := @parameter0: long;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = l0;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size is out of range: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2