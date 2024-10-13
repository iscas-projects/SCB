(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3739 0)
(declare-sort var1117 0)
(declare-sort var279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var279-init () var279)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var279 String) void)
(declare-const null-var3739 var3739)
(declare-const null-Int Int)
(declare-const null-var1117 var1117)
(declare-const var1053 var3739) ; Statement: r7 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString 
(assert (not (= var1053 null-var3739)))
(declare-const var3532 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3532 null-Int)))
(declare-const var3085 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3085 null-Int)))
(declare-const var2660 var1117) ; Statement: r9 := @parameter2: org.apache.poi.ss.usermodel.Font 
(assert (not (= var2660 null-var1117)))
 ; Statement: if i0 <= i1 goto (branch) 
(assert (not (<= var3532 var3085))) ; Negate: Cond: i0 <= i1  
(define-const var197 var279 var279-init) ; Statement: $r34 = new java.lang.IllegalArgumentException 
(define-const var1357 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1357)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1357!1 String)
(assert (= var1357!1 ""))
(assert true)
(define-const var3645 String (append/672562846 var1357!1 "Start index must be less than end index, but had ")) ; Statement: $r18 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Start index must be less than end index, but had ") 
(declare-const var1357!2 String)
(assert (= var1357!2 (str.++ var1357!1 "Start index must be less than end index, but had ")))
(assert true)
(define-const var348 String (append/-1001720160 var3645 var3532)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3645!1 String)
(assert (str.prefixof var3645 var3645!1))
(assert true)
(define-const var1814 String (append/672562846 var348 " and ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var348!1 String)
(assert (= var348!1 (str.++ var348 " and ")))
(assert true)
(define-const var2812 String (append/-1001720160 var1814 var3085)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1814!1 String)
(assert (str.prefixof var1814 var1814!1))
(assert true)
(define-const var244 String (toString/-2075883882 var2812)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var197 var244)) ; Statement: specialinvoke $r34.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r22) 

(declare-const var197!1 var279)
(declare-const var244!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var279-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3739=org.apache.poi.xssf.usermodel.XSSFRichTextString, var1053=r7, var3532=i0, var3085=i1, var1117=org.apache.poi.ss.usermodel.Font, var2660=r9, var279=java.lang.IllegalArgumentException, var197=$r34, var1357=$r33, var3645=$r18, var348=$r19, var1814=$r20, var2812=$r21, var244=$r22}
; {org.apache.poi.xssf.usermodel.XSSFRichTextString=var3739, r7=var1053, i0=var3532, i1=var3085, org.apache.poi.ss.usermodel.Font=var1117, r9=var2660, java.lang.IllegalArgumentException=var279, $r34=var197, $r33=var1357, $r18=var3645, $r19=var348, $r20=var1814, $r21=var2812, $r22=var244}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString;	i0 := @parameter0: int;	i1 := @parameter1: int;	r9 := @parameter2: org.apache.poi.ss.usermodel.Font;	if i0 <= i1 goto (branch);	$r34 = new java.lang.IllegalArgumentException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Start index must be less than end index, but had ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r22);	throw $r34
;block_num 2