(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1126 0)
(declare-sort var1603 0)
(declare-sort var3380 0)
(declare-sort var2693 0)
(declare-sort var785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeTypes/1960194218 (var1126) var3380)
(declare-fun var3380_get/1088891777 (var3380 var2693) var2693)
(declare-fun cast-from-String-to-var2693 (String) var2693)
(declare-fun cast-from-var2693-to-ClassObject (var2693) ClassObject)
(declare-fun var785-init () var785)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bean/1960194218 (var1126) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/882749068 (var785 String String) void)
(declare-const null-var1126 var1126)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1064 var1126) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1064 null-var1126)))
(declare-const var1059 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1059 null-String)))
(define-const var1178 var3380 (attributeTypes/1960194218 var1064)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeTypes> 
(define-const var2804 var2693 (var3380_get/1088891777 var1178 (cast-from-String-to-var2693 var1059))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var197 ClassObject (cast-from-var2693-to-ClassObject var2804)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var197 null-ClassObject)))) ; Negate: Cond: r4 != null  
(define-const var504 var785 var785-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException 
(define-const var1746 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1746)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1746!1 String)
(assert (= var1746!1 ""))
(assert true)
(define-const var3401 String (append/672562846 var1746!1 "Class ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var1746!2 String)
(assert (= var1746!2 (str.++ var1746!1 "Class ")))
(define-const var2502 ClassObject (bean/1960194218 var1064)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean> 
(assert true)
(define-const var208 String (getName/-1958580599 var2502)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3005 String (append/672562846 var3401 var208)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3401!1 String)
(assert (= var3401!1 (str.++ var3401 var208)))
(assert true)
(define-const var107 String (append/672562846 var3005 " doesn\u0027t support the \u0022")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the \"") 
(declare-const var3005!1 String)
(assert (= var3005!1 (str.++ var3005 " doesn\u0027t support the \u0022")))
(assert true)
(define-const var182 String (append/672562846 var107 var1059)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var107!1 String)
(assert (= var107!1 (str.++ var107 var1059)))
(assert true)
(define-const var3791 String (append/672562846 var182 "\u0022 attribute.")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" attribute.") 
(declare-const var182!1 String)
(assert (= var182!1 (str.++ var182 "\u0022 attribute.")))
(assert true)
(define-const var1222 String (toString/-2075883882 var3791)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/882749068 var504 var1222 var1059)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException: void <init>(java.lang.String,java.lang.String)>($r14, r1) 

(declare-const var504!1 var785)
(declare-const var1222!1 String)
(declare-const var1059!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeTypes/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), var3380_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2693=([java.lang.String], java.lang.Object), cast-from-var2693-to-ClassObject=([java.lang.Object], java.lang.Class), var785-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bean/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/882749068=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException, java.lang.String, java.lang.String], void)}
; {var1126=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1064=r0, var1059=r1, var1603=null_type, var3380=java.util.Map, var1178=$r2, var2693=java.lang.Object, var2804=$r3, var197=r4, var785=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException, var504=$r5, var1746=$r6, var3401=$r9, var2502=$r7, var208=$r8, var3005=$r10, var107=$r11, var182=$r12, var3791=$r13, var1222=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1126, r0=var1064, r1=var1059, null_type=var1603, java.util.Map=var3380, $r2=var1178, java.lang.Object=var2693, $r3=var2804, r4=var197, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException=var785, $r5=var504, $r6=var1746, $r9=var3401, $r7=var2502, $r8=var208, $r10=var3005, $r11=var107, $r12=var182, $r13=var3791, $r14=var1222}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeTypes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto return r4;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the \"");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" attribute.");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedAttributeException: void <init>(java.lang.String,java.lang.String)>($r14, r1);	throw $r5
;block_num 2