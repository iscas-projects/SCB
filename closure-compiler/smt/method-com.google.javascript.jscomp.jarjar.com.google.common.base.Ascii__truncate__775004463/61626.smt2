(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var866 0)
(declare-sort var1852 0)
(declare-sort var1884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1852_checkNotNull/1446102589 (var1884) var1884)
(declare-fun cast-from-String-to-var1884 (String) var1884)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1852_checkArgument/212320487 (Bool String Int Int) void)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1811 String) ; Statement: r6 := @parameter0: java.lang.CharSequence 
(assert (not (= var1811 null-String)))
(declare-const var1423 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1423 null-Int)))
(declare-const var3257 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3257 null-String)))
;(assert (var1852_checkNotNull/1446102589 (cast-from-String-to-var1884 var1811))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r6) 

(declare-const var1811!1 String)
(assert true)
(define-const var3328 Int (length/-134980193 var3257)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3768 Int (- var1423 var3328)) ; Statement: i2 = i0 - $i1 
 ; Statement: if i2 < 0 goto $z0 = 0 
(assert (not (< var3768 0))) ; Negate: Cond: i2 < 0  
(define-const var2915 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= $i3 = virtualinvoke r0.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var411 Int (length/-134980193 var3257)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
;(assert (var1852_checkArgument/212320487 var2915 "maxLength (%s) must be >= length of the truncation indicator (%s)" var1423 var411)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,int,int)>($z0, "maxLength (%s) must be >= length of the truncation indicator (%s)", i0, $i3) 

(declare-const var2915!1 Bool)
(declare-const var1105 String)
(declare-const var1423!1 Int)
(declare-const var411!1 Int)
(define-const var1515 Int (String_length/-667254855 var1811!1)) ; Statement: $i4 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var1515 var1423!1)) ; Cond: $i4 > i0 
(define-const var3651 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3651 var1423!1)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i0) 

(declare-const var3651!1 String)
(declare-const var1423!2 Int)
(assert true)
(define-const var684 String (append/50905802 var3651!1 var1811!1 0 var3768)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r6, 0, i2) 
(declare-const var3651!2 String)
(assert (str.prefixof var3651!1 var3651!2))
(assert true)
(define-const var3582 String (append/672562846 var684 var3257)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var684!1 String)
(assert (= var684!1 (str.++ var684 var3257)))
(assert true)
(define-const var2158 String (toString/-2075883882 var3582)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1852_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1884=([java.lang.CharSequence], java.lang.Object), length/-134980193=([java.lang.String], int), var1852_checkArgument/212320487=([boolean, java.lang.String, int, int], void), String_length/-667254855=([java.lang.CharSequence], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1811=r6, var1423=i0, var3257=r0, var866=null_type, var1852=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1884=java.lang.Object, var3328=$i1, var3768=i2, var2915=$z0, var411=$i3, var1105="maxLength (%s) must be >= length of the truncation indicator (%s)", var1515=$i4, var3651=$r1, var684=$r2, var3582=$r3, var2158=$r4}
; {r6=var1811, i0=var1423, r0=var3257, null_type=var866, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1852, java.lang.Object=var1884, $i1=var3328, i2=var3768, $z0=var2915, $i3=var411, "maxLength (%s) must be >= length of the truncation indicator (%s)"=var1105, $i4=var1515, $r1=var3651, $r2=var684, $r3=var3582, $r4=var2158}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	r0 := @parameter2: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r6);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = i0 - $i1;	if i2 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= $i3 = virtualinvoke r0.<java.lang.String: int length()>()];	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,int,int)>($z0, "maxLength (%s) must be >= length of the truncation indicator (%s)", i0, $i3);	$i4 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if $i4 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r6, 0, i2);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4