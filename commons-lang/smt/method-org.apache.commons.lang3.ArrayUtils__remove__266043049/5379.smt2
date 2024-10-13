(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2204 0)
(declare-sort var1864 0)
(declare-sort var3819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1864_getLength/1005357804 (var2204) Int)
(declare-fun var3819-init () var3819)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3819 String) void)
(declare-const null-var2204 var2204)
(declare-const null-Int Int)
(declare-const var1102 var2204) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1102 null-var2204)))
(declare-const var3863 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3863 null-Int)))
(define-const var1902 Int (var1864_getLength/1005357804 var1102)) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int getLength(java.lang.Object)>(r0) 
 ; Statement: if i1 < 0 goto $r1 = new java.lang.IndexOutOfBoundsException 
(assert (< var3863 0)) ; Cond: i1 < 0 
(define-const var3847 var3819 var3819-init) ; Statement: $r1 = new java.lang.IndexOutOfBoundsException 
(define-const var2668 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2668)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2668!1 String)
(assert (= var2668!1 ""))
(assert true)
(define-const var1264 String (append/672562846 var2668!1 "Index: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ") 
(declare-const var2668!2 String)
(assert (= var2668!2 (str.++ var2668!1 "Index: ")))
(assert true)
(define-const var3182 String (append/-1001720160 var1264 var3863)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1264!1 String)
(assert (str.prefixof var1264 var1264!1))
(assert true)
(define-const var1070 String (append/672562846 var3182 ", Length: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Length: ") 
(declare-const var3182!1 String)
(assert (= var3182!1 (str.++ var3182 ", Length: ")))
(assert true)
(define-const var3895 String (append/-1001720160 var1070 var1902)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1070!1 String)
(assert (str.prefixof var1070 var1070!1))
(assert true)
(define-const var3516 String (toString/-2075883882 var3895)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var3847 var3516)) ; Statement: specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var3847!1 var3819)
(declare-const var3516!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1864_getLength/1005357804=([java.lang.Object], int), var3819-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2204=java.lang.Object, var1102=r0, var3863=i1, var1864=org.apache.commons.lang3.ArrayUtils, var1902=i0, var3819=java.lang.IndexOutOfBoundsException, var3847=$r1, var2668=$r2, var1264=$r3, var3182=$r4, var1070=$r5, var3895=$r6, var3516=$r7}
; {java.lang.Object=var2204, r0=var1102, i1=var3863, org.apache.commons.lang3.ArrayUtils=var1864, i0=var1902, java.lang.IndexOutOfBoundsException=var3819, $r1=var3847, $r2=var2668, $r3=var1264, $r4=var3182, $r5=var1070, $r6=var3895, $r7=var3516}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i1 := @parameter1: int;	i0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int getLength(java.lang.Object)>(r0);	if i1 < 0 goto $r1 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Length: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2