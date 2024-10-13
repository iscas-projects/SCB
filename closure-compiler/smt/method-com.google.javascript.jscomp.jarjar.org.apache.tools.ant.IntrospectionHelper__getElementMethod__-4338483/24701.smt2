(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3079 0)
(declare-sort var2900 0)
(declare-sort var2228 0)
(declare-sort var414 0)
(declare-sort var2296 0)
(declare-sort var1794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nestedCreators/1960194218 (var3079) var2228)
(declare-fun var2228_get/1088891777 (var2228 var414) var414)
(declare-fun cast-from-String-to-var414 (String) var414)
(declare-fun cast-from-var414-to-var2296 (var414) var2296)
(declare-fun var1794-init () var1794)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bean/1960194218 (var3079) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-719485332 (var1794 String String) void)
(declare-const null-var3079 var3079)
(declare-const null-String String)
(declare-const null-var2296 var2296)
(declare-const var1204 var3079) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1204 null-var3079)))
(declare-const var3464 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3464 null-String)))
(define-const var370 var2228 (nestedCreators/1960194218 var1204)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators> 
(define-const var1902 var414 (var2228_get/1088891777 var370 (cast-from-String-to-var414 var3464))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1579 var2296 (cast-from-var414-to-var2296 var1902)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator) $r3 
 ; Statement: if r4 != null goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: java.lang.reflect.Method access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator)>(r4) 
(assert (not (not (= var1579 null-var2296)))) ; Negate: Cond: r4 != null  
(define-const var3078 var1794 var1794-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException 
(define-const var3441 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3441)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3441!1 String)
(assert (= var3441!1 ""))
(assert true)
(define-const var3064 String (append/672562846 var3441!1 "Class ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var3441!2 String)
(assert (= var3441!2 (str.++ var3441!1 "Class ")))
(define-const var1024 ClassObject (bean/1960194218 var1204)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean> 
(assert true)
(define-const var1450 String (getName/-1958580599 var1024)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2781 String (append/672562846 var3064 var1450)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3064!1 String)
(assert (= var3064!1 (str.++ var3064 var1450)))
(assert true)
(define-const var2749 String (append/672562846 var2781 " doesn\u0027t support the nested \u0022")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the nested \"") 
(declare-const var2781!1 String)
(assert (= var2781!1 (str.++ var2781 " doesn\u0027t support the nested \u0022")))
(assert true)
(define-const var3756 String (append/672562846 var2749 var3464)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2749!1 String)
(assert (= var2749!1 (str.++ var2749 var3464)))
(assert true)
(define-const var3922 String (append/672562846 var3756 "\u0022 element.")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element.") 
(declare-const var3756!1 String)
(assert (= var3756!1 (str.++ var3756 "\u0022 element.")))
(assert true)
(define-const var866 String (toString/-2075883882 var3922)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-719485332 var3078 var866 var3464)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException: void <init>(java.lang.String,java.lang.String)>($r15, r1) 

(declare-const var3078!1 var1794)
(declare-const var866!1 String)
(declare-const var3464!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {nestedCreators/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), var2228_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var414=([java.lang.String], java.lang.Object), cast-from-var414-to-var2296=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator), var1794-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bean/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-719485332=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException, java.lang.String, java.lang.String], void)}
; {var3079=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1204=r0, var3464=r1, var2900=null_type, var2228=java.util.Map, var370=$r2, var414=java.lang.Object, var1902=$r3, var2296=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var1579=r4, var1794=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException, var3078=$r6, var3441=$r7, var3064=$r10, var1024=$r8, var1450=$r9, var2781=$r11, var2749=$r12, var3756=$r13, var3922=$r14, var866=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var3079, r0=var1204, r1=var3464, null_type=var2900, java.util.Map=var2228, $r2=var370, java.lang.Object=var414, $r3=var1902, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var2296, r4=var1579, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException=var1794, $r6=var3078, $r7=var3441, $r10=var3064, $r8=var1024, $r9=var1450, $r11=var2781, $r12=var2749, $r13=var3756, $r14=var3922, $r15=var866}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator) $r3;	if r4 != null goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: java.lang.reflect.Method access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator)>(r4);	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the nested \"");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element.");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException: void <init>(java.lang.String,java.lang.String)>($r15, r1);	throw $r6
;block_num 2