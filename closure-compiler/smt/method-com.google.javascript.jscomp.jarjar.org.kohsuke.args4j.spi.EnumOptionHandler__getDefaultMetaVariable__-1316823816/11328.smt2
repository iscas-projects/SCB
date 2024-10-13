(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3247 0)
(declare-sort var2180 0)
(declare-sort var3139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun enumType/-813887360 (var3247) ClassObject)
(declare-fun getEnumConstants/1422352872 (ClassObject) (Array Int var2180))
(declare-fun cast-from-__Array__Int__var2180__-to-__Array__Int__var3139__ ((Array Int var2180)) (Array Int var3139))
(declare-fun getLength-Arr-var3139-1 ((Array Int var3139)) Int)
(declare-fun length/-1112840705 (String) Int)
(declare-fun delete/-2415906 (String Int Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3247 var3247)
(declare-const var218 var3247) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler 
(assert (not (= var218 null-var3247)))
(define-const var2463 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2463)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2463!1 String)
(assert true)
;(assert (append/1560614132 var2463!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("[") 
(declare-const var2463!2 String)
(assert (str.prefixof var2463!1 var2463!2))
(define-const var2290 ClassObject (enumType/-813887360 var218)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler: java.lang.Class enumType> 
(assert true)
(define-const var2857 (Array Int var2180) (getEnumConstants/1422352872 var2290)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.Object[] getEnumConstants()>() 
(define-const var3233 (Array Int var3139) (cast-from-__Array__Int__var2180__-to-__Array__Int__var3139__ var2857)) ; Statement: r4 = (java.lang.Enum[]) $r3 
(define-const var3660 Int (getLength-Arr-var3139-1 var3233)) ; Statement: i0 = lengthof r4 
(define-const var547 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $i1 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>() 
(assert (>= var547 var3660)) ; Cond: i4 >= i0 
(assert true)
(define-const var3457 Int (length/-1112840705 var2463!2)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>() 
(define-const var598 Int (- var3457 3)) ; Statement: $i3 = $i1 - 3 
(assert true)
(define-const var1459 Int (length/-1112840705 var2463!2)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>() 
(assert true)
;(assert (delete/-2415906 var2463!2 var598 var1459)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>($i3, $i2) 

(declare-const var2463!3 String)
(declare-const var598!1 Int)
(declare-const var1459!1 Int)
(assert true)
;(assert (append/1560614132 var2463!3 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var2463!4 String)
(assert (str.prefixof var2463!3 var2463!4))
(assert true)
(define-const var3438 String (toString/-222306083 var2463!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), enumType/-813887360=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler], java.lang.Class), getEnumConstants/1422352872=([java.lang.Class], java.lang.Object[]), cast-from-__Array__Int__var2180__-to-__Array__Int__var3139__=([java.lang.Object[]], java.lang.Enum[]), getLength-Arr-var3139-1=([java.lang.Enum[]], int), length/-1112840705=([java.lang.StringBuffer], int), delete/-2415906=([java.lang.StringBuffer, int, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3247=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler, var218=r1, var2463=$r0, var2290=$r2, var2180=java.lang.Object, var2857=$r3, var3139=java.lang.Enum, var3233=r4, var3660=i0, var547=i4, var3457=$i1, var598=$i3, var1459=$i2, var3438=$r5}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler=var3247, r1=var218, $r0=var2463, $r2=var2290, java.lang.Object=var2180, $r3=var2857, java.lang.Enum=var3139, r4=var3233, i0=var3660, i4=var547, $i1=var3457, $i3=var598, $i2=var1459, $r5=var3438}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: int length()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("[");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler: java.lang.Class enumType>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.Object[] getEnumConstants()>();	r4 = (java.lang.Enum[]) $r3;	i0 = lengthof r4;	i4 = 0;	if i4 >= i0 goto $i1 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>();	$i1 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>();	$i3 = $i1 - 3;	$i2 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>($i3, $i2);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r5 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r5
;block_num 3