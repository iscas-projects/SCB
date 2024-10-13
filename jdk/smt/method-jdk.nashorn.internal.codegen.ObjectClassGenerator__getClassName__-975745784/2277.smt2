(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2859_getPrefixName/234183653 (Bool) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var375 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var375 null-Int)))
(declare-const var1106 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1106 null-Bool)))
(define-const var1371 String (var2859_getPrefixName/234183653 var1106)) ; Statement: r0 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(boolean)>(z0) 
 ; Statement: if i0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= var375 0)) ; Cond: i0 == 0 
(define-const var1413 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1413)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1413!1 String)
(assert (= var1413!1 ""))
(assert true)
(define-const var3271 String (append/672562846 var1413!1 "jdk/nashorn/internal/scripts/")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/internal/scripts/") 
(declare-const var1413!2 String)
(assert (= var1413!2 (str.++ var1413!1 "jdk/nashorn/internal/scripts/")))
(assert true)
(define-const var1877 String (append/672562846 var3271 var1371)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3271!1 String)
(assert (= var3271!1 (str.++ var3271 var1371)))
(assert true)
(define-const var2886 String (toString/-2075883882 var1877)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2859_getPrefixName/234183653=([boolean], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var375=i0, var1106=z0, var2859=jdk.nashorn.internal.codegen.ObjectClassGenerator, var1371=r0, var1413=$r1, var3271=$r2, var1877=$r3, var2886=$r8}
; {i0=var375, z0=var1106, jdk.nashorn.internal.codegen.ObjectClassGenerator=var2859, r0=var1371, $r1=var1413, $r2=var3271, $r3=var1877, $r8=var2886}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	z0 := @parameter1: boolean;	r0 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(boolean)>(z0);	if i0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/internal/scripts/");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3