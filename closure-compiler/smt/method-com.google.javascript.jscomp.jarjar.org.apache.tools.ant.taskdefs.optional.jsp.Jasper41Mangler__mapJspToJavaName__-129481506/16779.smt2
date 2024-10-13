(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3406 0)
(declare-sort var2216 0)
(declare-sort var1075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var2216) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1075_isJavaIdentifierStart/-1368251299 (Int) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3406 var3406)
(declare-const null-var2216 var2216)
(declare-const var2216-separatorChar Int)
(declare-const var1811 var3406) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.Jasper41Mangler 
(assert (not (= var1811 null-var3406)))
(declare-const var239 var2216) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var239 null-var2216)))
(assert true)
(define-const var2231 String (getAbsolutePath/-802773300 var239)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(define-const var1955 Int var2216-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(define-const var37 Int (cast-from-Int-to-Int var1955)) ; Statement: $i10 = (int) $c0 
(assert true)
(define-const var482 Int (lastIndexOf/-1292097097 var2231 var37)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>($i10) 
(define-const var3489 Int (+ var482 1)) ; Statement: i2 = $i1 + 1 
(define-const var827 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var3864 Int (length/-134980193 var2231)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var920 Int (- var3864 var3489)) ; Statement: $i4 = $i3 - i2 
(assert true)
;(assert (<init>/543593434 var827 var920)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var827!1 String)
(declare-const var920!1 Int)
(assert (and true (and (> (str.len var2231) var3489) (<= 0 var3489))))
(define-const var1359 Int (charAt/698050440 var2231 var3489)) ; Statement: $c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i2) 
(define-const var1173 Bool (var1075_isJavaIdentifierStart/-1368251299 var1359)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c5) 
 ; Statement: if $z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(assert (= (ite var1173 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var827!1 95)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var827!2 String)
(assert (str.prefixof var827!1 var827!2))
(assert true) ; Non Conditional
(assert (and true (and (>= var3489 0) (>= (str.len var2231) var3489))))
(define-const var3856 String (substring/850833817 var2231 var3489)) ; Statement: $r6 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert true)
(define-const var648 (Array Int Int) (toCharArray/415275702 var3856)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>() 
(define-const var3715 Int (getLength-Arr-Int-1 var648)) ; Statement: $i8 = lengthof $r7 
(define-const var3202 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= $i8 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3202 var3715)) ; Cond: i9 >= $i8 
(assert true)
(define-const var1788 String (toString/-2075883882 var827!2)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), charAt/698050440=([java.lang.String, int], char), var1075_isJavaIdentifierStart/-1368251299=([char], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3406=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.Jasper41Mangler, var1811=r5, var2216=java.io.File, var239=r0, var2231=r1, var1955=$c0, var37=$i10, var482=$i1, var3489=i2, var827=$r8, var3864=$i3, var920=$i4, var1359=$c5, var1075=java.lang.Character, var1173=$z0, var3856=$r6, var648=$r7, var3715=$i8, var3202=i9, var1788=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.Jasper41Mangler=var3406, r5=var1811, java.io.File=var2216, r0=var239, r1=var2231, $c0=var1955, $i10=var37, $i1=var482, i2=var3489, $r8=var827, $i3=var3864, $i4=var920, $c5=var1359, java.lang.Character=var1075, $z0=var1173, $r6=var3856, $r7=var648, $i8=var3715, i9=var3202, $r3=var1788}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.Jasper41Mangler;	r0 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	$c0 = <java.io.File: char separatorChar>;	$i10 = (int) $c0;	$i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>($i10);	i2 = $i1 + 1;	$r8 = new java.lang.StringBuilder;	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 - i2;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i4);	$c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i2);	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c5);	if $z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r6 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>();	$i8 = lengthof $r7;	i9 = 0;	if i9 >= $i8 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 5