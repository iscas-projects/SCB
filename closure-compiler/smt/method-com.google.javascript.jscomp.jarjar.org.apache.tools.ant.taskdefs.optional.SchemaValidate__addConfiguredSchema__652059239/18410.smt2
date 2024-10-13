(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1010 0)
(declare-sort var2475 0)
(declare-sort var1866 0)
(declare-sort var1830 0)
(declare-sort var1278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1866) String)
(declare-fun cast-from-var2475-to-var1866 (var2475) var1866)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1830 String Int) void)
(declare-fun cast-from-var1010-to-var1830 (var1010) var1830)
(declare-fun validateNamespace/-1825943151 (var2475) void)
(declare-fun schemaLocations/-532365943 (var1010) var1278)
(declare-fun getNamespace/-26586096 (var2475) String)
(declare-fun var1278_get/1088891777 (var1278 var1866) var1866)
(declare-fun cast-from-String-to-var1866 (String) var1866)
(declare-fun cast-from-var1866-to-var2475 (var1866) var2475)
(declare-fun var1278_put/1464166817 (var1278 var1866 var1866) var1866)
(declare-const null-var1010 var1010)
(declare-const null-var2475 var2475)
(declare-const var725 var1010) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate 
(assert (not (= var725 null-var1010)))
(declare-const var2837 var2475) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var2837 null-var2475)))
(define-const var2094 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2094)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2094!1 String)
(assert (= var2094!1 ""))
(assert true)
(define-const var1380 String (append/672562846 var2094!1 "adding schema ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("adding schema ") 
(declare-const var2094!2 String)
(assert (= var2094!2 (str.++ var2094!1 "adding schema ")))
(assert true)
(define-const var1734 String (append/-1031950772 var1380 (cast-from-var2475-to-var1866 var2837))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1380!1 String)
(assert (str.prefixof var1380 var1380!1))
(assert true)
(define-const var1676 String (toString/-2075883882 var1734)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1010-to-var1830 var725) var1676 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r5, 4) 

(declare-const var725!1 var1010)
(declare-const var1676!1 String)
(declare-const var1345 Int)
(assert true)
;(assert (validateNamespace/-1825943151 var2837)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: void validateNamespace()>() 

(declare-const var2837!1 var2475)
(define-const var436 var1278 (schemaLocations/-532365943 var725!1)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: java.util.Map schemaLocations> 
(assert true)
(define-const var2895 String (getNamespace/-26586096 var2837!1)) ; Statement: $r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String getNamespace()>() 
(define-const var3777 var1866 (var1278_get/1088891777 var436 (cast-from-String-to-var1866 var2895))) ; Statement: $r8 = interfaceinvoke $r6.<java.util.Map: java.lang.Object get(java.lang.Object)>($r7) 
(define-const var3299 var2475 (cast-from-var1866-to-var2475 var3777)) ; Statement: r9 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation) $r8 
 ; Statement: if r9 == null goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: java.util.Map schemaLocations> 
(assert (= var3299 null-var2475)) ; Cond: r9 == null 
(define-const var1097 var1278 (schemaLocations/-532365943 var725!1)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: java.util.Map schemaLocations> 
(assert true)
(define-const var1743 String (getNamespace/-26586096 var2837!1)) ; Statement: $r11 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String getNamespace()>() 
;(assert (var1278_put/1464166817 var1097 (cast-from-String-to-var1866 var1743) (cast-from-var2475-to-var1866 var2837!1))) ; Statement: interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, r2) 

(declare-const var1097!1 var1278)
(declare-const var1743!1 String)
(declare-const var2837!2 var2475)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2475-to-var1866=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1010-to-var1830=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), validateNamespace/-1825943151=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], void), schemaLocations/-532365943=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate], java.util.Map), getNamespace/-26586096=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), var1278_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1866=([java.lang.String], java.lang.Object), cast-from-var1866-to-var2475=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation), var1278_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object)}
; {var1010=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate, var725=r0, var2475=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var2837=r2, var2094=$r1, var1380=$r3, var1866=java.lang.Object, var1734=$r4, var1676=$r5, var1830=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1345=4, var1278=java.util.Map, var436=$r6, var2895=$r7, var3777=$r8, var3299=r9, var1097=$r10, var1743=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate=var1010, r0=var725, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var2475, r2=var2837, $r1=var2094, $r3=var1380, java.lang.Object=var1866, $r4=var1734, $r5=var1676, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1830, 4=var1345, java.util.Map=var1278, $r6=var436, $r7=var2895, $r8=var3777, r9=var3299, $r10=var1097, $r11=var1743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("adding schema ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r5, 4);	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: void validateNamespace()>();	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: java.util.Map schemaLocations>;	$r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String getNamespace()>();	$r8 = interfaceinvoke $r6.<java.util.Map: java.lang.Object get(java.lang.Object)>($r7);	r9 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation) $r8;	if r9 == null goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: java.util.Map schemaLocations>;	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: java.util.Map schemaLocations>;	$r11 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String getNamespace()>();	interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, r2);	return
;block_num 2