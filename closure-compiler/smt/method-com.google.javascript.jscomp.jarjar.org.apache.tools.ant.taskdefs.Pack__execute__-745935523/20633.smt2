(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2071 0)
(declare-sort var999 0)
(declare-sort var875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/1755945874 (var2071) void)
(declare-fun getSrcResource/99275916 (var2071) var999)
(declare-fun isExists/-1936344525 (var999) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/1668676610 (var999) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1601532580 (var875 String) void)
(declare-fun cast-from-var2071-to-var875 (var2071) var875)
(declare-const null-var2071 var2071)
(declare-const var3209 var2071) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack 
(assert (not (= var3209 null-var2071)))
(assert true)
;(assert (validate/1755945874 var3209)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack: void validate()>() 

(declare-const var3209!1 var2071)
(assert true)
(define-const var1625 var999 (getSrcResource/99275916 var3209!1)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource getSrcResource()>() 
(assert true)
(define-const var2802 Bool (isExists/-1936344525 var1625)) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isExists()>() 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack: java.io.File zipFile> 
(assert (not (not (= (ite var2802 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1920 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1920)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1920!1 String)
(assert (= var1920!1 ""))
(assert true)
(define-const var1661 String (append/672562846 var1920!1 "Nothing to do: ")) ; Statement: $r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Nothing to do: ") 
(declare-const var1920!2 String)
(assert (= var1920!2 (str.++ var1920!1 "Nothing to do: ")))
(assert true)
(define-const var3815 String (toString/1668676610 var1625)) ; Statement: $r17 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>() 
(assert true)
(define-const var1020 String (append/672562846 var1661 var3815)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1661!1 String)
(assert (= var1661!1 (str.++ var1661 var3815)))
(assert true)
(define-const var1646 String (append/672562846 var1020 " doesn\u0027t exist.")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t exist.") 
(declare-const var1020!1 String)
(assert (= var1020!1 (str.++ var1020 " doesn\u0027t exist.")))
(assert true)
(define-const var2882 String (toString/-2075883882 var1646)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1601532580 (cast-from-var2071-to-var875 var3209!1) var2882)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack: void log(java.lang.String)>($r21) 

(declare-const var3209!2 var2071)
(declare-const var2882!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/1755945874=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack], void), getSrcResource/99275916=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), isExists/-1936344525=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/1668676610=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var2071-to-var875=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2071=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack, var3209=r0, var999=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1625=r1, var2802=$z0, var1920=$r22, var1661=$r18, var3815=$r17, var1020=$r19, var1646=$r20, var2882=$r21, var875=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack=var2071, r0=var3209, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var999, r1=var1625, $z0=var2802, $r22=var1920, $r18=var1661, $r17=var3815, $r19=var1020, $r20=var1646, $r21=var2882, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var875}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack: void validate()>();	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource getSrcResource()>();	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isExists()>();	if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack: java.io.File zipFile>;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Nothing to do: ");	$r17 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t exist.");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Pack: void log(java.lang.String)>($r21);	goto [?= return];	return
;block_num 3