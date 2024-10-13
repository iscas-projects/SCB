(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3321 0)
(declare-sort var35 0)
(declare-sort var3991 0)
(declare-sort var796 0)
(declare-sort var3099 0)
(declare-sort var941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeSetters/1960194218 (var3321) var3991)
(declare-fun var3991_get/1088891777 (var3991 var796) var796)
(declare-fun cast-from-String-to-var796 (String) var796)
(declare-fun cast-from-var796-to-var3099 (var796) var3099)
(declare-fun var941-init () var941)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bean/1960194218 (var3321) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/882749068 (var941 String String) void)
(declare-const null-var3321 var3321)
(declare-const null-String String)
(declare-const null-var3099 var3099)
(declare-const var1052 var3321) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1052 null-var3321)))
(declare-const var150 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var150 null-String)))
(define-const var3124 var3991 (attributeSetters/1960194218 var1052)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters> 
(define-const var867 var796 (var3991_get/1088891777 var3124 (cast-from-String-to-var796 var150))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2051 var3099 (cast-from-var796-to-var3099 var867)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r3 
 ; Statement: if r4 != null goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter)>(r4) 
(assert (not (not (= var2051 null-var3099)))) ; Negate: Cond: r4 != null  
(define-const var1572 var941 var941-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException 
(define-const var860 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var860)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var860!1 String)
(assert (= var860!1 ""))
(assert true)
(define-const var431 String (append/672562846 var860!1 "Class ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var860!2 String)
(assert (= var860!2 (str.++ var860!1 "Class ")))
(define-const var1397 ClassObject (bean/1960194218 var1052)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean> 
(assert true)
(define-const var1398 String (getName/-1958580599 var1397)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var771 String (append/672562846 var431 var1398)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var431!1 String)
(assert (= var431!1 (str.++ var431 var1398)))
(assert true)
(define-const var377 String (append/672562846 var771 " doesn\u0027t support the \u0022")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the \"") 
(declare-const var771!1 String)
(assert (= var771!1 (str.++ var771 " doesn\u0027t support the \u0022")))
(assert true)
(define-const var2128 String (append/672562846 var377 var150)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var377!1 String)
(assert (= var377!1 (str.++ var377 var150)))
(assert true)
(define-const var78 String (append/672562846 var2128 "\u0022 attribute.")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" attribute.") 
(declare-const var2128!1 String)
(assert (= var2128!1 (str.++ var2128 "\u0022 attribute.")))
(assert true)
(define-const var1765 String (toString/-2075883882 var78)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/882749068 var1572 var1765 var150)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException: void <init>(java.lang.String,java.lang.String)>($r15, r1) 

(declare-const var1572!1 var941)
(declare-const var1765!1 String)
(declare-const var150!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeSetters/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), var3991_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var796=([java.lang.String], java.lang.Object), cast-from-var796-to-var3099=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter), var941-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bean/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/882749068=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException, java.lang.String, java.lang.String], void)}
; {var3321=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1052=r0, var150=r1, var35=null_type, var3991=java.util.Map, var3124=$r2, var796=java.lang.Object, var867=$r3, var3099=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter, var2051=r4, var941=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException, var1572=$r6, var860=$r7, var431=$r10, var1397=$r8, var1398=$r9, var771=$r11, var377=$r12, var2128=$r13, var78=$r14, var1765=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var3321, r0=var1052, r1=var150, null_type=var35, java.util.Map=var3991, $r2=var3124, java.lang.Object=var796, $r3=var867, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter=var3099, r4=var2051, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException=var941, $r6=var1572, $r7=var860, $r10=var431, $r8=var1397, $r9=var1398, $r11=var771, $r12=var377, $r13=var2128, $r14=var78, $r15=var1765}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r3;	if r4 != null goto $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter)>(r4);	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the \"");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" attribute.");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException: void <init>(java.lang.String,java.lang.String)>($r15, r1);	throw $r6
;block_num 2