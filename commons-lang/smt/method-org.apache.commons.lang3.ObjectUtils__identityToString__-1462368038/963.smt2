(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2862 0)
(declare-sort var2277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var2862) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2277_identityHashCodeHex/834881754 (var2862) String)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2862 var2862)
(declare-const var830 var2862) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var830 null-var2862)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var830 null-var2862))) ; Cond: r0 != null 
(assert true)
(define-const var2617 ClassObject (getClass/1258963082 var830)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2568 String (getName/-1958580599 var2617)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(define-const var629 String (var2277_identityHashCodeHex/834881754 var830)) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.ObjectUtils: java.lang.String identityHashCodeHex(java.lang.Object)>(r0) 
(define-const var2812 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
(define-const var3653 Int (length/-134980193 var2568)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3425 Int (+ var3653 1)) ; Statement: $i2 = $i0 + 1 
(assert true)
(define-const var2627 Int (length/-134980193 var629)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var2053 Int (+ var3425 var2627)) ; Statement: $i3 = $i2 + $i1 
(assert true)
;(assert (<init>/543593434 var2812 var2053)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var2812!1 String)
(declare-const var2053!1 Int)
(assert true)
(define-const var441 String (append/672562846 var2812!1 var2568)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2812!2 String)
(assert (= var2812!2 (str.++ var2812!1 var2568)))
(assert true)
(define-const var2612 String (append/-1166366385 var441 64)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var441!1 String)
(assert (str.prefixof var441 var441!1))
(assert true)
;(assert (append/672562846 var2612 var629)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2612!1 String)
(assert (= var2612!1 (str.++ var2612 var629)))
(assert true)
(define-const var3943 String (toString/-2075883882 var2812!2)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var2277_identityHashCodeHex/834881754=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2862=java.lang.Object, var830=r0, var2617=$r1, var2568=r2, var2277=org.apache.commons.lang3.ObjectUtils, var629=r3, var2812=$r4, var3653=$i0, var3425=$i2, var2627=$i1, var2053=$i3, var441=$r5, var2612=$r6, var3943=$r7}
; {java.lang.Object=var2862, r0=var830, $r1=var2617, r2=var2568, org.apache.commons.lang3.ObjectUtils=var2277, r3=var629, $r4=var2812, $i0=var3653, $i2=var3425, $i1=var2627, $i3=var2053, $r5=var441, $r6=var2612, $r7=var3943}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	r3 = staticinvoke <org.apache.commons.lang3.ObjectUtils: java.lang.String identityHashCodeHex(java.lang.Object)>(r0);	$r4 = new java.lang.StringBuilder;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i0 + 1;	$i1 = virtualinvoke r3.<java.lang.String: int length()>();	$i3 = $i2 + $i1;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2