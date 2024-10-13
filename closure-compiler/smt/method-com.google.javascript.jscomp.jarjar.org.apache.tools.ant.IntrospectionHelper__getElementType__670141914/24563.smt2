(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2059 0)
(declare-sort var2998 0)
(declare-sort var3565 0)
(declare-sort var598 0)
(declare-sort var703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nestedTypes/1960194218 (var2059) var3565)
(declare-fun var3565_get/1088891777 (var3565 var598) var598)
(declare-fun cast-from-String-to-var598 (String) var598)
(declare-fun cast-from-var598-to-ClassObject (var598) ClassObject)
(declare-fun var703-init () var703)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bean/1960194218 (var2059) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-719485332 (var703 String String) void)
(declare-const null-var2059 var2059)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2033 var2059) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var2033 null-var2059)))
(declare-const var1010 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1010 null-String)))
(define-const var391 var3565 (nestedTypes/1960194218 var2033)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedTypes> 
(define-const var991 var598 (var3565_get/1088891777 var391 (cast-from-String-to-var598 var1010))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3869 ClassObject (cast-from-var598-to-ClassObject var991)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var3869 null-ClassObject)))) ; Negate: Cond: r4 != null  
(define-const var1394 var703 var703-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException 
(define-const var3905 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3905)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3905!1 String)
(assert (= var3905!1 ""))
(assert true)
(define-const var3759 String (append/672562846 var3905!1 "Class ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var3905!2 String)
(assert (= var3905!2 (str.++ var3905!1 "Class ")))
(define-const var3658 ClassObject (bean/1960194218 var2033)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean> 
(assert true)
(define-const var722 String (getName/-1958580599 var3658)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1153 String (append/672562846 var3759 var722)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3759!1 String)
(assert (= var3759!1 (str.++ var3759 var722)))
(assert true)
(define-const var145 String (append/672562846 var1153 " doesn\u0027t support the nested \u0022")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the nested \"") 
(declare-const var1153!1 String)
(assert (= var1153!1 (str.++ var1153 " doesn\u0027t support the nested \u0022")))
(assert true)
(define-const var1122 String (append/672562846 var145 var1010)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var145!1 String)
(assert (= var145!1 (str.++ var145 var1010)))
(assert true)
(define-const var68 String (append/672562846 var1122 "\u0022 element.")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element.") 
(declare-const var1122!1 String)
(assert (= var1122!1 (str.++ var1122 "\u0022 element.")))
(assert true)
(define-const var3732 String (toString/-2075883882 var68)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-719485332 var1394 var3732 var1010)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException: void <init>(java.lang.String,java.lang.String)>($r14, r1) 

(declare-const var1394!1 var703)
(declare-const var3732!1 String)
(declare-const var1010!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {nestedTypes/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), var3565_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var598=([java.lang.String], java.lang.Object), cast-from-var598-to-ClassObject=([java.lang.Object], java.lang.Class), var703-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bean/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-719485332=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException, java.lang.String, java.lang.String], void)}
; {var2059=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var2033=r0, var1010=r1, var2998=null_type, var3565=java.util.Map, var391=$r2, var598=java.lang.Object, var991=$r3, var3869=r4, var703=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException, var1394=$r5, var3905=$r6, var3759=$r9, var3658=$r7, var722=$r8, var1153=$r10, var145=$r11, var1122=$r12, var68=$r13, var3732=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var2059, r0=var2033, r1=var1010, null_type=var2998, java.util.Map=var3565, $r2=var391, java.lang.Object=var598, $r3=var991, r4=var3869, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException=var703, $r5=var1394, $r6=var3905, $r9=var3759, $r7=var3658, $r8=var722, $r10=var1153, $r11=var145, $r12=var1122, $r13=var68, $r14=var3732}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedTypes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto return r4;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the nested \"");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element.");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException: void <init>(java.lang.String,java.lang.String)>($r14, r1);	throw $r5
;block_num 2