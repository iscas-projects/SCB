(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1387 0)
(declare-sort var2156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2156-init () var2156)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2156 String) void)
(declare-const null-var1387 var1387)
(declare-const null-Int Int)
(declare-const var1856 var1387) ; Statement: r5 := @this: freemarker.ext.beans.ClassIntrospectorBuilder 
(assert (not (= var1856 null-var1387)))
(declare-const var3983 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3983 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (< var3983 0)) ; Cond: i0 < 0 
(define-const var3651 var2156 var2156-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1152 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1152)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1152!1 String)
(assert (= var1152!1 ""))
(assert true)
(define-const var3645 String (append/672562846 var1152!1 "Illegal exposure level: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal exposure level: ") 
(declare-const var1152!2 String)
(assert (= var1152!2 (str.++ var1152!1 "Illegal exposure level: ")))
(assert true)
(define-const var2404 String (append/-1001720160 var3645 var3983)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3645!1 String)
(assert (str.prefixof var3645 var3645!1))
(assert true)
(define-const var1060 String (toString/-2075883882 var2404)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3651 var1060)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var3651!1 var2156)
(declare-const var1060!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2156-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1387=freemarker.ext.beans.ClassIntrospectorBuilder, var1856=r5, var3983=i0, var2156=java.lang.IllegalArgumentException, var3651=$r0, var1152=$r1, var3645=$r2, var2404=$r3, var1060=$r4}
; {freemarker.ext.beans.ClassIntrospectorBuilder=var1387, r5=var1856, i0=var3983, java.lang.IllegalArgumentException=var2156, $r0=var3651, $r1=var1152, $r2=var3645, $r3=var2404, $r4=var1060}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: freemarker.ext.beans.ClassIntrospectorBuilder;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal exposure level: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2