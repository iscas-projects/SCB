(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2514 0)
(declare-sort var2417 0)
(declare-sort var1200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var2417) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1200_isJavaIdentifierStart/-1368251299 (Int) Bool)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2514 var2514)
(declare-const null-var2417 var2417)
(declare-const var2417-separatorChar Int)
(declare-const var1753 var2514) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.Jasper41Mangler 
(assert (not (= var1753 null-var2514)))
(declare-const var147 var2417) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var147 null-var2417)))
(assert true)
(define-const var371 String (getAbsolutePath/-802773300 var147)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(define-const var2057 Int var2417-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(define-const var3815 Int (cast-from-Int-to-Int var2057)) ; Statement: $i10 = (int) $c0 
(assert true)
(define-const var3947 Int (lastIndexOf/-1292097097 var371 var3815)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>($i10) 
(define-const var2202 Int (+ var3947 1)) ; Statement: i2 = $i1 + 1 
(define-const var69 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var3275 Int (length/-134980193 var371)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var20 Int (- var3275 var2202)) ; Statement: $i4 = $i3 - i2 
(assert true)
;(assert (<init>/543593434 var69 var20)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var69!1 String)
(declare-const var20!1 Int)
(assert (and true (and (> (str.len var371) var2202) (<= 0 var2202))))
(define-const var3405 Int (charAt/698050440 var371 var2202)) ; Statement: $c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i2) 
(define-const var3643 Bool (var1200_isJavaIdentifierStart/-1368251299 var3405)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c5) 
 ; Statement: if $z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(assert (not (= (ite var3643 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (> (str.len var371) var2202) (<= 0 var2202))))
(define-const var2096 Int (charAt/698050440 var371 var2202)) ; Statement: $c7 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i2) 
(define-const var2838 Int (cast-from-Int-to-Int var2096)) ; Statement: $i11 = (int) $c7 
 ; Statement: if $i11 != 95 goto $r6 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert (not (= var2838 95))) ; Cond: $i11 != 95 
(assert (and true (and (>= var2202 0) (>= (str.len var371) var2202))))
(define-const var1440 String (substring/850833817 var371 var2202)) ; Statement: $r6 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert true)
(define-const var1800 (Array Int Int) (toCharArray/415275702 var1440)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>() 
(define-const var3011 Int (getLength-Arr-Int-1 var1800)) ; Statement: $i8 = lengthof $r7 
(define-const var2062 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= $i8 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2062 var3011)) ; Cond: i9 >= $i8 
(assert true)
(define-const var3120 String (toString/-2075883882 var69!1)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), charAt/698050440=([java.lang.String, int], char), var1200_isJavaIdentifierStart/-1368251299=([char], boolean), substring/850833817=([java.lang.String, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2514=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.Jasper41Mangler, var1753=r5, var2417=java.io.File, var147=r0, var371=r1, var2057=$c0, var3815=$i10, var3947=$i1, var2202=i2, var69=$r8, var3275=$i3, var20=$i4, var3405=$c5, var1200=java.lang.Character, var3643=$z0, var2096=$c7, var2838=$i11, var1440=$r6, var1800=$r7, var3011=$i8, var2062=i9, var3120=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.Jasper41Mangler=var2514, r5=var1753, java.io.File=var2417, r0=var147, r1=var371, $c0=var2057, $i10=var3815, $i1=var3947, i2=var2202, $r8=var69, $i3=var3275, $i4=var20, $c5=var3405, java.lang.Character=var1200, $z0=var3643, $c7=var2096, $i11=var2838, $r6=var1440, $r7=var1800, $i8=var3011, i9=var2062, $r3=var3120}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.Jasper41Mangler;	r0 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	$c0 = <java.io.File: char separatorChar>;	$i10 = (int) $c0;	$i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>($i10);	i2 = $i1 + 1;	$r8 = new java.lang.StringBuilder;	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 - i2;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i4);	$c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i2);	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierStart(char)>($c5);	if $z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$c7 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i2);	$i11 = (int) $c7;	if $i11 != 95 goto $r6 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	$r6 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>();	$i8 = lengthof $r7;	i9 = 0;	if i9 >= $i8 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 5