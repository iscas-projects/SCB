(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3259 0)
(declare-sort var3536 0)
(declare-sort var1100 0)
(declare-sort var2086 0)
(declare-sort var3820 0)
(declare-sort var40 0)
(declare-sort var3386 0)
(declare-sort var2254 0)
(declare-sort var3795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3536-init () var3536)
(declare-fun methods/2014264644 (var3259) var1100)
(declare-fun size/1804652082 (var1100) Int)
(declare-fun <init>/1228603609 (var3536 Int) void)
(declare-fun iterator/396927710 (var2086) Iterator)
(declare-fun cast-from-var1100-to-var2086 (var1100) var2086)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3820_getInstance/-2017104446 () var3820)
(declare-fun setStrength/536014156 (var3820 Int) void)
(declare-fun var40_sort/1193632636 (var3386 var2254) void)
(declare-fun cast-from-var3536-to-var3386 (var3536) var3386)
(declare-fun cast-from-var3820-to-var2254 (var3820) var2254)
(declare-fun getClass/1258963082 (var3795) ClassObject)
(declare-fun cast-from-var3259-to-var3795 (var3259) var3795)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3386_size/-959786421 (var3386) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3386_iterator/-912451715 (var3386) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3259 var3259)
(declare-const var3259-$assertionsDisabled Bool)
(declare-const var272 var3259) ; Statement: r1 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod 
(assert (not (= var272 null-var3259)))
(define-const var35 var3536 var3536-init) ; Statement: $r0 = new java.util.ArrayList 
(define-const var1287 var1100 (methods/2014264644 var272)) ; Statement: $r2 = r1.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert true)
(define-const var609 Int (size/1804652082 var1287)) ; Statement: $i0 = virtualinvoke $r2.<java.util.LinkedList: int size()>() 
(assert true)
;(assert (<init>/1228603609 var35 var609)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var35!1 var3536)
(declare-const var609!1 Int)
(define-const var369 Int 0) ; Statement: i8 = 0 
(define-const var2529 var1100 (methods/2014264644 var272)) ; Statement: $r3 = r1.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert true)
(define-const var1190 Iterator (iterator/396927710 (cast-from-var1100-to-var2086 var2529))) ; Statement: r16 = virtualinvoke $r3.<java.util.LinkedList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3359 Bool (Iterator_hasNext/-1669924200 var1190)) ; Statement: $z0 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r19 = staticinvoke <java.text.Collator: java.text.Collator getInstance()>() 
(assert (= (ite var3359 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1708 var3820 var3820_getInstance/-2017104446) ; Statement: r19 = staticinvoke <java.text.Collator: java.text.Collator getInstance()>() 
(assert true)
;(assert (setStrength/536014156 var1708 1)) ; Statement: virtualinvoke r19.<java.text.Collator: void setStrength(int)>(1) 

(declare-const var1708!1 var3820)
(declare-const var281 Int)
;(assert (var40_sort/1193632636 (cast-from-var3536-to-var3386 var35!1) (cast-from-var3820-to-var2254 var1708!1))) ; Statement: staticinvoke <java.util.Collections: void sort(java.util.List,java.util.Comparator)>($r0, r19) 

(declare-const var35!2 var3536)
(declare-const var1708!2 var3820)
(assert true)
(define-const var3967 ClassObject (getClass/1258963082 (cast-from-var3259-to-var3795 var272))) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2926 String (getName/-1958580599 var3967)) ; Statement: r20 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var798 Int (length/-134980193 var2926)) ; Statement: $i1 = virtualinvoke r20.<java.lang.String: int length()>() 
(define-const var2331 Int (+ var798 var369)) ; Statement: $i4 = $i1 + i8 
(define-const var2339 Int (var3386_size/-959786421 (cast-from-var3536-to-var3386 var35!2))) ; Statement: $i2 = interfaceinvoke $r0.<java.util.List: int size()>() 
(define-const var2945 Int (* 2 var2339)) ; Statement: $i3 = 2 * $i2 
(define-const var3064 Int (+ var2331 var2945)) ; Statement: $i5 = $i4 + $i3 
(define-const var19 Int (+ var3064 3)) ; Statement: i9 = $i5 + 3 
(define-const var3203 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3203 var19)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>(i9) 

