(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1884 0)
(declare-sort var2844 0)
(declare-sort var2410 0)
(declare-sort var2161 0)
(declare-sort var575 0)
(declare-sort var2769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2161-init () var2161)
(declare-fun var575-init () var575)
(declare-fun <init>/-1705183204 (var575) void)
(declare-fun <init>/-463814248 (var2161 var2769) void)
(declare-fun cast-from-var575-to-var2769 (var575) var2769)
(declare-const null-String String)
(declare-const null-var2844 var2844)
(declare-const null-var2410 var2410)
(declare-const var1628 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1628 null-String)))
(declare-const var2988 var2844) ; Statement: r9 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var2988 null-var2844)))
(declare-const var3631 var2410) ; Statement: r3 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var3631 null-var2410)))
(define-const var1675 String "jasper") ; Statement: $r1 = "jasper" 
(assert true)
(define-const var2806 Bool (equalsIgnoreCase/-92311102 var1675 var1628)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "jasper41" 
(assert (not (= (ite var2806 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2762 var2161 var2161-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.JasperC 
(define-const var3992 var575 var575-init) ; Statement: $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler 
(assert true)
;(assert (<init>/-1705183204 var3992)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: void <init>()>() 

(declare-const var3992!1 var575)
(assert true)
;(assert (<init>/-463814248 var2762 (cast-from-var575-to-var2769 var3992!1))) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.JasperC: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler)>($r8) 

(declare-const var2762!1 var2161)
(declare-const var3992!2 var575)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2161-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.JasperC), var575-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler), <init>/-1705183204=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler], void), <init>/-463814248=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.JasperC, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler], void), cast-from-var575-to-var2769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler)}
; {var1628=r0, var1884=null_type, var2844=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2988=r9, var2410=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var3631=r3, var1675=$r1, var2806=$z0, var2161=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.JasperC, var2762=$r7, var575=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler, var3992=$r8, var2769=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler}
; {r0=var1628, null_type=var1884, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2844, r9=var2988, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var2410, r3=var3631, $r1=var1675, $z0=var2806, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.JasperC=var2161, $r7=var2762, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler=var575, $r8=var3992, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler=var2769}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r9 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	r3 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	$r1 = "jasper";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = "jasper41";	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.JasperC;	$r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler;	specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: void <init>()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.compilers.JasperC: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler)>($r8);	return $r7
;block_num 2