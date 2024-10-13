(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1055 0)
(declare-sort var3139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3139_hex/-1308539637 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1055 var1055)
(declare-const null-Int Int)
(declare-const var2557 var1055) ; Statement: r5 := @this: org.apache.commons.lang3.text.translate.UnicodeEscaper 
(assert (not (= var2557 null-var1055)))
(declare-const var3559 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3559 null-Int)))
(define-const var3885 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3885)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3885!1 String)
(assert (= var3885!1 ""))
(assert true)
(define-const var358 String (append/672562846 var3885!1 "\u005cu")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u") 
(declare-const var3885!2 String)
(assert (= var3885!2 (str.++ var3885!1 "\u005cu")))
(define-const var2202 String (var3139_hex/-1308539637 var3559)) ; Statement: $r1 = staticinvoke <org.apache.commons.lang3.text.translate.UnicodeEscaper: java.lang.String hex(int)>(i0) 
(assert true)
(define-const var752 String (append/672562846 var358 var2202)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var358!1 String)
(assert (= var358!1 (str.++ var358 var2202)))
(assert true)
(define-const var1110 String (toString/-2075883882 var752)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3139_hex/-1308539637=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1055=org.apache.commons.lang3.text.translate.UnicodeEscaper, var2557=r5, var3559=i0, var3885=$r0, var358=$r2, var3139=org.apache.commons.lang3.text.translate.CharSequenceTranslator, var2202=$r1, var752=$r3, var1110=$r4}
; {org.apache.commons.lang3.text.translate.UnicodeEscaper=var1055, r5=var2557, i0=var3559, $r0=var3885, $r2=var358, org.apache.commons.lang3.text.translate.CharSequenceTranslator=var3139, $r1=var2202, $r3=var752, $r4=var1110}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.commons.lang3.text.translate.UnicodeEscaper;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u");	$r1 = staticinvoke <org.apache.commons.lang3.text.translate.UnicodeEscaper: java.lang.String hex(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1