(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1971 0)
(declare-sort var583 0)
(declare-sort var2177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var583-init () var583)
(declare-fun <init>/1766247163 (var583) void)
(declare-fun init/-2107142243 (var583) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getProperty/-1126216426 (var583 String) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2177-init () var2177)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1968226330 (var2177 String) void)
(declare-const null-var1971 var1971)
(declare-const var1529 var1971) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.AntVersion 
(assert (not (= var1529 null-var1971)))
(define-const var107 var583 var583-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert true)
;(assert (<init>/1766247163 var107)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>() 

(declare-const var107!1 var583)
(assert true)
;(assert (init/-2107142243 var107!1)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void init()>() 

(declare-const var107!2 var583)
(define-const var3456 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3456)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3456!1 String)
(assert (= var3456!1 ""))
(define-const var765 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var482 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var3272 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(assert true)
(define-const var2227 String (getProperty/-1126216426 var107!2 "ant.version")) ; Statement: $r2 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version") 
(assert true)
(define-const var1632 (Array Int Int) (toCharArray/415275702 var2227)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(define-const var2472 Int (getLength-Arr-Int-1 var1632)) ; Statement: i0 = lengthof r3 
(define-const var3766 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal 
(assert (>= var3766 var2472)) ; Cond: i2 >= i0 
(define-const var3215 var2177 var2177-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal 
(assert true)
(define-const var3846 String (toString/-2075883882 var3456!1)) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1968226330 var3215 var3846)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal: void <init>(java.lang.String)>($r5) 

(declare-const var3215!1 var2177)
(declare-const var3846!1 String)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var583-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), <init>/1766247163=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), init/-2107142243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), var2177-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1968226330=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal, java.lang.String], void)}
; {var1971=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.AntVersion, var1529=r6, var583=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var107=$r7, var3456=$r8, var765=z1, var482=z4, var3272=z3, var2227=$r2, var1632=r3, var2472=i0, var3766=i2, var2177=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal, var3215=$r9, var3846=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.AntVersion=var1971, r6=var1529, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var583, $r7=var107, $r8=var3456, z1=var765, z4=var482, z3=var3272, $r2=var2227, r3=var1632, i0=var2472, i2=var3766, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal=var2177, $r9=var3215, $r5=var3846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.AntVersion;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void <init>()>();	virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void init()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	z1 = 0;	z4 = 0;	z3 = 0;	$r2 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version");	r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r3;	i2 = 0;	if i2 >= i0 goto $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal;	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal: void <init>(java.lang.String)>($r5);	return $r9
;block_num 3