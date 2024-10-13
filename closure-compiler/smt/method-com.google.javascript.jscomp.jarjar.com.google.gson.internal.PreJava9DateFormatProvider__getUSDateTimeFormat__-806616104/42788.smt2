(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3695 0)
(declare-sort var3850 0)
(declare-sort var49 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3695_getDatePartOfDateTimePattern/1065946661 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3695_getTimePartOfDateTimePattern/1917562790 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3850-init () var3850)
(declare-fun <init>/-1907538146 (var3850 String var49) void)
(declare-const null-Int Int)
(declare-const var49-US var49)
(declare-const var828 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var828 null-Int)))
(declare-const var1711 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1711 null-Int)))
(define-const var1543 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1543)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1543!1 String)
(assert (= var1543!1 ""))
(define-const var2496 String (var3695_getDatePartOfDateTimePattern/1065946661 var828)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.PreJava9DateFormatProvider: java.lang.String getDatePartOfDateTimePattern(int)>(i0) 
(assert true)
(define-const var1933 String (append/672562846 var1543!1 var2496)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1543!2 String)
(assert (= var1543!2 (str.++ var1543!1 var2496)))
(assert true)
(define-const var2819 String (append/672562846 var1933 " ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1933!1 String)
(assert (= var1933!1 (str.++ var1933 " ")))
(define-const var3653 String (var3695_getTimePartOfDateTimePattern/1917562790 var1711)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.PreJava9DateFormatProvider: java.lang.String getTimePartOfDateTimePattern(int)>(i1) 
(assert true)
(define-const var1838 String (append/672562846 var2819 var3653)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2819!1 String)
(assert (= var2819!1 (str.++ var2819 var3653)))
(assert true)
(define-const var2930 String (toString/-2075883882 var1838)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3696 var3850 var3850-init) ; Statement: $r7 = new java.text.SimpleDateFormat 
(define-const var2467 var49 var49-US) ; Statement: $r8 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-1907538146 var3696 var2930 var2467)) ; Statement: specialinvoke $r7.<java.text.SimpleDateFormat: void <init>(java.lang.String,java.util.Locale)>(r6, $r8) 

(declare-const var3696!1 var3850)
(declare-const var2930!1 String)
(declare-const var2467!1 var49)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3695_getDatePartOfDateTimePattern/1065946661=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3695_getTimePartOfDateTimePattern/1917562790=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3850-init=([], java.text.SimpleDateFormat), <init>/-1907538146=([java.text.SimpleDateFormat, java.lang.String, java.util.Locale], void)}
; {var828=i0, var1711=i1, var1543=$r0, var3695=com.google.javascript.jscomp.jarjar.com.google.gson.internal.PreJava9DateFormatProvider, var2496=$r1, var1933=$r2, var2819=$r4, var3653=$r3, var1838=$r5, var2930=r6, var3850=java.text.SimpleDateFormat, var3696=$r7, var49=java.util.Locale, var2467=$r8}
; {i0=var828, i1=var1711, $r0=var1543, com.google.javascript.jscomp.jarjar.com.google.gson.internal.PreJava9DateFormatProvider=var3695, $r1=var2496, $r2=var1933, $r4=var2819, $r3=var3653, $r5=var1838, r6=var2930, java.text.SimpleDateFormat=var3850, $r7=var3696, java.util.Locale=var49, $r8=var2467}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.PreJava9DateFormatProvider: java.lang.String getDatePartOfDateTimePattern(int)>(i0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.PreJava9DateFormatProvider: java.lang.String getTimePartOfDateTimePattern(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.text.SimpleDateFormat;	$r8 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r7.<java.text.SimpleDateFormat: void <init>(java.lang.String,java.util.Locale)>(r6, $r8);	return $r7
;block_num 1