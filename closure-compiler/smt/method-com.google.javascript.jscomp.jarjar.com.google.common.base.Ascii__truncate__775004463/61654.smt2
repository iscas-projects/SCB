(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1710 0)
(declare-sort var2108 0)
(declare-sort var2837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2108_checkNotNull/1446102589 (var2837) var2837)
(declare-fun cast-from-String-to-var2837 (String) var2837)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2108_checkArgument/212320487 (Bool String Int Int) void)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3259 String) ; Statement: r6 := @parameter0: java.lang.CharSequence 
(assert (not (= var3259 null-String)))
(declare-const var1200 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1200 null-Int)))
(declare-const var146 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var146 null-String)))
;(assert (var2108_checkNotNull/1446102589 (cast-from-String-to-var2837 var3259))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r6) 

(declare-const var3259!1 String)
(assert true)
(define-const var2214 Int (length/-134980193 var146)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1444 Int (- var1200 var2214)) ; Statement: i2 = i0 - $i1 
 ; Statement: if i2 < 0 goto $z0 = 0 
(assert (< var1444 0)) ; Cond: i2 < 0 
(define-const var3752 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2084 Int (length/-134980193 var146)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
;(assert (var2108_checkArgument/212320487 var3752 "maxLength (%s) must be >= length of the truncation indicator (%s)" var1200 var2084)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,int,int)>($z0, "maxLength (%s) must be >= length of the truncation indicator (%s)", i0, $i3) 

(declare-const var3752!1 Bool)
(declare-const var1546 String)
(declare-const var1200!1 Int)
(declare-const var2084!1 Int)
(define-const var2073 Int (String_length/-667254855 var3259!1)) ; Statement: $i4 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var2073 var1200!1)) ; Cond: $i4 > i0 
(define-const var3595 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3595 var1200!1)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i0) 

(declare-const var3595!1 String)
(declare-const var1200!2 Int)
(assert true)
(define-const var1242 String (append/50905802 var3595!1 var3259!1 0 var1444)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r6, 0, i2) 
(declare-const var3595!2 String)
(assert (str.prefixof var3595!1 var3595!2))
(assert true)
(define-const var713 String (append/672562846 var1242 var146)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1242!1 String)
(assert (= var1242!1 (str.++ var1242 var146)))
(assert true)
(define-const var3873 String (toString/-2075883882 var713)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2108_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2837=([java.lang.CharSequence], java.lang.Object), length/-134980193=([java.lang.String], int), var2108_checkArgument/212320487=([boolean, java.lang.String, int, int], void), String_length/-667254855=([java.lang.CharSequence], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3259=r6, var1200=i0, var146=r0, var1710=null_type, var2108=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2837=java.lang.Object, var2214=$i1, var1444=i2, var3752=$z0, var2084=$i3, var1546="maxLength (%s) must be >= length of the truncation indicator (%s)", var2073=$i4, var3595=$r1, var1242=$r2, var713=$r3, var3873=$r4}
; {r6=var3259, i0=var1200, r0=var146, null_type=var1710, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2108, java.lang.Object=var2837, $i1=var2214, i2=var1444, $z0=var3752, $i3=var2084, "maxLength (%s) must be >= length of the truncation indicator (%s)"=var1546, $i4=var2073, $r1=var3595, $r2=var1242, $r3=var713, $r4=var3873}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	r0 := @parameter2: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r6);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = i0 - $i1;	if i2 < 0 goto $z0 = 0;	$z0 = 0;	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,int,int)>($z0, "maxLength (%s) must be >= length of the truncation indicator (%s)", i0, $i3);	$i4 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if $i4 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r6, 0, i2);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4