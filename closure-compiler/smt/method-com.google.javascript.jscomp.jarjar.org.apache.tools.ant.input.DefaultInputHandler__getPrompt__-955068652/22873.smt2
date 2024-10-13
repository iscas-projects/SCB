(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2902 0)
(declare-sort var3722 0)
(declare-sort var3161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPrompt/-1244253204 (var3722) String)
(declare-fun getDefaultValue/962456544 (var3722) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2902 var2902)
(declare-const null-var3722 var3722)
(declare-const null-String String)
(declare-const var3681 var2902) ; Statement: r17 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.DefaultInputHandler 
(assert (not (= var3681 null-var2902)))
(declare-const var1530 var3722) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest 
(assert (not (= var1530 null-var3722)))
(assert true)
(define-const var1586 String (getPrompt/-1244253204 var1530)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getPrompt()>() 
(assert true)
(define-const var2642 String (getDefaultValue/962456544 var1530)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getDefaultValue()>() 
(define-const var1895 Bool false) ; Statement: $z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.MultipleChoiceInputRequest 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1895 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r2 == null goto return r1 
(assert (not (= var2642 null-String))) ; Negate: Cond: r2 == null  
(define-const var3104 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3104)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3104!1 String)
(assert (= var3104!1 ""))
(assert true)
(define-const var1951 String (append/672562846 var3104!1 var1586)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3104!2 String)
(assert (= var3104!2 (str.++ var3104!1 var1586)))
(assert true)
(define-const var3134 String (append/672562846 var1951 " [")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var1951!1 String)
(assert (= var1951!1 (str.++ var1951 " [")))
(assert true)
(define-const var1609 String (append/672562846 var3134 var2642)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3134!1 String)
(assert (= var3134!1 (str.++ var3134 var2642)))
(assert true)
(define-const var3971 String (append/672562846 var1609 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1609!1 String)
(assert (= var1609!1 (str.++ var1609 "]")))
(assert true)
(define-const var1207 String (toString/-2075883882 var3971)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getPrompt/-1244253204=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest], java.lang.String), getDefaultValue/962456544=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2902=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.DefaultInputHandler, var3681=r17, var3722=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest, var1530=r0, var1586=r1, var2642=r2, var1895=$z0, var3161=null_type, var3104=$r3, var1951=$r4, var3134=$r5, var1609=$r6, var3971=$r7, var1207=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.DefaultInputHandler=var2902, r17=var3681, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest=var3722, r0=var1530, r1=var1586, r2=var2642, $z0=var1895, null_type=var3161, $r3=var3104, $r4=var1951, $r5=var3134, $r6=var1609, $r7=var3971, $r8=var1207}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r17 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.DefaultInputHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getPrompt()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getDefaultValue()>();	$z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.MultipleChoiceInputRequest;	if $z0 == 0 goto (branch);	if r2 == null goto return r1;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3