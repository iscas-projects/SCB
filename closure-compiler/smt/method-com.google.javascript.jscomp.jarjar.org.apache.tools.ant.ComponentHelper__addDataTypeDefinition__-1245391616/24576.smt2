(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var1721 0)
(declare-sort var206 0)
(declare-sort var2059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var206-init () var206)
(declare-fun <init>/1332227990 (var206) void)
(declare-fun setName/1519871178 (var206 String) void)
(declare-fun setClass/-794693156 (var206 ClassObject) void)
(declare-fun updateDataTypeDefinition/-2057201708 (var1131 var206) void)
(declare-fun project/-1909293844 (var1131) var2059)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var2059 String Int) void)
(declare-const null-var1131 var1131)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2707 var1131) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var2707 null-var1131)))
(declare-const var598 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var598 null-String)))
(declare-const var1554 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var1554 null-ClassObject)))
(define-const var13 var206 var206-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert true)
;(assert (<init>/1332227990 var13)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: void <init>()>() 

(declare-const var13!1 var206)
(assert true)
;(assert (setName/1519871178 var13!1 var598)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: void setName(java.lang.String)>(r1) 

(declare-const var13!2 var206)
(declare-const var598!1 String)
(assert true)
;(assert (setClass/-794693156 var13!2 var1554)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: void setClass(java.lang.Class)>(r2) 

(declare-const var13!3 var206)
(declare-const var1554!1 ClassObject)
(assert true)
;(assert (updateDataTypeDefinition/-2057201708 var2707 var13!3)) ; Statement: specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void updateDataTypeDefinition(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition)>($r0) 

(declare-const var2707!1 var1131)
(declare-const var13!4 var206)
(define-const var160 var2059 (project/-1909293844 var2707!1)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(define-const var3824 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3824)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3824!1 String)
(assert (= var3824!1 ""))
(assert true)
(define-const var2381 String (append/672562846 var3824!1 " +User datatype: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" +User datatype: ") 
(declare-const var3824!2 String)
(assert (= var3824!2 (str.++ var3824!1 " +User datatype: ")))
(assert true)
(define-const var514 String (append/672562846 var2381 var598!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2381!1 String)
(assert (= var2381!1 (str.++ var2381 var598!1)))
(assert true)
(define-const var1384 String (append/672562846 var514 "     ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("     ") 
(declare-const var514!1 String)
(assert (= var514!1 (str.++ var514 "     ")))
(assert true)
(define-const var3359 String (getName/-1958580599 var1554!1)) ; Statement: $r8 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var455 String (append/672562846 var1384 var3359)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1384!1 String)
(assert (= var1384!1 (str.++ var1384 var3359)))
(assert true)
(define-const var2845 String (toString/-2075883882 var455)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var160 var2845 4)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r11, 4) 

(declare-const var160!1 var2059)
(declare-const var2845!1 String)
(declare-const var166 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var206-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition), <init>/1332227990=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], void), setName/1519871178=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, java.lang.String], void), setClass/-794693156=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, java.lang.Class], void), updateDataTypeDefinition/-2057201708=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], void), project/-1909293844=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void)}
; {var1131=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var2707=r3, var598=r1, var1721=null_type, var1554=r2, var206=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var13=$r0, var2059=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var160=$r5, var3824=$r4, var2381=$r6, var514=$r7, var1384=$r9, var3359=$r8, var455=$r10, var2845=$r11, var166=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var1131, r3=var2707, r1=var598, null_type=var1721, r2=var1554, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var206, $r0=var13, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2059, $r5=var160, $r4=var3824, $r6=var2381, $r7=var514, $r9=var1384, $r8=var3359, $r10=var455, $r11=var2845, 4=var166}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Class;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: void <init>()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: void setName(java.lang.String)>(r1);	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: void setClass(java.lang.Class)>(r2);	specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: void updateDataTypeDefinition(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition)>($r0);	$r5 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" +User datatype: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("     ");	$r8 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r11, 4);	return
;block_num 1