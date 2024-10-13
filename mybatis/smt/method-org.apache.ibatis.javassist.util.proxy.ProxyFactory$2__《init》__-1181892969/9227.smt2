(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2607 0)
(declare-sort var2857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2857) void)
(declare-fun cast-from-var2607-to-var2857 (var2607) var2857)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hashCode/1739917532 (var2857) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun sep/-398872434 (var2607) String)
(declare-fun counter/-398872434 (var2607) Int)
(declare-const null-var2607 var2607)
(declare-const var3201 var2607) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory$2 
(assert (not (= var3201 null-var2607)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2607-to-var2857 var3201))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3201!1 var2607)
(define-const var2581 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2581)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2581!1 String)
(assert (= var2581!1 ""))
(assert true)
(define-const var1657 String (append/672562846 var2581!1 "_$$_jvst")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_$$_jvst") 
(declare-const var2581!2 String)
(assert (= var2581!2 (str.++ var2581!1 "_$$_jvst")))
(assert true)
(define-const var3419 Int (hashCode/1739917532 (cast-from-var2607-to-var2857 var3201!1))) ; Statement: $i0 = virtualinvoke r0.<java.lang.Object: int hashCode()>() 
(define-const var3675 Int (bv2nat (bvand ((_ int2bv 64) var3419) ((_ int2bv 64) 4095)))) ; Statement: $i1 = $i0 & 4095 
(define-const var254 String (Int_toHexString/1865784998 var3675)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i1) 
(assert true)
(define-const var2999 String (append/672562846 var1657 var254)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1657!1 String)
(assert (= var1657!1 (str.++ var1657 var254)))
(assert true)
(define-const var1853 String (append/672562846 var2999 "_")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2999!1 String)
(assert (= var2999!1 (str.++ var2999 "_")))
(assert true)
(define-const var3832 String (toString/-2075883882 var1853)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3201!2 var2607)
(assert (not (= var3201!2 null-var2607)))
(assert (= (sep/-398872434 var3201!2) var3832)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: java.lang.String sep> = $r6 
(declare-const var3201!3 var2607)
(assert (not (= var3201!3 null-var2607)))
(assert (= (counter/-398872434 var3201!3) 0)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: int counter> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2607-to-var2857=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$2], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), hashCode/1739917532=([java.lang.Object], int), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), sep/-398872434=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$2], java.lang.String), counter/-398872434=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$2], int)}
; {var2607=org.apache.ibatis.javassist.util.proxy.ProxyFactory$2, var3201=r0, var2857=java.lang.Object, var2581=$r1, var1657=$r3, var3419=$i0, var3675=$i1, var254=$r2, var2999=$r4, var1853=$r5, var3832=$r6}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory$2=var2607, r0=var3201, java.lang.Object=var2857, $r1=var2581, $r3=var1657, $i0=var3419, $i1=var3675, $r2=var254, $r4=var2999, $r5=var1853, $r6=var3832}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory$2;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_$$_jvst");	$i0 = virtualinvoke r0.<java.lang.Object: int hashCode()>();	$i1 = $i0 & 4095;	$r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: java.lang.String sep> = $r6;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: int counter> = 0;	return
;block_num 1