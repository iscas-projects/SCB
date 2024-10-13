(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var113 0)
(declare-sort var514 0)
(declare-sort var3008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1169445111 (var113) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var514_identityHashCode/1096208673 (var3008) Int)
(declare-fun cast-from-var113-to-var3008 (var113) var3008)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var113 var113)
(declare-const var501 var113) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.Node 
(assert (not (= var501 null-var113)))
(define-const var3243 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3243)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3243!1 String)
(assert (= var3243!1 ""))
(assert true)
(define-const var1813 String (getName/1169445111 var501)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String getName()>() 
(assert true)
(define-const var1355 String (append/672562846 var3243!1 var1813)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3243!2 String)
(assert (= var3243!2 (str.++ var3243!1 var1813)))
(assert true)
(define-const var726 String (append/672562846 var1355 ":0x")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":0x") 
(declare-const var1355!1 String)
(assert (= var1355!1 (str.++ var1355 ":0x")))
(define-const var3066 Int (var514_identityHashCode/1096208673 (cast-from-var113-to-var3008 var501))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(define-const var584 String (Int_toHexString/1865784998 var3066)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0) 
(assert true)
(define-const var2690 String (append/672562846 var726 var584)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var726!1 String)
(assert (= var726!1 (str.++ var726 var584)))
(assert true)
(define-const var2533 String (toString/-2075883882 var2690)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1169445111=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var514_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var113-to-var3008=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.Object), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var113=jdk.nashorn.internal.runtime.regexp.joni.ast.Node, var501=r1, var3243=$r0, var1813=$r2, var1355=$r3, var726=$r5, var514=java.lang.System, var3008=java.lang.Object, var3066=$i0, var584=$r4, var2690=$r6, var2533=$r7}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.Node=var113, r1=var501, $r0=var3243, $r2=var1813, $r3=var1355, $r5=var726, java.lang.System=var514, java.lang.Object=var3008, $i0=var3066, $r4=var584, $r6=var2690, $r7=var2533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":0x");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1