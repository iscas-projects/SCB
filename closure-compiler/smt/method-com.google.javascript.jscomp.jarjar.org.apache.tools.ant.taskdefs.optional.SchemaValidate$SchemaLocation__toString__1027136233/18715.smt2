(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3522 0)
(declare-sort var1451 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun namespace/374023441 (var3522) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/374023441 (var3522) String)
(declare-fun file/374023441 (var3522) var2616)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3522 var3522)
(declare-const null-String String)
(declare-const null-var2616 var2616)
(declare-const var1134 var3522) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var1134 null-var3522)))
(define-const var1932 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1932)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1932!1 String)
(assert (= var1932!1 ""))
(define-const var414 String (namespace/374023441 var1134)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r2 != null goto $r18 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (not (= var414 null-String)))) ; Negate: Cond: $r2 != null  
(define-const var695 String "(anonymous)") ; Statement: $r18 = "(anonymous)" 
 ; Statement: goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3432 String (append/672562846 var1932!1 var695)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1932!2 String)
(assert (= var1932!2 (str.++ var1932!1 var695)))
(define-const var2081 String (url/374023441 var1134)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var2081 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var3991 String "") ; Statement: $r19 = "" 
 ; Statement: goto [?= $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var415 String (append/672562846 var3432 var3991)) ; Statement: $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3432!1 String)
(assert (= var3432!1 (str.++ var3432 var3991)))
(define-const var3907 var2616 (file/374023441 var1134)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (not (= var3907 null-var2616)))) ; Negate: Cond: $r9 != null  
(define-const var707 String "") ; Statement: $r20 = "" 
 ; Statement: goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3250 String (append/672562846 var415 var707)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var415!1 String)
(assert (= var415!1 (str.++ var415 var707)))
(assert true)
(define-const var123 String (toString/-2075883882 var3250)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3522=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var1134=r1, var1932=$r0, var414=$r2, var1451=null_type, var695=$r18, var3432=$r8, var2081=$r3, var3991=$r19, var415=$r15, var2616=java.io.File, var3907=$r9, var707=$r20, var3250=$r16, var123=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var3522, r1=var1134, $r0=var1932, $r2=var414, null_type=var1451, $r18=var695, $r8=var3432, $r3=var2081, $r19=var3991, $r15=var415, java.io.File=var2616, $r9=var3907, $r20=var707, $r16=var3250, $r17=var123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r2 != null goto $r18 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r18 = "(anonymous)";	goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)];	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r19 = "";	goto [?= $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r9 != null goto $r10 = new java.lang.StringBuilder;	$r20 = "";	goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 7