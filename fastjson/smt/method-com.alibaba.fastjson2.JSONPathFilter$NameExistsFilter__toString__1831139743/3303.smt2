(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/1011174719 (var2734) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2734 var2734)
(declare-const var609 var2734) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONPathFilter$NameExistsFilter 
(assert (not (= var609 null-var2734)))
(define-const var1216 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1216)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1216!1 String)
(assert (= var1216!1 ""))
(assert true)
(define-const var3572 String (append/-1166366385 var1216!1 63)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63) 
(declare-const var1216!2 String)
(assert (str.prefixof var1216!1 var1216!2))
(define-const var2910 String (name/1011174719 var609)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameExistsFilter: java.lang.String name> 
(assert true)
(define-const var2895 String (append/672562846 var3572 var2910)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3572!1 String)
(assert (= var3572!1 (str.++ var3572 var2910)))
(assert true)
(define-const var3217 String (toString/-2075883882 var2895)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/1011174719=([com.alibaba.fastjson2.JSONPathFilter$NameExistsFilter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2734=com.alibaba.fastjson2.JSONPathFilter$NameExistsFilter, var609=r1, var1216=$r0, var3572=$r3, var2910=$r2, var2895=$r4, var3217=$r5}
; {com.alibaba.fastjson2.JSONPathFilter$NameExistsFilter=var2734, r1=var609, $r0=var1216, $r3=var3572, $r2=var2910, $r4=var2895, $r5=var3217}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONPathFilter$NameExistsFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63);	$r2 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameExistsFilter: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1