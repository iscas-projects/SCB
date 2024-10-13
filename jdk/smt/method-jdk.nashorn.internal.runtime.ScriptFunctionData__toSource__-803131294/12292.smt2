(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1375 0)
(declare-sort var1477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-312303092 (var1375) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1375 var1375)
(declare-const null-String String)
(declare-const var1122 var1375) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData 
(assert (not (= var1122 null-var1375)))
(define-const var3426 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3426)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3426!1 String)
(assert (= var3426!1 ""))
(assert true)
(define-const var480 String (append/672562846 var3426!1 "function ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function ") 
(declare-const var3426!2 String)
(assert (= var3426!2 (str.++ var3426!1 "function ")))
(define-const var3593 String (name/-312303092 var1122)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
 ; Statement: if $r2 != null goto $r7 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name> 
(assert (not (not (= var3593 null-String)))) ; Negate: Cond: $r2 != null  
(define-const var2965 String "") ; Statement: $r7 = "" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3064 String (append/672562846 var480 var2965)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var480!1 String)
(assert (= var480!1 (str.++ var480 var2965)))
(assert true)
(define-const var1804 String (append/672562846 var3064 "() { [native code] }")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() { [native code] }") 
(declare-const var3064!1 String)
(assert (= var3064!1 (str.++ var3064 "() { [native code] }")))
(assert true)
(define-const var845 String (toString/-2075883882 var1804)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-312303092=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1375=jdk.nashorn.internal.runtime.ScriptFunctionData, var1122=r1, var3426=$r0, var480=$r3, var3593=$r2, var1477=null_type, var2965=$r7, var3064=$r4, var1804=$r5, var845=$r6}
; {jdk.nashorn.internal.runtime.ScriptFunctionData=var1375, r1=var1122, $r0=var3426, $r3=var480, $r2=var3593, null_type=var1477, $r7=var2965, $r4=var3064, $r5=var1804, $r6=var845}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function ");	$r2 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	if $r2 != null goto $r7 = r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String name>;	$r7 = "";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() { [native code] }");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3