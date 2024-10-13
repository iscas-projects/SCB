(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3773 0)
(declare-sort var762 0)
(declare-sort var3834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getByteArray/456971042 (var3773) (Array Int Int))
(declare-fun var762_toIntExact/-44736865 (Int) Int)
(declare-fun var3834-init () var3834)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3834 String) void)
(declare-const null-var3773 var3773)
(declare-const null-Int Int)
(declare-const var1058 var3773) ; Statement: r0 := @this: org.apache.commons.io.build.AbstractOrigin 
(assert (not (= var1058 null-var3773)))
(declare-const var3437 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3437 null-Int)))
(declare-const var1848 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1848 null-Int)))
(assert true)
(define-const var2192 (Array Int Int) (getByteArray/456971042 var1058)) ; Statement: r1 = virtualinvoke r0.<org.apache.commons.io.build.AbstractOrigin: byte[] getByteArray()>() 
(define-const var2370 Int (var762_toIntExact/-44736865 var3437)) ; Statement: i1 = staticinvoke <java.lang.Math: int toIntExact(long)>(l0) 
 ; Statement: if i1 < 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (< var2370 0)) ; Cond: i1 < 0 
(define-const var617 var3834 var3834-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var2745 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2745)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2745!1 String)
(assert (= var2745!1 ""))
(assert true)
(define-const var94 String (append/672562846 var2745!1 "Couldn\u0027t read array (start: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t read array (start: ") 
(declare-const var2745!2 String)
(assert (= var2745!2 (str.++ var2745!1 "Couldn\u0027t read array (start: ")))
(assert true)
(define-const var1737 String (append/-1001720160 var94 var2370)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var94!1 String)
(assert (str.prefixof var94 var94!1))
(assert true)
(define-const var1091 String (append/672562846 var1737 ", length: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length: ") 
(declare-const var1737!1 String)
(assert (= var1737!1 (str.++ var1737 ", length: ")))
(assert true)
(define-const var3669 String (append/-1001720160 var1091 var1848)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1091!1 String)
(assert (str.prefixof var1091 var1091!1))
(assert true)
(define-const var3868 String (append/672562846 var3669 ", data length: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", data length: ") 
(declare-const var3669!1 String)
(assert (= var3669!1 (str.++ var3669 ", data length: ")))
(define-const var2696 Int (getLength-Arr-Int-1 var2192)) ; Statement: $i7 = lengthof r1 
(assert true)
(define-const var83 String (append/-1001720160 var3868 var2696)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var3868!1 String)
(assert (str.prefixof var3868 var3868!1))
(assert true)
(define-const var621 String (append/672562846 var83 ").")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").") 
(declare-const var83!1 String)
(assert (= var83!1 (str.++ var83 ").")))
(assert true)
(define-const var26 String (toString/-2075883882 var621)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var617 var26)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var617!1 var3834)
(declare-const var26!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getByteArray/456971042=([org.apache.commons.io.build.AbstractOrigin], byte[]), var762_toIntExact/-44736865=([long], int), var3834-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3773=org.apache.commons.io.build.AbstractOrigin, var1058=r0, var3437=l0, var1848=i2, var2192=r1, var762=java.lang.Math, var2370=i1, var3834=java.lang.IllegalArgumentException, var617=$r3, var2745=$r4, var94=$r5, var1737=$r6, var1091=$r7, var3669=$r8, var3868=$r9, var2696=$i7, var83=$r10, var621=$r11, var26=$r12}
; {org.apache.commons.io.build.AbstractOrigin=var3773, r0=var1058, l0=var3437, i2=var1848, r1=var2192, java.lang.Math=var762, i1=var2370, java.lang.IllegalArgumentException=var3834, $r3=var617, $r4=var2745, $r5=var94, $r6=var1737, $r7=var1091, $r8=var3669, $r9=var3868, $i7=var2696, $r10=var83, $r11=var621, $r12=var26}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.build.AbstractOrigin;	l0 := @parameter0: long;	i2 := @parameter1: int;	r1 = virtualinvoke r0.<org.apache.commons.io.build.AbstractOrigin: byte[] getByteArray()>();	i1 = staticinvoke <java.lang.Math: int toIntExact(long)>(l0);	if i1 < 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t read array (start: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", data length: ");	$i7 = lengthof r1;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r3
;block_num 2