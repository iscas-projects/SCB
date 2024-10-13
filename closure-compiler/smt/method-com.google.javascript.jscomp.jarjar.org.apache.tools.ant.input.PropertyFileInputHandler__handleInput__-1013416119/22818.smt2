(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2051 0)
(declare-sort var3061 0)
(declare-sort var652 0)
(declare-sort var1125 0)
(declare-sort var473 0)
(declare-sort var442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readProps/-66664527 (var2051) void)
(declare-fun props/1821311316 (var2051) var652)
(declare-fun getPrompt/-1244253204 (var3061) String)
(declare-fun get/-1721276195 (var473 var1125) var1125)
(declare-fun cast-from-var652-to-var473 (var652) var473)
(declare-fun cast-from-String-to-var1125 (String) var1125)
(declare-fun var442-init () var442)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var442 String) void)
(declare-const null-var2051 var2051)
(declare-const null-var3061 var3061)
(declare-const null-var1125 var1125)
(declare-const var1829 var2051) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler 
(assert (not (= var1829 null-var2051)))
(declare-const var3214 var3061) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest 
(assert (not (= var3214 null-var3061)))
(assert true)
;(assert (readProps/-66664527 var1829)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler: void readProps()>() 

(declare-const var1829!1 var2051)
(define-const var1063 var652 (props/1821311316 var1829!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler: java.util.Properties props> 
(assert true)
(define-const var33 String (getPrompt/-1244253204 var3214)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getPrompt()>() 
(assert true)
(define-const var331 var1125 (get/-1721276195 (cast-from-var652-to-var473 var1063) (cast-from-String-to-var1125 var33))) ; Statement: r4 = virtualinvoke $r2.<java.util.Properties: java.lang.Object get(java.lang.Object)>($r3) 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>() 
(assert (not (not (= var331 null-var1125)))) ; Negate: Cond: r4 != null  
(define-const var3170 var442 var442-init) ; Statement: $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var808 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var808)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var808!1 String)
(assert (= var808!1 ""))
(assert true)
(define-const var2215 String (append/672562846 var808!1 "Unable to find input for \u0027")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find input for \'") 
(declare-const var808!2 String)
(assert (= var808!2 (str.++ var808!1 "Unable to find input for \u0027")))
(assert true)
(define-const var1828 String (getPrompt/-1244253204 var3214)) ; Statement: $r17 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getPrompt()>() 
(assert true)
(define-const var1909 String (append/672562846 var2215 var1828)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2215!1 String)
(assert (= var2215!1 (str.++ var2215 var1828)))
(assert true)
(define-const var1355 String (append/672562846 var1909 "\u0027")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1909!1 String)
(assert (= var1909!1 (str.++ var1909 "\u0027")))
(assert true)
(define-const var833 String (toString/-2075883882 var1355)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3170 var833)) ; Statement: specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r21) 

(declare-const var3170!1 var442)
(declare-const var833!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {readProps/-66664527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler], void), props/1821311316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler], java.util.Properties), getPrompt/-1244253204=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest], java.lang.String), get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-var652-to-var473=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var1125=([java.lang.String], java.lang.Object), var442-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2051=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler, var1829=r0, var3061=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest, var3214=r1, var652=java.util.Properties, var1063=$r2, var33=$r3, var1125=java.lang.Object, var473=java.util.Hashtable, var331=r4, var442=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3170=$r15, var808=$r16, var2215=$r18, var1828=$r17, var1909=$r19, var1355=$r20, var833=$r21}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler=var2051, r0=var1829, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest=var3061, r1=var3214, java.util.Properties=var652, $r2=var1063, $r3=var33, java.lang.Object=var1125, java.util.Hashtable=var473, r4=var331, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var442, $r15=var3170, $r16=var808, $r18=var2215, $r17=var1828, $r19=var1909, $r20=var1355, $r21=var833}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler: void readProps()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.PropertyFileInputHandler: java.util.Properties props>;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getPrompt()>();	r4 = virtualinvoke $r2.<java.util.Properties: java.lang.Object get(java.lang.Object)>($r3);	if r4 != null goto $r5 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>();	$r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find input for \'");	$r17 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getPrompt()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r21);	throw $r15
;block_num 2