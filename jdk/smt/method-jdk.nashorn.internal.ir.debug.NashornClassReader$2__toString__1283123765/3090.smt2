(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2636 0)
(declare-sort var294 0)
(declare-sort var2949 0)
(declare-sort var1786 0)
(declare-sort var3399 0)
(declare-sort var820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun index/1760037291 (var294) Int)
(declare-fun cast-from-var2636-to-var294 (var2636) var294)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cp/-1593354951 (var1786) var2949)
(declare-fun cast-from-var2636-to-var1786 (var2636) var1786)
(declare-fun index2/-1273418777 (var3399) Int)
(declare-fun cast-from-var2636-to-var3399 (var2636) var3399)
(declare-fun get/-1298449658 (var2949 Int) var820)
(declare-fun cast-from-var820-to-var1786 (var820) var1786)
(declare-fun toString/-522406933 (var820) String)
(declare-fun cast-from-var1786-to-var820 (var1786) var820)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2636 var2636)
(declare-const var465 var2636) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornClassReader$2 
(assert (not (= var465 null-var2636)))
(define-const var2137 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2137)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2137!1 String)
(assert (= var2137!1 ""))
(assert true)
(define-const var572 String (append/672562846 var2137!1 "#")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2137!2 String)
(assert (= var2137!2 (str.++ var2137!1 "#")))
(define-const var2213 Int (index/1760037291 (cast-from-var2636-to-var294 var465))) ; Statement: $i0 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$2: int index> 
(assert true)
(define-const var1462 String (append/-1001720160 var572 var2213)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var572!1 String)
(assert (str.prefixof var572 var572!1))
(assert true)
(define-const var2364 String (append/-1166366385 var1462 32)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1462!1 String)
(assert (str.prefixof var1462 var1462!1))
(define-const var2064 var2949 (cp/-1593354951 (cast-from-var2636-to-var1786 var465))) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$2: java.util.ArrayList cp> 
(define-const var3246 Int (index2/-1273418777 (cast-from-var2636-to-var3399 var465))) ; Statement: $i1 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$2: int index2> 
(assert true)
(define-const var659 var820 (get/-1298449658 var2064 var3246)) ; Statement: $r5 = virtualinvoke $r4.<java.util.ArrayList: java.lang.Object get(int)>($i1) 
(define-const var452 var1786 (cast-from-var820-to-var1786 var659)) ; Statement: $r6 = (jdk.nashorn.internal.ir.debug.NashornClassReader$Constant) $r5 
(assert true)
(define-const var2335 String (toString/-522406933 (cast-from-var1786-to-var820 var452))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var892 String (append/672562846 var2364 var2335)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2364!1 String)
(assert (= var2364!1 (str.++ var2364 var2335)))
(assert true)
(define-const var589 String (toString/-2075883882 var892)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), index/1760037291=([jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo], int), cast-from-var2636-to-var294=([jdk.nashorn.internal.ir.debug.NashornClassReader$2], jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cp/-1593354951=([jdk.nashorn.internal.ir.debug.NashornClassReader$Constant], java.util.ArrayList), cast-from-var2636-to-var1786=([jdk.nashorn.internal.ir.debug.NashornClassReader$2], jdk.nashorn.internal.ir.debug.NashornClassReader$Constant), index2/-1273418777=([jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2], int), cast-from-var2636-to-var3399=([jdk.nashorn.internal.ir.debug.NashornClassReader$2], jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2), get/-1298449658=([java.util.ArrayList, int], java.lang.Object), cast-from-var820-to-var1786=([java.lang.Object], jdk.nashorn.internal.ir.debug.NashornClassReader$Constant), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1786-to-var820=([jdk.nashorn.internal.ir.debug.NashornClassReader$Constant], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2636=jdk.nashorn.internal.ir.debug.NashornClassReader$2, var465=r1, var2137=$r0, var572=$r2, var294=jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo, var2213=$i0, var1462=$r3, var2364=$r8, var2949=java.util.ArrayList, var1786=jdk.nashorn.internal.ir.debug.NashornClassReader$Constant, var2064=$r4, var3399=jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2, var3246=$i1, var820=java.lang.Object, var659=$r5, var452=$r6, var2335=$r7, var892=$r9, var589=$r10}
; {jdk.nashorn.internal.ir.debug.NashornClassReader$2=var2636, r1=var465, $r0=var2137, $r2=var572, jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo=var294, $i0=var2213, $r3=var1462, $r8=var2364, java.util.ArrayList=var2949, jdk.nashorn.internal.ir.debug.NashornClassReader$Constant=var1786, $r4=var2064, jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2=var3399, $i1=var3246, java.lang.Object=var820, $r5=var659, $r6=var452, $r7=var2335, $r9=var892, $r10=var589}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornClassReader$2;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$i0 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$2: int index>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$2: java.util.ArrayList cp>;	$i1 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$2: int index2>;	$r5 = virtualinvoke $r4.<java.util.ArrayList: java.lang.Object get(int)>($i1);	$r6 = (jdk.nashorn.internal.ir.debug.NashornClassReader$Constant) $r5;	$r7 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1