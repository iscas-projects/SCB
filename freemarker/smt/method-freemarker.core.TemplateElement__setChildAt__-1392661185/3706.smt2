(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2178 0)
(declare-sort var982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun childCount/1647217659 (var2178) Int)
(declare-fun var982-init () var982)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var982 String) void)
(declare-const null-var2178 var2178)
(declare-const null-Int Int)
(declare-const var1929 var2178) ; Statement: r0 := @this: freemarker.core.TemplateElement 
(assert (not (= var1929 null-var2178)))
(declare-const var3962 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3962 null-Int)))
(declare-const var663 var2178) ; Statement: r8 := @parameter1: freemarker.core.TemplateElement 
(assert (not (= var663 null-var2178)))
(define-const var1304 Int (childCount/1647217659 var1929)) ; Statement: $i1 = r0.<freemarker.core.TemplateElement: int childCount> 
 ; Statement: if i0 >= $i1 goto $r1 = new java.lang.IndexOutOfBoundsException 
(assert (>= var3962 var1304)) ; Cond: i0 >= $i1 
(define-const var585 var982 var982-init) ; Statement: $r1 = new java.lang.IndexOutOfBoundsException 
(define-const var2143 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2143)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2143!1 String)
(assert (= var2143!1 ""))
(assert true)
(define-const var1467 String (append/672562846 var2143!1 "Index: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ") 
(declare-const var2143!2 String)
(assert (= var2143!2 (str.++ var2143!1 "Index: ")))
(assert true)
(define-const var2998 String (append/-1001720160 var1467 var3962)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1467!1 String)
(assert (str.prefixof var1467 var1467!1))
(assert true)
(define-const var71 String (append/672562846 var2998 ", Size: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size: ") 
(declare-const var2998!1 String)
(assert (= var2998!1 (str.++ var2998 ", Size: ")))
(define-const var1222 Int (childCount/1647217659 var1929)) ; Statement: $i2 = r0.<freemarker.core.TemplateElement: int childCount> 
(assert true)
(define-const var1726 String (append/-1001720160 var71 var1222)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var71!1 String)
(assert (str.prefixof var71 var71!1))
(assert true)
(define-const var1454 String (toString/-2075883882 var1726)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var585 var1454)) ; Statement: specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var585!1 var982)
(declare-const var1454!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {childCount/1647217659=([freemarker.core.TemplateElement], int), var982-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2178=freemarker.core.TemplateElement, var1929=r0, var3962=i0, var663=r8, var1304=$i1, var982=java.lang.IndexOutOfBoundsException, var585=$r1, var2143=$r2, var1467=$r3, var2998=$r4, var71=$r5, var1222=$i2, var1726=$r6, var1454=$r7}
; {freemarker.core.TemplateElement=var2178, r0=var1929, i0=var3962, r8=var663, $i1=var1304, java.lang.IndexOutOfBoundsException=var982, $r1=var585, $r2=var2143, $r3=var1467, $r4=var2998, $r5=var71, $i2=var1222, $r6=var1726, $r7=var1454}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.TemplateElement;	i0 := @parameter0: int;	r8 := @parameter1: freemarker.core.TemplateElement;	$i1 = r0.<freemarker.core.TemplateElement: int childCount>;	if i0 >= $i1 goto $r1 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size: ");	$i2 = r0.<freemarker.core.TemplateElement: int childCount>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2