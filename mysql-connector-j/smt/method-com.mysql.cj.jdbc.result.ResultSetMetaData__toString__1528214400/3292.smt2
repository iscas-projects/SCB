(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1172 0)
(declare-sort var3537 0)
(declare-sort var815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var3537) String)
(declare-fun cast-from-var1172-to-var3537 (var1172) var3537)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fields/58887912 (var1172) (Array Int var815))
(declare-fun getLength-Arr-var815-1 ((Array Int var815)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1172 var1172)
(declare-const var2050 var1172) ; Statement: r1 := @this: com.mysql.cj.jdbc.result.ResultSetMetaData 
(assert (not (= var2050 null-var1172)))
(define-const var2781 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2781)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2781!1 String)
(assert (= var2781!1 ""))
(assert true)
(define-const var1475 String (toString/-522406933 (cast-from-var1172-to-var3537 var2050))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2781!1 var1475)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2781!2 String)
(assert (= var2781!2 (str.++ var2781!1 var1475)))
(assert true)
;(assert (append/672562846 var2781!2 " - Field level information: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - Field level information: ") 
(declare-const var2781!3 String)
(assert (= var2781!3 (str.++ var2781!2 " - Field level information: ")))
(define-const var2853 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1918 (Array Int var815) (fields/58887912 var2050)) ; Statement: $r3 = r1.<com.mysql.cj.jdbc.result.ResultSetMetaData: com.mysql.cj.result.Field[] fields> 
(define-const var3612 Int (getLength-Arr-var815-1 var1918)) ; Statement: $i0 = lengthof $r3 
 ; Statement: if i1 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2853 var3612)) ; Cond: i1 >= $i0 
(assert true)
(define-const var3508 String (toString/-2075883882 var2781!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1172-to-var3537=([com.mysql.cj.jdbc.result.ResultSetMetaData], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fields/58887912=([com.mysql.cj.jdbc.result.ResultSetMetaData], com.mysql.cj.result.Field[]), getLength-Arr-var815-1=([com.mysql.cj.result.Field[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1172=com.mysql.cj.jdbc.result.ResultSetMetaData, var2050=r1, var2781=$r0, var3537=java.lang.Object, var1475=$r2, var2853=i1, var815=com.mysql.cj.result.Field, var1918=$r3, var3612=$i0, var3508=$r4}
; {com.mysql.cj.jdbc.result.ResultSetMetaData=var1172, r1=var2050, $r0=var2781, java.lang.Object=var3537, $r2=var1475, i1=var2853, com.mysql.cj.result.Field=var815, $r3=var1918, $i0=var3612, $r4=var3508}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.result.ResultSetMetaData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - Field level information: ");	i1 = 0;	$r3 = r1.<com.mysql.cj.jdbc.result.ResultSetMetaData: com.mysql.cj.result.Field[] fields>;	$i0 = lengthof $r3;	if i1 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3