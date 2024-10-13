(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPath/1533310839 (var1906) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1906 var1906)
(declare-const var2591 var1906) ; Statement: r1 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var2591 null-var1906)))
(define-const var851 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var851)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var851!1 String)
(assert (= var851!1 ""))
(assert true)
(define-const var44 String (append/672562846 var851!1 " at path ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at path ") 
(declare-const var851!2 String)
(assert (= var851!2 (str.++ var851!1 " at path ")))
(assert true)
(define-const var1994 String (getPath/1533310839 var2591)) ; Statement: $r2 = virtualinvoke r1.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String getPath()>() 
(assert true)
(define-const var2057 String (append/672562846 var44 var1994)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var44!1 String)
(assert (= var44!1 (str.++ var44 var1994)))
(assert true)
(define-const var2905 String (toString/-2075883882 var2057)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPath/1533310839=([com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1906=com.google.gson.internal.bind.JsonTreeReader, var2591=r1, var851=$r0, var44=$r3, var1994=$r2, var2057=$r4, var2905=$r5}
; {com.google.gson.internal.bind.JsonTreeReader=var1906, r1=var2591, $r0=var851, $r3=var44, $r2=var1994, $r4=var2057, $r5=var2905}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.internal.bind.JsonTreeReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at path ");	$r2 = virtualinvoke r1.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String getPath()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1