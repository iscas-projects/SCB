(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var35 0)
(declare-sort var3837 0)
(declare-sort var3873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-312303092 (var35) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun code/-312303092 (var35) var3837)
(declare-fun size/1804652082 (var3837) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3873) String)
(declare-fun cast-from-var3837-to-var3873 (var3837) var3873)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var35 var35)
(declare-const var1669 var35) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData 
(assert (not (= var1669 null-var35)))
(define-const var1921 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1921)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1921!1 String)
(assert (= var1921!1 ""))
(assert true)
(define-const var3275 String (append/672562846 var1921!1 "name=\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name=\'") 
(declare-const var1921!2 String)
(assert (= var1921!2 (str.++ var1921!1 "name=\u0027")))
(define-const var1826 String (name/-312303092 var1669)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert true)
(define-const var3642 Bool (isEmpty/-1285796103 var1826)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r11 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert (= (ite var3642 1 0) 0)) ; Cond: $z0 == 0 
(define-const var532 String (name/-312303092 var1669)) ; Statement: $r11 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert true) ; Non Conditional
(assert true)
(define-const var744 String (append/672562846 var3275 var532)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3275!1 String)
(assert (= var3275!1 (str.++ var3275 var532)))
(assert true)
(define-const var3766 String (append/672562846 var744 "\u0027 ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ") 
(declare-const var744!1 String)
(assert (= var744!1 (str.++ var744 "\u0027 ")))
(define-const var837 var3837 (code/-312303092 var1669)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.util.LinkedList code> 
(assert true)
(define-const var686 Int (size/1804652082 var837)) ; Statement: $i0 = virtualinvoke $r5.<java.util.LinkedList: int size()>() 
(assert true)
(define-const var1429 String (append/-1001720160 var3766 var686)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3766!1 String)
(assert (str.prefixof var3766 var3766!1))
(assert true)
(define-const var1894 String (append/672562846 var1429 " invokers=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" invokers=") 
(declare-const var1429!1 String)
(assert (= var1429!1 (str.++ var1429 " invokers=")))
(define-const var3163 var3837 (code/-312303092 var1669)) ; Statement: $r8 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.util.LinkedList code> 
(assert true)
;(assert (append/-1031950772 var1894 (cast-from-var3837-to-var3873 var3163))) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1894!1 String)
(assert (str.prefixof var1894 var1894!1))
(assert true)
(define-const var2979 String (toString/-2075883882 var1921!2)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-312303092=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), code/-312303092=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.util.LinkedList), size/1804652082=([java.util.LinkedList], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3837-to-var3873=([java.util.LinkedList], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var35=jdk.nashorn.internal.runtime.ScriptFunctionData, var1669=r1, var1921=$r0, var3275=$r3, var1826=$r2, var3642=$z0, var532=$r11, var744=$r4, var3766=$r6, var3837=java.util.LinkedList, var837=$r5, var686=$i0, var1429=$r7, var1894=$r9, var3163=$r8, var3873=java.lang.Object, var2979=$r10}
; {jdk.nashorn.internal.runtime.ScriptFunctionData=var35, r1=var1669, $r0=var1921, $r3=var3275, $r2=var1826, $z0=var3642, $r11=var532, $r4=var744, $r6=var3766, java.util.LinkedList=var3837, $r5=var837, $i0=var686, $r7=var1429, $r9=var1894, $r8=var3163, java.lang.Object=var3873, $r10=var2979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name=\'");	$r2 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r11 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$r11 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ");	$r5 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.util.LinkedList code>;	$i0 = virtualinvoke $r5.<java.util.LinkedList: int size()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" invokers=");	$r8 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.util.LinkedList code>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3