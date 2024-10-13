(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2910 0)
(declare-sort var1427 0)
(declare-sort var154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun namespace/374023441 (var2910) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/374023441 (var2910) String)
(declare-fun file/374023441 (var2910) var154)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2910 var2910)
(declare-const null-String String)
(declare-const null-var154 var154)
(declare-const var3233 var2910) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var3233 null-var2910)))
(define-const var2475 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2475)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2475!1 String)
(assert (= var2475!1 ""))
(define-const var3415 String (namespace/374023441 var3233)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r2 != null goto $r18 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (= var3415 null-String))) ; Cond: $r2 != null 
(define-const var739 String (namespace/374023441 var3233)) ; Statement: $r18 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert true) ; Non Conditional
(assert true)
(define-const var2434 String (append/672562846 var2475!1 var739)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2475!2 String)
(assert (= var2475!2 (str.++ var2475!1 var739)))
(define-const var859 String (url/374023441 var3233)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (not (= var859 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var55 String "") ; Statement: $r19 = "" 
 ; Statement: goto [?= $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3856 String (append/672562846 var2434 var55)) ; Statement: $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2434!1 String)
(assert (= var2434!1 (str.++ var2434 var55)))
(define-const var3147 var154 (file/374023441 var3233)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (not (= var3147 null-var154)))) ; Negate: Cond: $r9 != null  
(define-const var2949 String "") ; Statement: $r20 = "" 
 ; Statement: goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1841 String (append/672562846 var3856 var2949)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3856!1 String)
(assert (= var3856!1 (str.++ var3856 var2949)))
(assert true)
(define-const var2168 String (toString/-2075883882 var1841)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2910=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var3233=r1, var2475=$r0, var3415=$r2, var1427=null_type, var739=$r18, var2434=$r8, var859=$r3, var55=$r19, var3856=$r15, var154=java.io.File, var3147=$r9, var2949=$r20, var1841=$r16, var2168=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var2910, r1=var3233, $r0=var2475, $r2=var3415, null_type=var1427, $r18=var739, $r8=var2434, $r3=var859, $r19=var55, $r15=var3856, java.io.File=var154, $r9=var3147, $r20=var2949, $r16=var1841, $r17=var2168}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r2 != null goto $r18 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r18 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r19 = "";	goto [?= $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r9 != null goto $r10 = new java.lang.StringBuilder;	$r20 = "";	goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 7