(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2514 0)
(declare-sort var36 0)
(declare-sort var3843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun header/-1638567024 (var2514) var36)
(declare-fun append/-1031950772 (String var3843) String)
(declare-fun cast-from-var36-to-var3843 (var36) var3843)
(declare-fun rows/-1638567024 (var2514) var36)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2514 var2514)
(declare-const var1405 var2514) ; Statement: r1 := @this: cn.hutool.core.text.csv.CsvData 
(assert (not (= var1405 null-var2514)))
(define-const var3054 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3054)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3054!1 String)
(assert (= var3054!1 ""))
(assert true)
(define-const var628 String (append/672562846 var3054!1 "CsvData{header=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CsvData{header=") 
(declare-const var3054!2 String)
(assert (= var3054!2 (str.++ var3054!1 "CsvData{header=")))
(define-const var840 var36 (header/-1638567024 var1405)) ; Statement: $r2 = r1.<cn.hutool.core.text.csv.CsvData: java.util.List header> 
(assert true)
(define-const var1228 String (append/-1031950772 var628 (cast-from-var36-to-var3843 var840))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var628!1 String)
(assert (str.prefixof var628 var628!1))
(assert true)
(define-const var84 String (append/672562846 var1228 ", rows=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rows=") 
(declare-const var1228!1 String)
(assert (= var1228!1 (str.++ var1228 ", rows=")))
(define-const var2613 var36 (rows/-1638567024 var1405)) ; Statement: $r5 = r1.<cn.hutool.core.text.csv.CsvData: java.util.List rows> 
(assert true)
(define-const var934 String (append/-1031950772 var84 (cast-from-var36-to-var3843 var2613))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var84!1 String)
(assert (str.prefixof var84 var84!1))
(assert true)
(define-const var870 String (append/-1166366385 var934 125)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var934!1 String)
(assert (str.prefixof var934 var934!1))
(assert true)
(define-const var1176 String (toString/-2075883882 var870)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), header/-1638567024=([cn.hutool.core.text.csv.CsvData], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var36-to-var3843=([java.util.List], java.lang.Object), rows/-1638567024=([cn.hutool.core.text.csv.CsvData], java.util.List), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2514=cn.hutool.core.text.csv.CsvData, var1405=r1, var3054=$r0, var628=$r3, var36=java.util.List, var840=$r2, var3843=java.lang.Object, var1228=$r4, var84=$r6, var2613=$r5, var934=$r7, var870=$r8, var1176=$r9}
; {cn.hutool.core.text.csv.CsvData=var2514, r1=var1405, $r0=var3054, $r3=var628, java.util.List=var36, $r2=var840, java.lang.Object=var3843, $r4=var1228, $r6=var84, $r5=var2613, $r7=var934, $r8=var870, $r9=var1176}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.text.csv.CsvData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CsvData{header=");	$r2 = r1.<cn.hutool.core.text.csv.CsvData: java.util.List header>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rows=");	$r5 = r1.<cn.hutool.core.text.csv.CsvData: java.util.List rows>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1