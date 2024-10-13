(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var672 0)
(declare-sort var3312 0)
(declare-sort var802 0)
(declare-sort var483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun originalLineNumber/916988212 (var672) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun headerMap/916988212 (var672) var3312)
(declare-fun fields/916988212 (var672) var802)
(declare-fun toString/-522406933 (var483) String)
(declare-fun cast-from-var802-to-var483 (var802) var483)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var672 var672)
(declare-const null-var3312 var3312)
(declare-const var3819 var672) ; Statement: r1 := @this: cn.hutool.core.text.csv.CsvRow 
(assert (not (= var3819 null-var672)))
(define-const var3255 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3255 "CsvRow{")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("CsvRow{") 
(declare-const var3255!1 String)
(assert (= var3255!1 "CsvRow{"))
(assert true)
;(assert (append/672562846 var3255!1 "originalLineNumber=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("originalLineNumber=") 
(declare-const var3255!2 String)
(assert (= var3255!2 (str.++ var3255!1 "originalLineNumber=")))
(define-const var3269 Int (originalLineNumber/916988212 var3819)) ; Statement: $l0 = r1.<cn.hutool.core.text.csv.CsvRow: long originalLineNumber> 
(assert true)
;(assert (append/-901862667 var3255!2 var3269)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3255!3 String)
(assert (str.prefixof var3255!2 var3255!3))
(assert true)
;(assert (append/672562846 var3255!3 ", ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3255!4 String)
(assert (= var3255!4 (str.++ var3255!3 ", ")))
(assert true)
;(assert (append/672562846 var3255!4 "fields=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fields=") 
(declare-const var3255!5 String)
(assert (= var3255!5 (str.++ var3255!4 "fields=")))
(define-const var2515 var3312 (headerMap/916988212 var3819)) ; Statement: $r2 = r1.<cn.hutool.core.text.csv.CsvRow: java.util.Map headerMap> 
 ; Statement: if $r2 == null goto $r3 = r1.<cn.hutool.core.text.csv.CsvRow: java.util.List fields> 
(assert (= var2515 null-var3312)) ; Cond: $r2 == null 
(define-const var3464 var802 (fields/916988212 var3819)) ; Statement: $r3 = r1.<cn.hutool.core.text.csv.CsvRow: java.util.List fields> 
(assert true)
(define-const var440 String (toString/-522406933 (cast-from-var802-to-var483 var3464))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3255!5 var440)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3255!6 String)
(assert (= var3255!6 (str.++ var3255!5 var440)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3255!6 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3255!7 String)
(assert (str.prefixof var3255!6 var3255!7))
(assert true)
(define-const var2896 String (toString/-2075883882 var3255!7)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), originalLineNumber/916988212=([cn.hutool.core.text.csv.CsvRow], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), headerMap/916988212=([cn.hutool.core.text.csv.CsvRow], java.util.Map), fields/916988212=([cn.hutool.core.text.csv.CsvRow], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var802-to-var483=([java.util.List], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var672=cn.hutool.core.text.csv.CsvRow, var3819=r1, var3255=$r0, var3269=$l0, var3312=java.util.Map, var2515=$r2, var802=java.util.List, var3464=$r3, var483=java.lang.Object, var440=$r4, var2896=$r5}
; {cn.hutool.core.text.csv.CsvRow=var672, r1=var3819, $r0=var3255, $l0=var3269, java.util.Map=var3312, $r2=var2515, java.util.List=var802, $r3=var3464, java.lang.Object=var483, $r4=var440, $r5=var2896}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.text.csv.CsvRow;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("CsvRow{");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("originalLineNumber=");	$l0 = r1.<cn.hutool.core.text.csv.CsvRow: long originalLineNumber>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fields=");	$r2 = r1.<cn.hutool.core.text.csv.CsvRow: java.util.Map headerMap>;	if $r2 == null goto $r3 = r1.<cn.hutool.core.text.csv.CsvRow: java.util.List fields>;	$r3 = r1.<cn.hutool.core.text.csv.CsvRow: java.util.List fields>;	$r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3