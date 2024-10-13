(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3053 0)
(declare-sort var3350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sep/-398872434 (var3053) String)
(declare-fun counter/-398872434 (var3053) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3053 var3053)
(declare-const null-String String)
(declare-const var3273 var3053) ; Statement: r2 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory$2 
(assert (not (= var3273 null-var3053)))
(declare-const var3093 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3093 null-String)))
(define-const var675 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var675)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var675!1 String)
(assert (= var675!1 ""))
(assert true)
(define-const var2147 String (append/672562846 var675!1 var3093)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var675!2 String)
(assert (= var675!2 (str.++ var675!1 var3093)))
(define-const var3540 String (sep/-398872434 var3273)) ; Statement: $r3 = r2.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: java.lang.String sep> 
(assert true)
(define-const var2063 String (append/672562846 var2147 var3540)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2147!1 String)
(assert (= var2147!1 (str.++ var2147 var3540)))
(define-const var3433 Int (counter/-398872434 var3273)) ; Statement: $i0 = r2.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: int counter> 
(define-const var2713 Int (+ var3433 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3273!1 var3053)
(assert (not (= var3273!1 null-var3053)))
(assert (= (counter/-398872434 var3273!1) var2713)) ; Statement: r2.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: int counter> = $i1 
(define-const var1628 String (Int_toHexString/1865784998 var3433)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0) 
(assert true)
(define-const var1188 String (append/672562846 var2063 var1628)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2063!1 String)
(assert (= var2063!1 (str.++ var2063 var1628)))
(assert true)
(define-const var1025 String (toString/-2075883882 var1188)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sep/-398872434=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$2], java.lang.String), counter/-398872434=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$2], int), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3053=org.apache.ibatis.javassist.util.proxy.ProxyFactory$2, var3273=r2, var3093=r1, var3350=null_type, var675=$r0, var2147=$r4, var3540=$r3, var2063=$r6, var3433=$i0, var2713=$i1, var1628=$r5, var1188=$r7, var1025=$r8}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory$2=var3053, r2=var3273, r1=var3093, null_type=var3350, $r0=var675, $r4=var2147, $r3=var3540, $r6=var2063, $i0=var3433, $i1=var2713, $r5=var1628, $r7=var1188, $r8=var1025}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory$2;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = r2.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: java.lang.String sep>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$i0 = r2.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: int counter>;	$i1 = $i0 + 1;	r2.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: int counter> = $i1;	$r5 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1