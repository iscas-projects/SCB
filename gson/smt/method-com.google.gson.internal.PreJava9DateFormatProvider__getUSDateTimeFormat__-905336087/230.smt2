(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2309 0)
(declare-sort var3101 0)
(declare-sort var549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2309_getDatePartOfDateTimePattern/-1994372812 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2309_getTimePartOfDateTimePattern/-1142756683 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3101-init () var3101)
(declare-fun <init>/-1907538146 (var3101 String var549) void)
(declare-const null-Int Int)
(declare-const var549-US var549)
(declare-const var3402 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3402 null-Int)))
(declare-const var1919 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1919 null-Int)))
(define-const var1508 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1508)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1508!1 String)
(assert (= var1508!1 ""))
(define-const var1911 String (var2309_getDatePartOfDateTimePattern/-1994372812 var3402)) ; Statement: $r1 = staticinvoke <com.google.gson.internal.PreJava9DateFormatProvider: java.lang.String getDatePartOfDateTimePattern(int)>(i0) 
(assert true)
(define-const var1874 String (append/672562846 var1508!1 var1911)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1508!2 String)
(assert (= var1508!2 (str.++ var1508!1 var1911)))
(assert true)
(define-const var52 String (append/672562846 var1874 " ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1874!1 String)
(assert (= var1874!1 (str.++ var1874 " ")))
(define-const var1987 String (var2309_getTimePartOfDateTimePattern/-1142756683 var1919)) ; Statement: $r3 = staticinvoke <com.google.gson.internal.PreJava9DateFormatProvider: java.lang.String getTimePartOfDateTimePattern(int)>(i1) 
(assert true)
(define-const var3996 String (append/672562846 var52 var1987)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var52!1 String)
(assert (= var52!1 (str.++ var52 var1987)))
(assert true)
(define-const var662 String (toString/-2075883882 var3996)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3381 var3101 var3101-init) ; Statement: $r7 = new java.text.SimpleDateFormat 
(define-const var863 var549 var549-US) ; Statement: $r8 = <java.util.Locale: java.util.Locale US> 
(assert true)
;(assert (<init>/-1907538146 var3381 var662 var863)) ; Statement: specialinvoke $r7.<java.text.SimpleDateFormat: void <init>(java.lang.String,java.util.Locale)>(r6, $r8) 

(declare-const var3381!1 var3101)
(declare-const var662!1 String)
(declare-const var863!1 var549)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2309_getDatePartOfDateTimePattern/-1994372812=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2309_getTimePartOfDateTimePattern/-1142756683=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3101-init=([], java.text.SimpleDateFormat), <init>/-1907538146=([java.text.SimpleDateFormat, java.lang.String, java.util.Locale], void)}
; {var3402=i0, var1919=i1, var1508=$r0, var2309=com.google.gson.internal.PreJava9DateFormatProvider, var1911=$r1, var1874=$r2, var52=$r4, var1987=$r3, var3996=$r5, var662=r6, var3101=java.text.SimpleDateFormat, var3381=$r7, var549=java.util.Locale, var863=$r8}
; {i0=var3402, i1=var1919, $r0=var1508, com.google.gson.internal.PreJava9DateFormatProvider=var2309, $r1=var1911, $r2=var1874, $r4=var52, $r3=var1987, $r5=var3996, r6=var662, java.text.SimpleDateFormat=var3101, $r7=var3381, java.util.Locale=var549, $r8=var863}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <com.google.gson.internal.PreJava9DateFormatProvider: java.lang.String getDatePartOfDateTimePattern(int)>(i0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r3 = staticinvoke <com.google.gson.internal.PreJava9DateFormatProvider: java.lang.String getTimePartOfDateTimePattern(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.text.SimpleDateFormat;	$r8 = <java.util.Locale: java.util.Locale US>;	specialinvoke $r7.<java.text.SimpleDateFormat: void <init>(java.lang.String,java.util.Locale)>(r6, $r8);	return $r7
;block_num 1