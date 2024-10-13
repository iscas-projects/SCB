(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2498 0)
(declare-sort var2710 0)
(declare-sort var1300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stripExtension/245859216 (var2498 var2710) String)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1300_isJavaIdentifierStart/-1368251299 (Int) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2498 var2498)
(declare-const null-var2710 var2710)
(declare-const var2498-keywords (Array Int String))
(declare-const var1999 var2498) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler 
(assert (not (= var1999 null-var2498)))
(declare-const var1201 var2710) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1201 null-var2710)))
(assert true)
(define-const var797 String (stripExtension/245859216 var1999 var1201)) ; Statement: r11 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: java.lang.String stripExtension(java.io.File)>(r1) 
(define-const var2218 (Array Int String) var2498-keywords) ; Statement: r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: java.lang.String[] keywords> 
(define-const var2625 Int (getLength-Arr-String-1 var2218)) ; Statement: i4 = lengthof r12 
(define-const var816 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i4 goto $r2 = new java.lang.StringBuilder 
(assert (>= var816 var2625)) ; Cond: i5 >= i4 
(define-const var3472 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var1026 Int (length/-134980193 var797)) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var3472 var1026)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var3472!1 String)
(declare-const var1026!1 Int)
(assert (and true (and (> (str.len var797) 0) (<= 0 0))))
(define-const var1948 Int (charAt/698050440 var797 0)) ; Statement: $c3 = virtualinvoke r11.<java.lang.String: char charAt(int)>(0) 
(define-const var1781 Bool (var1300_isJavaIdentifierStart/-1368251299 var1948)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c3) 
 ; Statement: if $z0 == 0 goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: java.lang.String mangleChar(char)>($c3) 
(assert (not (= (ite var1781 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/-1166366385 var3472!1 var1948)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var3472!2 String)
(assert (str.prefixof var3472!1 var3472!2))
 ; Statement: goto [?= $r4 = virtualinvoke r11.<java.lang.String: java.lang.String substring(int)>(1)] 
(assert true) ; Non Conditional
(assert (and true (and (>= 1 0) (>= (str.len var797) 1))))
(define-const var3533 String (substring/850833817 var797 1)) ; Statement: $r4 = virtualinvoke r11.<java.lang.String: java.lang.String substring(int)>(1) 
(assert true)
(define-const var3536 (Array Int Int) (toCharArray/415275702 var3533)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
(define-const var2191 Int (getLength-Arr-Int-1 var3536)) ; Statement: $i2 = lengthof $r7 
(define-const var1143 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= $i2 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1143 var2191)) ; Cond: i6 >= $i2 
(assert true)
(define-const var3015 String (toString/-2075883882 var3472!2)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {stripExtension/245859216=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler, java.io.File], java.lang.String), getLength-Arr-String-1=([java.lang.String[]], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), charAt/698050440=([java.lang.String, int], char), var1300_isJavaIdentifierStart/-1368251299=([char], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2498=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler, var1999=r0, var2710=java.io.File, var1201=r1, var797=r11, var2218=r12, var2625=i4, var816=i5, var3472=$r2, var1026=$i0, var1948=$c3, var1300=java.lang.Character, var1781=$z0, var3533=$r4, var3536=$r7, var2191=$i2, var1143=i6, var3015=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler=var2498, r0=var1999, java.io.File=var2710, r1=var1201, r11=var797, r12=var2218, i4=var2625, i5=var816, $r2=var3472, $i0=var1026, $c3=var1948, java.lang.Character=var1300, $z0=var1781, $r4=var3533, $r7=var3536, $i2=var2191, i6=var1143, $r5=var3015}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler;	r1 := @parameter0: java.io.File;	r11 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: java.lang.String stripExtension(java.io.File)>(r1);	r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: java.lang.String[] keywords>;	i4 = lengthof r12;	i5 = 0;	if i5 >= i4 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r11.<java.lang.String: int length()>();	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0);	$c3 = virtualinvoke r11.<java.lang.String: char charAt(int)>(0);	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c3);	if $z0 == 0 goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspNameMangler: java.lang.String mangleChar(char)>($c3);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	goto [?= $r4 = virtualinvoke r11.<java.lang.String: java.lang.String substring(int)>(1)];	$r4 = virtualinvoke r11.<java.lang.String: java.lang.String substring(int)>(1);	$r7 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	$i2 = lengthof $r7;	i6 = 0;	if i6 >= $i2 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 7