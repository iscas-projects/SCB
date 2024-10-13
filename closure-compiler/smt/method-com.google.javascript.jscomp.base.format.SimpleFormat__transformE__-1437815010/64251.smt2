(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var889 0)
(declare-sort var1875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun formatToken/-1920232736 (var2019) var889)
(declare-fun getPrecision/-1119948004 (var889) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arg/-1920232736 (var2019) var1875)
(declare-fun toString/-522406933 (var1875) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun flagSharp/-803315618 (var889) Bool)
(declare-const null-var2019 var2019)
(declare-const null-String String)
(declare-const var1137 var2019) ; Statement: r1 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var1137 null-var2019)))
(declare-const var672 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var672 null-String)))
(define-const var1764 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1764)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1764!1 String)
(assert (= var1764!1 ""))
(assert true)
;(assert (append/-1166366385 var1764!1 48)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(48) 
(declare-const var1764!2 String)
(assert (str.prefixof var1764!1 var1764!2))
(define-const var3631 var889 (formatToken/-1920232736 var1137)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(assert true)
(define-const var555 Int (getPrecision/-1119948004 var3631)) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getPrecision()>() 
 ; Statement: if $i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("E+00") 
(assert (<= var555 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (append/672562846 var1764!2 "E+00")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("E+00") 
(declare-const var1764!3 String)
(assert (= var1764!3 (str.++ var1764!2 "E+00")))
(define-const var2974 var1875 (arg/-1920232736 var1137)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(assert true)
(define-const var2297 String (toString/-522406933 var2974)) ; Statement: $r9 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1213 String (replace/1524665721 var2297 69 101)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(char,char)>(69, 101) 
(assert true)
;(assert (append/672562846 var672 var1213)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var672!1 String)
(assert (= var672!1 (str.++ var672 var1213)))
(define-const var2641 var889 (formatToken/-1920232736 var1137)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(define-const var1009 Bool (flagSharp/-803315618 var2641)) ; Statement: $z0 = $r6.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: boolean flagSharp> 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1009 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), formatToken/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken), getPrecision/-1119948004=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arg/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), flagSharp/-803315618=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], boolean)}
; {var2019=com.google.javascript.jscomp.base.format.SimpleFormat, var1137=r1, var672=r4, var1764=$r0, var889=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var3631=$r2, var555=$i0, var1875=java.lang.Object, var2974=$r3, var2297=$r9, var1213=$r5, var2641=$r6, var1009=$z0}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var2019, r1=var1137, r4=var672, $r0=var1764, com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var889, $r2=var3631, $i0=var555, java.lang.Object=var1875, $r3=var2974, $r9=var2297, $r5=var1213, $r6=var2641, $z0=var1009}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	r4 := @parameter0: java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(48);	$r2 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	$i0 = virtualinvoke $r2.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getPrecision()>();	if $i0 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("E+00");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("E+00");	$r3 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	$r9 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(char,char)>(69, 101);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = r1.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	$z0 = $r6.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: boolean flagSharp>;	if $z0 == 0 goto return;	return
;block_num 3