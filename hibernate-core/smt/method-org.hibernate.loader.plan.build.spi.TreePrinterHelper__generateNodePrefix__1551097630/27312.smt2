(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2224 0)
(declare-sort var3732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3732_repeat/-97481534 (Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2224 var2224)
(declare-const null-Int Int)
(declare-const var402 var2224) ; Statement: r5 := @this: org.hibernate.loader.plan.build.spi.TreePrinterHelper 
(assert (not (= var402 null-var2224)))
(declare-const var3209 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3209 null-Int)))
(define-const var3425 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3425)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3425!1 String)
(assert (= var3425!1 ""))
(define-const var1980 Int (* var3209 3)) ; Statement: $i1 = i0 * 3 
(define-const var1254 String (var3732_repeat/-97481534 32 var1980)) ; Statement: $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(32, $i1) 
(assert true)
(define-const var1849 String (append/672562846 var3425!1 var1254)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3425!2 String)
(assert (= var3425!2 (str.++ var3425!1 var1254)))
(assert true)
(define-const var3099 String (append/672562846 var1849 " - ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - ") 
(declare-const var1849!1 String)
(assert (= var1849!1 (str.++ var1849 " - ")))
(assert true)
(define-const var1163 String (toString/-2075883882 var3099)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3732_repeat/-97481534=([char, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2224=org.hibernate.loader.plan.build.spi.TreePrinterHelper, var402=r5, var3209=i0, var3425=$r0, var1980=$i1, var3732=org.hibernate.internal.util.StringHelper, var1254=$r1, var1849=$r2, var3099=$r3, var1163=$r4}
; {org.hibernate.loader.plan.build.spi.TreePrinterHelper=var2224, r5=var402, i0=var3209, $r0=var3425, $i1=var1980, org.hibernate.internal.util.StringHelper=var3732, $r1=var1254, $r2=var1849, $r3=var3099, $r4=var1163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.loader.plan.build.spi.TreePrinterHelper;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i1 = i0 * 3;	$r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(32, $i1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1