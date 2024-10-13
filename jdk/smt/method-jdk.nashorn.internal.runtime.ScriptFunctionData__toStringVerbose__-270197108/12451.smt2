(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1420 0)
(declare-sort var1602 0)
(declare-sort var913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-312303092 (var1420) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun code/-312303092 (var1420) var1602)
(declare-fun size/1804652082 (var1602) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var913) String)
(declare-fun cast-from-var1602-to-var913 (var1602) var913)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1420 var1420)
(declare-const var1169 var1420) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData 
(assert (not (= var1169 null-var1420)))
(define-const var2349 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2349)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2349!1 String)
(assert (= var2349!1 ""))
(assert true)
(define-const var2667 String (append/672562846 var2349!1 "name=\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name=\'") 
(declare-const var2349!2 String)
(assert (= var2349!2 (str.++ var2349!1 "name=\u0027")))
(define-const var650 String (name/-312303092 var1169)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert true)
(define-const var96 Bool (isEmpty/-1285796103 var650)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r11 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert (not (= (ite var96 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2697 String "<anonymous>") ; Statement: $r11 = "<anonymous>" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var565 String (append/672562846 var2667 var2697)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2667!1 String)
(assert (= var2667!1 (str.++ var2667 var2697)))
(assert true)
(define-const var3791 String (append/672562846 var565 "\u0027 ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ") 
(declare-const var565!1 String)
(assert (= var565!1 (str.++ var565 "\u0027 ")))
(define-const var2429 var1602 (code/-312303092 var1169)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.util.LinkedList code> 
(assert true)
(define-const var3645 Int (size/1804652082 var2429)) ; Statement: $i0 = virtualinvoke $r5.<java.util.LinkedList: int size()>() 
(assert true)
(define-const var3898 String (append/-1001720160 var3791 var3645)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3791!1 String)
(assert (str.prefixof var3791 var3791!1))
(assert true)
(define-const var474 String (append/672562846 var3898 " invokers=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" invokers=") 
(declare-const var3898!1 String)
(assert (= var3898!1 (str.++ var3898 " invokers=")))
(define-const var3161 var1602 (code/-312303092 var1169)) ; Statement: $r8 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.util.LinkedList code> 
(assert true)
;(assert (append/-1031950772 var474 (cast-from-var1602-to-var913 var3161))) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var474!1 String)
(assert (str.prefixof var474 var474!1))
(assert true)
(define-const var824 String (toString/-2075883882 var2349!2)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-312303092=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), code/-312303092=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.util.LinkedList), size/1804652082=([java.util.LinkedList], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1602-to-var913=([java.util.LinkedList], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1420=jdk.nashorn.internal.runtime.ScriptFunctionData, var1169=r1, var2349=$r0, var2667=$r3, var650=$r2, var96=$z0, var2697=$r11, var565=$r4, var3791=$r6, var1602=java.util.LinkedList, var2429=$r5, var3645=$i0, var3898=$r7, var474=$r9, var3161=$r8, var913=java.lang.Object, var824=$r10}
; {jdk.nashorn.internal.runtime.ScriptFunctionData=var1420, r1=var1169, $r0=var2349, $r3=var2667, $r2=var650, $z0=var96, $r11=var2697, $r4=var565, $r6=var3791, java.util.LinkedList=var1602, $r5=var2429, $i0=var3645, $r7=var3898, $r9=var474, $r8=var3161, java.lang.Object=var913, $r10=var824}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name=\'");	$r2 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r11 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$r11 = "<anonymous>";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ");	$r5 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.util.LinkedList code>;	$i0 = virtualinvoke $r5.<java.util.LinkedList: int size()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" invokers=");	$r8 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.util.LinkedList code>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3