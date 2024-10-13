(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var967 0)
(declare-sort var1290 0)
(declare-sort var3507 0)
(declare-sort var1688 0)
(declare-sort var3087 0)
(declare-sort var2880 0)
(declare-sort var2180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3507-init () var3507)
(declare-fun <init>/-549315589 (var3507) void)
(declare-fun var1290-init () var1290)
(declare-fun <init>/-849847095 (var1290) void)
(declare-fun var1688-init () var1688)
(declare-fun <init>/995032529 (var1688) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun get/-1721276195 (var1290 var3087) var3087)
(declare-fun cast-from-String-to-var3087 (String) var3087)
(declare-fun cast-from-var3087-to-String (var3087) String)
(declare-fun var2180-init () var2180)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2180 String) void)
(declare-const null-var967 var967)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1290 var1290)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var129 var967) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var129 null-var967)))
(declare-const var1962 (Array Int String)) ; Statement: r3 := @parameter0: java.lang.String[] 
(assert (not (= var1962 null-__Array__Int__String__)))
(declare-const var2640 var1290) ; Statement: r17 := @parameter1: java.util.Hashtable 
(assert (not (= var2640 null-var1290)))
(declare-const var1539 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1539 null-Bool)))
(define-const var2397 var3507 var3507-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.VectorSet 
(assert true)
;(assert (<init>/-549315589 var2397)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.VectorSet: void <init>()>() 

(declare-const var2397!1 var3507)
(define-const var3111 var1290 var1290-init) ; Statement: $r1 = new java.util.Hashtable 
(assert true)
;(assert (<init>/-849847095 var3111)) ; Statement: specialinvoke $r1.<java.util.Hashtable: void <init>()>() 

(declare-const var3111!1 var1290)
(define-const var94 var1688 var1688-init) ; Statement: $r2 = new java.util.Stack 
(assert true)
;(assert (<init>/995032529 var94)) ; Statement: specialinvoke $r2.<java.util.Stack: void <init>()>() 

(declare-const var94!1 var1688)
(define-const var3133 Int (getLength-Arr-String-1 var1962)) ; Statement: i0 = lengthof r3 
(define-const var289 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r5 = new java.lang.StringBuilder 
(assert (not (>= var289 var3133))) ; Negate: Cond: i1 >= i0  
(define-const var1234 String (select var1962 var289)) ; Statement: r38 = r3[i1] 
(assert true)
(define-const var394 var3087 (get/-1721276195 var3111!1 (cast-from-String-to-var3087 var1234))) ; Statement: $r31 = virtualinvoke $r1.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r38) 
(define-const var3948 String (cast-from-var3087-to-String var394)) ; Statement: r32 = (java.lang.String) $r31 
 ; Statement: if r32 != null goto (branch) 
(assert (not (= var3948 null-String))) ; Cond: r32 != null 
 ; Statement: if r32 != "VISITING" goto i1 = i1 + 1 
(assert (not (not (= var3948 "VISITING")))) ; Negate: Cond: r32 != "VISITING"  
(define-const var3272 var2180 var2180-init) ; Statement: $r33 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1603 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1603)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1603!1 String)
(assert (= var1603!1 ""))
(assert true)
(define-const var2017 String (append/672562846 var1603!1 "Unexpected node in visiting state: ")) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected node in visiting state: ") 
(declare-const var1603!2 String)
(assert (= var1603!2 (str.++ var1603!1 "Unexpected node in visiting state: ")))
(assert true)
(define-const var903 String (append/672562846 var2017 var1234)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38) 
(declare-const var2017!1 String)
(assert (= var2017!1 (str.++ var2017 var1234)))
(assert true)
(define-const var3909 String (toString/-2075883882 var903)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3272 var3909)) ; Statement: specialinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r37) 

(declare-const var3272!1 var2180)
(declare-const var3909!1 String)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var3507-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.VectorSet), <init>/-549315589=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.VectorSet], void), var1290-init=([], java.util.Hashtable), <init>/-849847095=([java.util.Hashtable], void), var1688-init=([], java.util.Stack), <init>/995032529=([java.util.Stack], void), getLength-Arr-String-1=([java.lang.String[]], int), get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var3087=([java.lang.String], java.lang.Object), cast-from-var3087-to-String=([java.lang.Object], java.lang.String), var2180-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var967=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var129=r4, var1962=r3, var1290=java.util.Hashtable, var2640=r17, var1539=z0, var3507=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.VectorSet, var2397=$r0, var3111=$r1, var1688=java.util.Stack, var94=$r2, var3133=i0, var289=i1, var1234=r38, var3087=java.lang.Object, var394=$r31, var3948=r32, var2880=null_type, var2180=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3272=$r33, var1603=$r34, var2017=$r35, var903=$r36, var3909=$r37}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var967, r4=var129, r3=var1962, java.util.Hashtable=var1290, r17=var2640, z0=var1539, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.VectorSet=var3507, $r0=var2397, $r1=var3111, java.util.Stack=var1688, $r2=var94, i0=var3133, i1=var289, r38=var1234, java.lang.Object=var3087, $r31=var394, r32=var3948, null_type=var2880, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2180, $r33=var3272, $r34=var1603, $r35=var2017, $r36=var903, $r37=var3909}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r3 := @parameter0: java.lang.String[];	r17 := @parameter1: java.util.Hashtable;	z0 := @parameter2: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.VectorSet;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.VectorSet: void <init>()>();	$r1 = new java.util.Hashtable;	specialinvoke $r1.<java.util.Hashtable: void <init>()>();	$r2 = new java.util.Stack;	specialinvoke $r2.<java.util.Stack: void <init>()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto $r5 = new java.lang.StringBuilder;	r38 = r3[i1];	$r31 = virtualinvoke $r1.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r38);	r32 = (java.lang.String) $r31;	if r32 != null goto (branch);	if r32 != "VISITING" goto i1 = i1 + 1;	$r33 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected node in visiting state: ");	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r37);	throw $r33
;block_num 5