(declare-const var3203!1 String)
(declare-const var19!1 Int)
(assert true)
(define-const var862 String (append/-1166366385 var3203!1 91)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3203!2 String)
(assert (str.prefixof var3203!1 var3203!2))
(assert true)
(define-const var3050 String (append/672562846 var862 var2926)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var862!1 String)
(assert (= var862!1 (str.++ var862 var2926)))
(assert true)
;(assert (append/-1166366385 var3050 10)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3050!1 String)
(assert (str.prefixof var3050 var3050!1))
(define-const var1279 Iterator (var3386_iterator/-912451715 (cast-from-var3536-to-var3386 var35!2))) ; Statement: r8 = interfaceinvoke $r0.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var696 Bool (Iterator_hasNext/-1669924200 var1279)) ; Statement: $z1 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (= (ite var696 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/-1166366385 var3203!2 93)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3203!3 String)
(assert (str.prefixof var3203!2 var3203!3))
(define-const var3493 Bool var3259-$assertionsDisabled) ; Statement: $z2 = <jdk.internal.dynalink.beans.OverloadedDynamicMethod: boolean $assertionsDisabled> 
 ; Statement: if $z2 != 0 goto $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var3493 1 0) 0))) ; Cond: $z2 != 0 
(assert true)
(define-const var3860 String (toString/-2075883882 var3203!3)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3536-init=([], java.util.ArrayList), methods/2014264644=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], java.util.LinkedList), size/1804652082=([java.util.LinkedList], int), <init>/1228603609=([java.util.ArrayList, int], void), iterator/396927710=([java.util.AbstractSequentialList], java.util.Iterator), cast-from-var1100-to-var2086=([java.util.LinkedList], java.util.AbstractSequentialList), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3820_getInstance/-2017104446=([], java.text.Collator), setStrength/536014156=([java.text.Collator, int], void), var40_sort/1193632636=([java.util.List, java.util.Comparator], void), cast-from-var3536-to-var3386=([java.util.ArrayList], java.util.List), cast-from-var3820-to-var2254=([java.text.Collator], java.util.Comparator), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3259-to-var3795=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var3386_size/-959786421=([java.util.List], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3386_iterator/-912451715=([java.util.List], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3259=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var272=r1, var3536=java.util.ArrayList, var35=$r0, var1100=java.util.LinkedList, var1287=$r2, var609=$i0, var369=i8, var2529=$r3, var2086=java.util.AbstractSequentialList, var1190=r16, var3359=$z0, var3820=java.text.Collator, var1708=r19, var281=1, var40=java.util.Collections, var3386=java.util.List, var2254=java.util.Comparator, var3795=java.lang.Object, var3967=$r4, var2926=r20, var798=$i1, var2331=$i4, var2339=$i2, var2945=$i3, var3064=$i5, var19=i9, var3203=$r5, var862=$r6, var3050=$r7, var1279=r8, var696=$z1, var3493=$z2, var3860=$r9}
; {jdk.internal.dynalink.beans.OverloadedDynamicMethod=var3259, r1=var272, java.util.ArrayList=var3536, $r0=var35, java.util.LinkedList=var1100, $r2=var1287, $i0=var609, i8=var369, $r3=var2529, java.util.AbstractSequentialList=var2086, r16=var1190, $z0=var3359, java.text.Collator=var3820, r19=var1708, 1=var281, java.util.Collections=var40, java.util.List=var3386, java.util.Comparator=var2254, java.lang.Object=var3795, $r4=var3967, r20=var2926, $i1=var798, $i4=var2331, $i2=var2339, $i3=var2945, $i5=var3064, i9=var19, $r5=var3203, $r6=var862, $r7=var3050, r8=var1279, $z1=var696, $z2=var3493, $r9=var3860}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod;	$r0 = new java.util.ArrayList;	$r2 = r1.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	$i0 = virtualinvoke $r2.<java.util.LinkedList: int size()>();	specialinvoke $r0.<java.util.ArrayList: void <init>(int)>($i0);	i8 = 0;	$r3 = r1.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	r16 = virtualinvoke $r3.<java.util.LinkedList: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r19 = staticinvoke <java.text.Collator: java.text.Collator getInstance()>();	r19 = staticinvoke <java.text.Collator: java.text.Collator getInstance()>();	virtualinvoke r19.<java.text.Collator: void setStrength(int)>(1);	staticinvoke <java.util.Collections: void sort(java.util.List,java.util.Comparator)>($r0, r19);	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$i1 = virtualinvoke r20.<java.lang.String: int length()>();	$i4 = $i1 + i8;	$i2 = interfaceinvoke $r0.<java.util.List: int size()>();	$i3 = 2 * $i2;	$i5 = $i4 + $i3;	i9 = $i5 + 3;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>(i9);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	r8 = interfaceinvoke $r0.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$z2 = <jdk.internal.dynalink.beans.OverloadedDynamicMethod: boolean $assertionsDisabled>;	if $z2 != 0 goto $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 6